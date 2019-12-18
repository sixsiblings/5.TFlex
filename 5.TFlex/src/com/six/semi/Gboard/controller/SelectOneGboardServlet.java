package com.six.semi.Gboard.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.six.semi.Gboard.model.service.GboardService;
import com.six.semi.Gboard.model.vo.Gboard;



/**
 * Servlet implementation class SelectOneGboardServlet
 */
@WebServlet("/gselectOne.bo")
public class SelectOneGboardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectOneGboardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int gNo = Integer.parseInt(request.getParameter("gNo"));
		//System.out.println("bno 확인 : "+bno);
		
		Gboard gb = new GboardService().selectOne(gNo);
		
		HttpSession session = request.getSession();
		
		session.setAttribute("Gboard", gb);
		
		
		String page = "";
		
		if(gb != null) {
			page = "views/Gboard/GboardDetail.jsp";
			request.setAttribute("Gboard", gb);
			
			
		}
		
		request.getRequestDispatcher(page).forward(request, response);
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
