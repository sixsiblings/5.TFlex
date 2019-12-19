package com.six.semi.Tboard.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.six.semi.Tboard.model.service.TboardService;
import com.six.semi.Tboard.model.vo.Tboard;

/**
 * Servlet implementation class DeleteTBoardServlet
 */
@WebServlet("/tDelete.bo")
public class DeleteTBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteTBoardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int tNo = Integer.parseInt(request.getParameter("tNo"));
		
		TboardService tbs = new TboardService();
		
		Tboard tb = tbs.updateView(tNo);
		
		int result = tbs.deleteBoard(tNo);
		
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
