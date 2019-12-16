package com.six.semi.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.six.semi.board.model.service.BoardService;
import com.six.semi.board.model.vo.Board;

/**
 * Servlet implementation class MLBBoardInsertServlet
 */
@WebServlet("/mInsert.bo")
public class MLBBoardInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MLBBoardInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardService bs = new BoardService();
		Board b = new Board();
		
		b.setBtitle(request.getParameter("title"));
		b.setBcontent(request.getParameter("editordata"));
		b.setUno(Integer.parseInt(request.getParameter("uno")));
		 
			// System.out.println(request.getParameter("cgbno"));
			// b.setCgbno(Integer.parseInt(request.getParameter("cgbno")));
		
			int result = bs.insertBoard(b);
			
			if(result > 0) {
				
				response.sendRedirect("mselectList.bo");
				
			} else {
				
				request.setAttribute("msg", "게시글 작성 실패");
				request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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
