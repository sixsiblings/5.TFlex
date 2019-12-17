package com.six.semi.Tboard.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.six.semi.Tboard.model.service.TBoardService;
import com.six.semi.Tboard.model.vo.TBoard;

/**
 * Servlet implementation class TBoardInsertServlet
 */
@WebServlet("/tinsert.tn")
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
		TBoardService ts = new TBoardService();
		TBoard t = new TBoard();
		
		t.setTtitle(request.getParameter("title"));
		t.setTcontent(request.getParameter("editordata"));
		t.setTno(Integer.parseInt(request.getParameter("uno")));
		
		int result = ts.insertTBoard(t);
		
		if(result>0) {
			response.sendRedirect("tboardList.to");
		}else {
			
			request.setAttribute("msg","게시글 작성 실패");
			request.getRequestDispatcher("vews/common/errorPage.jsp").forward(request,response);
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
