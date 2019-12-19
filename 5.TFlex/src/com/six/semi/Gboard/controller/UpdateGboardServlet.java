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
 * Servlet implementation class UpdateTboardServlet
 */
@WebServlet("/tUpdate.bo")
public class UpdateTboardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateTboardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		TboardService tbs = new TboardService();
		
		int tNo = Integer.parseInt(request.getParameter("tNo"));
		
		Tboard tb = tbs.updateView(tNo);
		
		tb.settTitle(request.getParameter("ttitle"));
		tb.settDate(request.getParameter("tdate"));
		tb.settPrice(Integer.parseInt(request.getParameter("tprice")));
		tb.setTicketNo(Integer.parseInt(request.getParameter("ticketno")));
		tb.settContent(request.getParameter("editordata"));
		tb.setTuNo(Integer.parseInt(request.getParameter("tNo")));
		
		int result = tbs.updateBoard(tb);
		
		if( result > 0) {
			
			response.sendRedirect("tselectList.bo");
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
