package com.six.semi.Tboard.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.six.semi.Tboard.model.service.TboardService;
import com.six.semi.Tboard.model.vo.Tboard;
import com.six.semi.common.PageInfo;

/**
 * Servlet implementation class TBoardListServlet
 */
@WebServlet("/tselectList.bo")
public class TBoardListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TBoardListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<Tboard> list = null;
		TboardService tbs = new TboardService();
		PageInfo pi = new PageInfo();

		if(request.getParameter("currentPage") != null) {
			pi.setCurrentPage( Integer.parseInt(request.getParameter("currentPage")));
		}
		
		// 전체 게시글 수
	
		pi.calcPage(tbs.getListCount());
		System.out.println("전체 게시글 수 : " + pi.getListCount());
		
		list = tbs.selectList(pi);
		
		String page = "";
		
		if(list != null) {
			
			page = "views/Tboard/TboardTicketList.jsp";
			request.setAttribute("list", list);
			request.setAttribute("pi", pi);
			System.out.println(pi);
		} else {
			
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "게시글 목록 조회 에러!");			
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
