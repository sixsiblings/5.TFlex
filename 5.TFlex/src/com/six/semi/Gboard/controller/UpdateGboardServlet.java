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
 * Servlet implementation class UpdateTboardServlet
 */
@WebServlet("/gUpdate.bo")
public class UpdateGboardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateGboardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		GboardService gbs = new GboardService();
		
		int gNo = Integer.parseInt(request.getParameter("gNo"));
		
		Gboard gb = gbs.updateView(gNo);
		gb.setgTitle(request.getParameter("gtitle"));
		gb.setgContent(request.getParameter("editordata"));
		gb.setgPrice(Integer.parseInt(request.getParameter("gprice")));
		
		int result = gbs.updateBoard(gb);
		
		if( result > 0) {
			
			response.sendRedirect("gselectList.bo");
		} else {
			
			request.setAttribute("msg", "게시글 수정 중 오류 발생");
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
