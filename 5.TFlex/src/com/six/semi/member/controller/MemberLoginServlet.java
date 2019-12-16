package com.six.semi.member.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.six.semi.member.model.service.MemberService;
import com.six.semi.member.model.vo.Member;

/**
 * Servlet implementation class MemberLoginServlet
 */
@WebServlet("/login.me")
public class MemberLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		ServletContext context = request.getServletContext();
		
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		
		if(context.getAttribute(userId) == null) {
		
			MemberService ms = new MemberService();
			
			Member m = new Member(userId, userPwd);
			
			Member result = ms.selectOne(m);
			
			if( result != null ) {
				
				context.setAttribute(userId, userId);
				
				session.setAttribute("member", result);
				
				response.sendRedirect("index.jsp");
				
				
			} else {
				
				request.setAttribute("msg", "로그인에 실패하셨습니다. 아이디나 비밀번호를 확인해주세요.");
				
				request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
				
				
			}
			
		} else if(!(context.getAttribute(userId) == null)) {
			
			request.setAttribute("msg", userId + "는 이미 로그인 되어 있는 아이디 입니다.");
			
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
