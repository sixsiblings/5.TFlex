package com.six.semi.SendEmail.checkEmail;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.six.semi.SendEmail.emailDB.service.emailService;
import com.six.semi.SendEmail.emailDB.vo.Email;

/**
 * Servlet implementation class CheckNumber
 */
@WebServlet("/checkNumber.em")
public class CheckNumber extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckNumber() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String number = request.getParameter("number");
		
		emailService es = new emailService();
		Email em = new Email(email, number);
		
		int resultNum = es.selectIdNumber(em);
		
		if(resultNum == 1) {
			
			String result =  es.selectNumId(em);
			
			HashMap<String, Object> hmap = new HashMap<>();
			
			hmap.put("resultNum", resultNum);
			hmap.put("userId", result);
			
			response.setContentType("application/json; charset=UTF-8");
			new Gson().toJson(hmap, response.getWriter());
			
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
