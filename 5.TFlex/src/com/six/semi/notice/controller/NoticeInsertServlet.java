package com.six.semi.notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.six.semi.notice.model.service.NoticeService;
import com.six.semi.notice.model.vo.Notice;

/**
 * Servlet implementation class MLBBoardInsertServlet
 */
@WebServlet("/insert.bo")
public class NoticeInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		NoticeService ns = new NoticeService();
		Notice n = new Notice();
		
		n.setNtTitle(request.getParameter("title"));
		n.setGm(request.getParameter("nName"));
		n.setNtContent(request.getParameter("content"));
		 System.out.println(request.getParameter("title"));
		 System.out.println(request.getParameter("nName"));
		 System.out.println(request.getParameter("content"));
			// System.out.println(request.getParameter("cgbno"));
			// b.setCgbno(Integer.parseInt(request.getParameter("cgbno")));
		
			int result = ns.insertNotice(n);
			System.out.println("서블릿 성공");
			System.out.println(n);
			if(result > 0) {
				response.sendRedirect("selectList.qna");
				System.out.println("ddddd"+n);
				
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