package com.six.semi.broadCast.controller;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

/**
 * Servlet implementation class BroadcastDeleteUserServlet
 */
@WebServlet("/bcDelUser.do")
public class BroadcastDeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BroadcastDeleteUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		// 현재 삭제하려는 사용자 아이디
		String user= request.getParameter("chat_id");
		
		// 서블릿 전체 영역의 스코프(범위 지정자)
		ServletContext application = request.getServletContext();
		
		// 현재 접속자 목록 가져오기
		Set<String> userList = (HashSet)application.getAttribute("userList");
		
		// 현재 접속자 목록에서 지금 나가려는 사용자 지우기
		userList.remove(user);
		
		// 접속자 목록 갱신
		application.setAttribute("userList", userList);
		
		response.setContentType("application/json; charset=UTF-8");
		new Gson().toJson(userList, response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
