package com.six.semi.notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.six.semi.notice.model.service.NoticeService;
import com.six.semi.notice.model.vo.Notice;

/**
 * Servlet implementation class SelectOneNoticeTop5Servlet
 */
@WebServlet("/selectonenoticetop5.do")
public class SelectOneNoticeTop5Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectOneNoticeTop5Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int ntNo = Integer.parseInt(request.getParameter("ntNo"));
		System.out.println("확인확인" + ntNo);
		Notice n = new NoticeService().selectOneTop5(ntNo);
		String page = "";
		System.out.println(n);
		if(n != null) {
			page = "{$pageContext.request.contextPath}/views/cs/noticeDetail.jsp";
			request.setAttribute("notice", n);
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
