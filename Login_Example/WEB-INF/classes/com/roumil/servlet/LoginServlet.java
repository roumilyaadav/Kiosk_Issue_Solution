package com.roumil.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
		PrintWriter out=response.getWriter();  
		request.getRequestDispatcher("link.html").include(request, response);  

		String name=request.getParameter("name");  
		String password=request.getParameter("password");  

		if(password.equals("admin123")){  
			out.print("Welcome, "+name);  
			
			// Using HTTP Session
			HttpSession session=request.getSession();  
			session.setAttribute("name",name);  
			
			// Using Cookies
			//Cookie ck=new Cookie("name",name); 
			//ck.setMaxAge(-1);
            //response.addCookie(ck);  
			
			response.sendRedirect("UserProfile.jsp");
		}  
		else{  
			out.print("Sorry, username or password error!");  
			request.getRequestDispatcher("login.html").include(request, response);  
		}  
		out.close();  

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
