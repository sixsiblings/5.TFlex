package com.six.semi.Tboard.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.six.semi.Tboard.model.service.TboardService;
import com.six.semi.Tboard.model.vo.Tboard;
/**
 * Servlet implementation class SelectOneTboardServlet
 */
@WebServlet("/tselectOne.bo")
public class SelectOneTboardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectOneTboardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int tNo = Integer.parseInt(request.getParameter("tNo"));
		//System.out.println("bno 확인 : "+bno);
		
		Tboard tb = new TboardService().selectOne(tNo);
		
		HttpSession session = request.getSession();
		
		session.setAttribute("Tboard", tb);
		
		String page = "";
		
		if(tb != null) {
			page = "views/Tboard/TboardDetail.jsp";
			request.setAttribute("Tboard", tb);
			
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
