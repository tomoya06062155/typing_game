package controllers;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Typing;
import utils.DBUtil;

/**
 * Servlet implementation class TypingGameResult
 */
@WebServlet("/scores/result")
public class TypingGameResult extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public TypingGameResult() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    EntityManager em = DBUtil.createEntityManager();
	    Typing t =em.find(Typing.class, (Integer)(request.getSession().getAttribute("typing_id")));
	    em.close();

	    request.setAttribute("typing", t);


	    request.getSession().removeAttribute("typing");

	    RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/scores/result.jsp");
        rd.forward(request, response);
        }

}
