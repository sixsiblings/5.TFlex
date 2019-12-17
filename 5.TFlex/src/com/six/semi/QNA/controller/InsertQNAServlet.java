package com.six.semi.QNA.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.six.semi.QNA.model.service.QNAService;
import com.six.semi.QNA.model.vo.QNA;
import com.six.semi.common.PageInfo;

/**
 * Servlet implementation class InsertQNAServlet
 */
@WebServlet("/insert.qna")
public class InsertQNAServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertQNAServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		QNAService qs = new QNAService();
		
		QNA q = new QNA();
		
		q.setqTitle(request.getParameter("qTitle"));
		q.setqContent(request.getParameter("qContent"));
		q.setuNo(Integer.parseInt(request.getParameter("uNo")));
		 
		
			int result = qs.insertQNA(q);
			
			if(result > 0) {
				System.out.println("InsertServlet_여기왓니?");
				
				response.sendRedirect("selectList.qna");
				
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
