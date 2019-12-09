package com.six.semi.member.model.DAO;


import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.six.semi.member.model.vo.Member;

public class MemberDAO {
	
	private Properties prop = new Properties();
	
	public MemberDAO() {
		
		try {
			prop.load(new FileReader(
							MemberDAO.class
								.getResource("/mappers/member.properties").getPath()));
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public int insertMember(Connection con, Member m) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		try {
			
			String sql = prop.getProperty("insertMember");
			pstmt.setString(1, m.getUserId());
			pstmt.setString(2, m.getnName());
			pstmt.setString(3, m.getUserPwd());
			pstmt.setString(4, m.getUserName());
			pstmt.setString(5, m.getBirthNo());
			pstmt.setInt(6, m.getiNo());
			pstmt.setString(7, m.getrPerson());
			pstmt.setString(8, m.geteStatus());
			pstmt.setString(9, m.getaComment());
			pstmt.setString(10, m.getaNotice());
			pstmt.setString(11, m.getaItem());
			pstmt.setString(12, m.getEvent());
			pstmt.setString(13, m.getaChat());
			
		} catch(Exception e) {
			e.printStackTrace();
			System.out.println("에러확인");
		}		
		return result;
	}

	public Member selectOne(Connection con, Member m) {
		
		Member result = null;
		
		PreparedStatement pstmt = null;
		
		try {
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectMember");
		
		pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, m.getUserId());
		pstmt.setString(2, m.getnName());
		
		rset = pstmt.executeQuery();
		
		if(rset.next()) {
			result = new Member();
			
			result.setUserId(m.getUserId());
			result.setUserPwd(m.getUserPwd());
			
			result.setUserId(rset.getString("USERID"));
			result.setUserName(rset.getString("USERNAME"));
			result.setUserPwd(rset.getString("USERPWD"));
			result.setnName(rset.getString("NNAME"));
			result.setBirthNo(rset.getString("BIRTHNO"));
			result.setiNo(rset.getInt("INO"));
			result.setrPerson(rset.getString("RPERSON"));
			result.seteStatus(rset.getString("ESTATUS"));
			result.setaComment(rset.getString("ACOMMENT"));
			result.setaItem(rset.getString("AITEM"));
			result.setEvent(rset.getString("EVENT"));
			result.setaChat(rset.getString("ACHAT"));			
			
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("오류발생");
		
		}finally {
			close(rset); 
			close(pstmt);
		}
		return result;
	}
		
		
	

}

	public int updateMember(Connection con, Member m) {

		
		return 0;
	}

	public int deleteMember(Connection con, String userId) {

		
		return 0;
	}

	public int idDupCheck(Connection con, String userId) {

		
		return 0;
	}
