package com.six.semi.SendEmail.emailDB.service;

import static com.six.semi.common.JDBCTemplate.*;

import java.sql.Connection;

import com.six.semi.SendEmail.emailDB.dao.CheckEmail;
import com.six.semi.SendEmail.emailDB.vo.Email;

public class emailService {
	
	Connection con = null;
	CheckEmail cdao = new CheckEmail();
	
	public int checkEmail(String email) {
		
		con = getConnection();
		
		int result = cdao.checkEmail(con, email);
		
		close(con);
		
		return result;
		
	}

	public int insertIdEmail(Email e) {
		
		con = getConnection();
		
		int result = cdao.insertIdEmail(con, e);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

	public int deleteIdEmail(String email) {
		con = getConnection();
		
		int result = 0;
		
		result = cdao.deleteIdEmail(con, email);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

	public int selectIdNumber(Email em) {
		
		con = getConnection();
		
		int result = cdao.selectIdNumber(con, em);
		
		close(con);
		
		return result;
	}

}









