package com.six.semi.notice.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.six.semi.notice.model.service.NoticeService;
import com.six.semi.notice.model.vo.Notice;
import com.six.semi.notice.model.vo.PageInfo;

/**
 * Servlet implementation class NoticeListTop5Servlet
 */
@WebServlet("/noticelisttop5.do")
public class NoticeListTop5Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeListTop5Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Notice> list = null;
		NoticeService ns = new NoticeService();
		PageInfo pi = new PageInfo();
		
		// 전체 게시글 수
		
		pi.calcPage(ns.getListCount());
		System.out.println("전체 게시글 수 : " + pi.getListCount());
		list = ns.selectList(pi);
		
		String page = "";
		
		if(list != null) {
			for(Notice n : list) {
				System.out.println(n);
			}
			page = "index.jsp";
			request.setAttribute("list", list);
		} else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "게시글 목록 조회 에러!");	
		}
		response.setContentType("application/json; charset=UTF-8");
		new Gson().toJson(list, response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
