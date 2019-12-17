package com.six.semi.QNA.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.six.semi.QNA.model.service.QNAService;
import com.six.semi.common.PageInfo;
import com.six.semi.QNA.model.vo.QNA;

/**
 * Servlet implementation class SelectListQNAServlet
 */
@WebServlet("/selectList.qna")
public class SelectListQNAServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectListQNAServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<QNA> list = null;
		QNAService qs = new QNAService();
		PageInfo pi = new PageInfo();

		if(request.getParameter("currentPage") != null) {
			pi.setCurrentPage( Integer.parseInt(request.getParameter("currentPage")));
		}
		
		// 전체 게시글 수
	
		pi.calcPage(qs.getListCount());
		System.out.println("전체 게시글 수 : " + pi.getListCount());
		
		list = qs.selectList(pi);
		
		String page = "";
		
		if(list != null) {
			
			page = "views/cs/QNAList.jsp";
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
