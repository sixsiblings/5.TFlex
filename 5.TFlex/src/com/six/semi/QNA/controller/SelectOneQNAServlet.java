package com.six.semi.QNA.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.six.semi.QNA.model.service.QNAService;
import com.six.semi.QNA.model.vo.QNA;

/**
 * Servlet implementation class SelectOneQNAServlet
 */
@WebServlet("/selectOne.qna")
public class SelectOneQNAServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectOneQNAServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int qNo = Integer.parseInt(request.getParameter("qNo"));
		
		System.out.println("selectOneServlet_확인됏나?" + qNo);
		
		QNAService qs = new QNAService();
				
		QNA q = null;
		
		q = qs.selectOne(qNo);
		
		//댓글도 리스트로 가져오기
		/*
		 * ArrayList<BoardComment> clist = new CommentService().selectList(qNo,
		 * q.getqCno());
		 */
			
		 
		
		String page = "";
		
		if(q != null) {
			page = "views/cs/QNADetail.jsp";
			request.setAttribute("QNA", q);
		
			HttpSession session = request.getSession();
			
			session.setAttribute("QNA", q);
			
			
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
