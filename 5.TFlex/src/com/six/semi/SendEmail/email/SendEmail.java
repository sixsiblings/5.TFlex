package com.six.semi.SendEmail.email;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.six.semi.SendEmail.emailDB.service.emailService;
import com.six.semi.SendEmail.emailDB.vo.Email;

/**
 * Servlet implementation class Test
 */
@WebServlet("/emailSend.em")
public class SendEmail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendEmail() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//인증번호 4자리
		Random random = new Random();
		int result = random.nextInt(10000)+1000;

		if(result>10000){
	    	result = result - 1000;
		}
		
		// 입력값 받음
		String from = "cainchel357@naver.com"; // 보내는 이메일 (TFlex꺼)
		String to = request.getParameter("email"); // 받는 사람 이메일
		String content = String.valueOf(result); // 랜덤 숫자 String으로 변경
		
 		Properties props = new Properties(); // 정보담는 properties
		
		// SMTP 서버에 접속하기 위한 정보들
		props.put("mail.smtp.host","smtp.naver.com"); // 네이버 SMTP
		 
		props.put("mail.smtp.port", "465");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.debug", "true");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.socketFactory.fallback", "false");
		
		try {
			
			Authenticator auth = new TFlexAuthenticator();
			Session session = Session.getInstance(props, auth);
			
			MimeMessage msg = new MimeMessage(session);// 메일의 내용을 담을 객체
			
		    msg.setSubject("TFlex ID/PWD 찾기 이메일 인증번호 발송!!"); // 제목
		     
		    Address fromAddr = new InternetAddress(from);
		    msg.setFrom(fromAddr); // 보내는 사람
		     
		    Address toAddr = new InternetAddress(to);
		    msg.addRecipient(Message.RecipientType.TO, toAddr); // 받는 사람
		     
		    
		    msg.setContent(content, "text/html;charset=UTF-8"); // 내용과 인코딩
		     
		    Transport.send(msg); // 전송
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		emailService es = new emailService();
		
		Email e = new Email();
		
		e.setContent(content);
		e.setEmail(to);
		
		int resultInt = es.insertIdEmail(e);
		
		if(resultInt > 0) {
			System.out.println("입력 성공");
		} else {
			System.out.println("입력 실패");
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









