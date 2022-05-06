package com.lol.duo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lol.signup.AccountDAO;

@WebServlet("/ComplimentPageController")
public class ComplimentPageController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AccountDAO.loginCheck(request);
		int p = Integer.parseInt(request.getParameter("p"));
		DuoDAO.getDdao().getAllDuo(request);
		ComplimentDAO.getCdao().paging(p, request);
		request.setAttribute("contentPage", "compliment_home.jsp");
		request.getRequestDispatcher("duo/compliment.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
