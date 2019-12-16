package com.six.semi.SendEmail.emailDB.service;

import java.sql.Connection;

import com.six.semi.SendEmail.emailDB.dao.CheckEmailDao;
import static com.six.semi.common.JDBCTemplate.*;

public class emailService {
	
	Connection conn = null;
	CheckEmailDao cdao = new CheckEmailDao();
	
	public int checkEmail(String email) {
		
		conn = getConnection();
		
		int result = cdao.checkEmail(conn, email);
		
		return result;
		
	}

}









