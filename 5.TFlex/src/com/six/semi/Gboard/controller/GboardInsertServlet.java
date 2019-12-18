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
 * Servlet implementation class GboardInsertServlet
 */
@WebServlet("/ginsert.bo")
public class GboardInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GboardInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		GboardService gbs = new GboardService();
		Gboard gb = new Gboard();
		
		gb.setgTitle(request.getParameter("gtitle"));
		gb.setgContent(request.getParameter("editordata"));
		gb.setgPrice(Integer.parseInt(request.getParameter("gprice")));
		gb.setGuNo(Integer.parseInt(request.getParameter("uno")));
		
		int result = gbs.insertBoard(gb);
		
		if(result>0) {
			
			response.sendRedirect("gselectList.bo");
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
