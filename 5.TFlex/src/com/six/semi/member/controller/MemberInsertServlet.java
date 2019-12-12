package com.six.semi.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.six.semi.member.model.service.MemberService;
import com.six.semi.member.model.vo.Member;

/**
 * Servlet implementation class MemberInsertServlet
 */
@WebServlet("/insert.me")
public class MemberInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberInsertServlet() {
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
		String rPerson = request.getParameter("rPerson");
		String signal = request.getParameter("SIGNAL");
					
		
		// 
		
		
		
		
		
		
		
		// 회원 가입용 Member 확인하기
		Member m = new Member(userId, nName, userPwd, userName, birthNo, email, iNo, rPerson, signal);
		
		System.out.println("받은정보 확인 : " + m);
		
		// 회원가입 서비스 실행
		MemberService ms = new MemberService();
		int result = ms.insertMember(m);
		
		// 회원가입 서비스 종료
		if(result > 0) {
			
			// 회원가입 성공
			System.out.println("회원 가입 성공!");
			// 성공하면 인덱스로 보내기
			response.sendRedirect("index.jsp");
		
		} else {
			// 회원가입 실패
			request.setAttribute("msg", "회원가입실패");
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
