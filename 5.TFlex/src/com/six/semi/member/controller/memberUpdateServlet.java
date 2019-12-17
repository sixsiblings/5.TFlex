package com.six.semi.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.six.semi.member.model.service.MemberService;
import com.six.semi.member.model.vo.Member;

/**
 * Servlet implementation class memberUpdateServlet
 */
@WebServlet("/update.me")
public class memberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public memberUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		String userId = request.getParameter("userId");
		String nName = request.getParameter("nName");
		String userPwd = request.getParameter("userPwd");
		String userName = request.getParameter("userName");
		String birthNo = request.getParameter("birthNo");
		String email = request.getParameter("email");
		int iNo = Integer.parseInt(request.getParameter("iNo"));
					
		
		// 
		
		
		
		
		
		
		
	
		Member m = new Member(userId, nName, userPwd, userName, birthNo, email, iNo);
		
		System.out.println("받은정보 확인 : " + m);
		
		
		MemberService ms = new MemberService();
		int result = ms.updateMember(m);
		
		
		if(result > 0) {
			
			System.out.println("회원 정보 수정 완료! : "+m);
			response.sendRedirect("index.jsp");
		
		} else {
			// 수정 실패
			request.setAttribute("msg", "수정 실패");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
			// 에러 메세지 !
			
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
