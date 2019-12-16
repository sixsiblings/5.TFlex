package com.six.semi.SendEmail.emailDB.dao;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

import com.six.semi.member.model.DAO.MemberDAO;
import static com.six.semi.common.JDBCTemplate.*;

public class CheckEmailDao {
	
	private Properties prop = new Properties();

	public CheckEmailDao() {

		try {
			
			prop.load(new FileReader(MemberDAO.class.getResource("/mappers/checkEmail.properties").getPath()));

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public int checkEmail(Connection conn, String email) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("checkSendEmail");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, email);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				
				result = rset.getInt(1);
				
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
		
	}

}











