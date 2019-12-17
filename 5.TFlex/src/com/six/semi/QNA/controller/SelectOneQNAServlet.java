package com.six.semi.QNA.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.six.semi.QNA.model.service.QNAService;
import com.six.semi.QNA.model.vo.QNA;
import com.six.semi.QNAComment.model.service.QNACommentService;
import com.six.semi.QNAComment.model.vo.QNAComment;

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
		
		int qno = Integer.parseInt(request.getParameter("qno"));
		//System.out.println("bno 확인 : "+bno);
		
		QNA q = new QNAService().selectOne(qno);
		
		
		// 댓글도 리스트로 가져오기
		ArrayList<QNAComment> qclist
		   = new QNACommentService().selectList(qno,q.getqCno());
		
		String page = "";
		
		if(q != null) {
			page = "views/board/MLBboardDetail.jsp";
			request.setAttribute("board", q);
			request.setAttribute("clist", qclist);
			
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
