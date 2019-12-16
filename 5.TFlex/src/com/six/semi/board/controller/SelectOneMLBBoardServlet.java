package com.six.semi.board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.six.semi.board.model.service.BoardService;
import com.six.semi.board.model.vo.Board;
import com.six.semi.boardComment.model.service.CommentService;
import com.six.semi.boardComment.model.vo.BoardComment;

/**
 * Servlet implementation class SelectOneMLBBoardServlet
 */
@WebServlet("/mselectOne.bo")
public class SelectOneMLBBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectOneMLBBoardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int bno = Integer.parseInt(request.getParameter("bno"));
		//System.out.println("bno 확인 : "+bno);
		
		Board b = new BoardService().selectOne(bno);
		
		// 댓글도 리스트로 가져오기
		ArrayList<BoardComment> clist
		   = new CommentService().selectList(bno,b.getCgbno());
		
		String page = "";
		
		if(b != null) {
			page = "views/board/MLBboardDetail.jsp";
			request.setAttribute("board", b);
			request.setAttribute("clist", clist);
			
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
