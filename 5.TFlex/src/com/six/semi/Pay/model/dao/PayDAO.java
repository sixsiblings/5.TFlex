package com.six.semi.Pay.model.dao;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Properties;

import com.six.semi.Pay.model.vo.Pay;
import com.six.semi.member.model.DAO.MemberDAO;
import static com.six.semi.common.JDBCTemplate.*;

public class PayDAO {
	
	private Properties prop = new Properties();

	   public PayDAO() {

	      try {
	         prop.load(new FileReader(MemberDAO.class.getResource("/mappers/pay.properties").getPath()));

	      } catch (Exception e) {
	         e.printStackTrace();
	      }

	   }

	public int insertHistory(Connection con, Pay p) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertTHistory");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, p.getUsNo());
			pstmt.setInt(2, p.gettNo());
			pstmt.setString(3, p.getTrNo());
			pstmt.setInt(4, p.getUbNo());
			
			result = pstmt.executeUpdate();
			
			
		} catch(Exception e) {
			
			e.printStackTrace();
			
		} finally {
			close(pstmt);
		}
		
		return result;
		
	}

}











