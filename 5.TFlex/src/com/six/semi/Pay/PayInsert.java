package com.six.semi.Pay;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.six.semi.Pay.model.service.PayService;
import com.six.semi.Pay.model.vo.Pay;

/**
 * Servlet implementation class PayInsert
 */
@WebServlet("/PayInsert.pa")
public class PayInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PayInsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PayService ps = new PayService();
		
		int usNo = Integer.parseInt(request.getParameter("US_NO"));
		int ttno = Integer.parseInt(request.getParameter("ttNo"));
		String trno = request.getParameter("TR_NO");
		int ubno = Integer.parseInt(request.getParameter("UB_NO"));
		
//		System.out.println("결과확인 : " + usno + " + " + ttno + " + " + trno + " + " + ubno);
		
		Pay p = new Pay();
		
		p.setUsNo(usNo);
		p.settNo(ttno);
		p.setTrNo(trno);
		p.setUbNo(ubno);
		
		int result = ps.insertHistory(p);
		
		if(result > 0) {
			response.sendRedirect("views/myPage/myPage.jsp");
		} else {
			response.sendRedirect("views/common/errorPage.jsp");
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
