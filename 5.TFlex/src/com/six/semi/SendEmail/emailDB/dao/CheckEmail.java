package com.six.semi.SendEmail.emailDB.dao;

import static com.six.semi.common.JDBCTemplate.close;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

import com.six.semi.SendEmail.emailDB.vo.Email;
import com.six.semi.member.model.DAO.MemberDAO;

public class CheckEmail {
	
	private Properties prop = new Properties();

	public CheckEmail() {

		try {
			
			prop.load(new FileReader(MemberDAO.class.getResource("/mappers/checkEmail.properties").getPath()));

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public int checkEmail(Connection con, String email) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("checkSendEmail");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
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

	public int insertIdEmail(Connection con, Email e) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertIdEmail");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, e.getEmail());
			pstmt.setString(2, e.getContent());
			
			result = pstmt.executeUpdate();
			
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int deleteIdEmail(Connection con, String email) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteIdEmail");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, email);
			
			result = pstmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int selectIdNumber(Connection con, Email em) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectIdNumber");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, em.getEmail());
			pstmt.setString(2, em.getContent());
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				
				result = rset.getInt(1);
				
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return result;
	}

}











