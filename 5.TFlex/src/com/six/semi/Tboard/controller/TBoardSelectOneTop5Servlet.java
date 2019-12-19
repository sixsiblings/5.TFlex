package com.six.semi.Tboard.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TBoardSelectOneTop5Servlet
 */
@WebServlet("/selectonetboardtop5.do")
public class TBoardSelectOneTop5Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TBoardSelectOneTop5Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int tNo = Integer.parseInt(request.getParameter("tNo"));
		String page = "";
		
		if(tNo > -1) {
			page = "/tselectOne.bo";
			request.setAttribute("tboard", tNo);
		} else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "게시글 상세보기 에러!!");
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
