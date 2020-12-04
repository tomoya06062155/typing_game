package controllers;

import java.io.IOException;
import java.sql.Date;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Typing;
import utils.DBUtil;

/**
 * Servlet implementation class TypingGameCreate
 */
@WebServlet("/controllers/create")
public class TypingGameCreate extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public TypingGameCreate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String _token = request.getParameter("_token");
        if(_token != null && _token.equals(request.getSession().getId())) {

            EntityManager em = DBUtil.createEntityManager();


            Typing t = new Typing();

            Date time_date = new Date(System.currentTimeMillis());
            t.setTime_date(time_date);


            String time1 = request.getParameter("data1");
            Double time = Double.parseDouble(time1);
            t.setTime(time);


            em.getTransaction().begin();
            em.persist(t);
            em.getTransaction().commit();
            em.close();

            request.getSession().setAttribute("typing_id", t.getId());

            response.sendRedirect(request.getContextPath() + "/scores/result");


        }
    }

    }


