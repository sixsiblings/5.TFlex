package com.six.semi.QNA.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.six.semi.QNA.model.service.QNAService;
import com.six.semi.QNA.model.vo.QNA;

/**
 * Servlet implementation class UpdateQNAServlet
 */
@WebServlet("/update.qna")
public class UpdateQNAServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateQNAServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		QNAService qs = new QNAService();
		
		int qNo = Integer.parseInt(request.getParameter("qNo"));
		
		QNA q = qs.updateView(qNo);
		
		System.out.println("원래 q : " + q);
		System.out.println("qTitle : "  + request.getParameter("qTitle"));
		System.out.println("qContent : "  + request.getParameter("qContent"));
		System.out.println("uNo : "  + request.getParameter("uNo"));
		
		q.setqTitle(request.getParameter("qTitle"));
		q.setqContent(request.getParameter("qContent"));		
		q.setuNo(Integer.parseInt(request.getParameter("uNo")));
				
		int result = qs.updateBoard(q);
		
		if( result > 0) {
			
			response.sendRedirect("selectList.qna");
			
		} else {
			
			request.setAttribute("msg", "게시글 수정 중 오류 발생");
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
