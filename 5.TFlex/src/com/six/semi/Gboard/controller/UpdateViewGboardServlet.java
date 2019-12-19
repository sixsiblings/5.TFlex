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
 * Servlet implementation class UpdateViewTBoardServlet
 */
@WebServlet("/gbUpView.bo")
public class UpdateViewGboardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateViewGboardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int gNo = Integer.parseInt(request.getParameter("gNo"));
		
		Gboard gb = new GboardService().updateView(gNo);
		
		String page = "";
		if(gb != null) {
			
			page = "views/Gboard/GboardUpdateForm.jsp";
			request.setAttribute("Gboard", gb);
		} else {
			
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "게시글 수정 화면 조회 실패!");			
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
