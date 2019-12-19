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
 * Servlet implementation class TBoardInsertServlet
 */
@WebServlet("/tInsert.bo")
public class TBoardInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TBoardInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TboardService tbs = new TboardService();
		Tboard tb = new Tboard();
		
		int test = Integer.parseInt(request.getParameter("stadium"));
		
		tb.settTitle(request.getParameter("ttitle"));
		tb.settContent(request.getParameter("editordata"));
		tb.settPrice(Integer.parseInt(request.getParameter("tprice")));
		tb.settDate(request.getParameter("tdate"));
		tb.setTicketNo(Integer.parseInt(request.getParameter("ticketno")));
		tb.setTuNo(Integer.parseInt(request.getParameter("uno")));
		tb.setsName(request.getParameter("sname"));
		tb.setsNo(test);
		
		System.out.println(tb);
		
		System.out.println("test = " + test);
		
			int result = tbs.insertBoard(tb);
			
			if(result > 0) {
				
				response.sendRedirect("tselectList.bo");
				
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
