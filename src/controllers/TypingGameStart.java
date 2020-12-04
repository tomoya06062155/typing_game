package controllers;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Typing;
import models.Typing_word;
import utils.DBUtil;

/**
 * Servlet implementation class TypingGameStart
 */
@WebServlet("/scores/game_start")
public class TypingGameStart extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public TypingGameStart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    EntityManager em = DBUtil.createEntityManager();
	    List<Typing_word> word = em.createNamedQuery("getAlltyping_word", Typing_word.class)
	                                 .getResultList();
	    em.close();


	    StringBuilder sb = new StringBuilder();
	    for(int i = 0; i<word.size(); i++){
	        if(i > 0){
	            sb.append(",");

	        }
	        sb.append(word.get(i).getWord());
	    }
	    String result = sb.toString();


	    request.setAttribute("_token", request.getSession().getId());

	    Date date = new Date();
	    request.setAttribute("Date", date);

	    request.setAttribute("word", result);

	    request.setAttribute("typing", new Typing());

        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/scores/game_start.jsp");
        rd.forward(request, response);
	}

}
