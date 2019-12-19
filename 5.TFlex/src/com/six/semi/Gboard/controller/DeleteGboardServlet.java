package com.six.semi.Gboard.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.six.semi.Gboard.model.service.GboardService;
import com.six.semi.Gboard.model.vo.Gboard;

/**
 * Servlet implementation class DeleteTBoardServlet
 */
@WebServlet("/gDelete.bo")
public class DeleteGboardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteGboardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int gNo = Integer.parseInt(request.getParameter("gNo"));
		
		GboardService gbs = new GboardService();
		
		Gboard gb = gbs.updateView(gNo);
		
		int result = gbs.deleteBoard(gNo);
		
		if(result > 0) {
			
			response.sendRedirect("tselectList.bo");
			
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
