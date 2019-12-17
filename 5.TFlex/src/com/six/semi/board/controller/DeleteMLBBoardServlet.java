package com.six.semi.board.controller;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.six.semi.board.model.service.BoardService;
import com.six.semi.board.model.vo.Board;

/**
 * Servlet implementation class DeleteMLBBoardServlet
 */
@WebServlet("/mDelete.bo")
public class DeleteMLBBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteMLBBoardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int bno = Integer.parseInt(request.getParameter("bno"));
		
		BoardService bs = new BoardService();
		
		Board b = bs.updateView(bno);
		
		int result = bs.deleteBoard(bno);
		
		if(result > 0) {
			
			response.sendRedirect("mselectList.bo");
			
		} else {
			
			request.setAttribute("msg", "게시글 삭제 실패!");
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
