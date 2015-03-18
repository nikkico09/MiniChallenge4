package edu.webprg.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Preferences
 */
@WebServlet("/Preferences")
public class Preferences extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Preferences() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        
        String background = request.getParameter("background");
        String font = request.getParameter("font");
        String post = request.getParameter("post");
        
        Cookie[] cookies = request.getCookies();
        Cookie backgroundCookie = new Cookie("background",background);
        Cookie fontCookie = new Cookie("font", font);
        Cookie postCookie = new Cookie("post",post);
        
        backgroundCookie.setMaxAge(60*60*24);
        response.addCookie(backgroundCookie);

        fontCookie.setMaxAge(60*60*24);
        response.addCookie(fontCookie);
        
        postCookie.setMaxAge(60*60*24);
        response.addCookie(postCookie);
       
        response.sendRedirect("index.jsp");
	}

}
