package com.six.semi.boardComment.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.six.semi.boardComment.model.service.CommentService;
import com.six.semi.boardComment.model.vo.BoardComment;

/**
 * Servlet implementation class MLBCommentInsertServlet
 */
@WebServlet("/mInsert.co")
public class MLBCommentInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MLBCommentInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int uno = Integer.parseInt(request.getParameter("uno"));
		String ccontent = request.getParameter("replyContent");
		
		int bno = Integer.parseInt(request.getParameter("bno"));
		int cgbno = Integer.parseInt(request.getParameter("cgbno"));
		int cno2= Integer.parseInt(request.getParameter("cno2"));
		int clevel = Integer.parseInt(request.getParameter("clevel"));
		
		BoardComment bco = new BoardComment();
		
		bco.setBno(bno);
		bco.setCgbno(cgbno);
		bco.setUno(uno);
		bco.setCcontent(ccontent);
		bco.setCno2(cno2);
		bco.setClevel(clevel);
		
		
		int result = new CommentService().insertComment(bco);
		
		if(result > 0) {
			response.sendRedirect("mselectOne.bo?bno="+bno);
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
