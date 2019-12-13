package com.kh.jsp.boardComment.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.jsp.boardComment.model.service.CommentService;
import com.kh.jsp.boardComment.model.vo.BoardComment;

/**
 * Servlet implementation class InsertCommentServlet
 */
@WebServlet("/insert.co")
public class InsertCommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertCommentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cwriter = request.getParameter("writer");
		String ccontent = request.getParameter("replyContent");
		
		int bno = Integer.parseInt(request.getParameter("bno"));
		int refcno= Integer.parseInt(request.getParameter("refcno"));
		int clevel = Integer.parseInt(request.getParameter("clevel"));
		
		BoardComment bco = new BoardComment();
		
		bco.setBno(bno);
		bco.setCwriter(cwriter);
		bco.setCcontent(ccontent);
		bco.setRef_cno(refcno);
		bco.setClevel(clevel);
		
		int result = new CommentService().insertComment(bco);
		
		if(result > 0) {
			response.sendRedirect("selectOne.bo?bno="+bno);
		} else {
			request.setAttribute("msg", "댓글 작성 실패!!");
			request.getRequestDispatcher("views/common/errorPage.jsp")
				   .forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
