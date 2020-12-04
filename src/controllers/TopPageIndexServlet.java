package controllers;

import java.io.IOException;
import java.util.List;

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
 * Servlet implementation class TopPageIndexServlet
 */
@WebServlet("/index.html")
public class TopPageIndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public TopPageIndexServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EntityManager em = DBUtil.createEntityManager();


		int page = 1;
        try{
            page = Integer.parseInt(request.getParameter("page"));
        } catch(NumberFormatException e) { }



		List<Typing> scores = em.createNamedQuery("getAllTyping_score", Typing.class)
		                        .setFirstResult(15 * (page - 1))
		                        .setMaxResults(15)
		                        .getResultList();

		long score_count = (long)em.createNamedQuery("getScoreCount", Long.class)
		                           .getSingleResult();


		em.close();

		request.setAttribute("scores", scores);
		request.setAttribute("score_count", score_count);
		request.setAttribute("page", page);



	    RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/scores/index.jsp");
		rd.forward(request, response);

	}

}
