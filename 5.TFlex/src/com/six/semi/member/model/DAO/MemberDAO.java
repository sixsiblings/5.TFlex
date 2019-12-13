package com.six.semi.member.model.DAO;

import static com.six.semi.common.JDBCTemplate.*;

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
			prop.load(new FileReader(MemberDAO.class.getResource("/mappers/member.properties").getPath()));

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public int insertMember(Connection con, Member m) {

		int result = 0;

		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertMember");

		try {
			pstmt = con.prepareStatement(sql);

			pstmt.setInt(1, m.getuNo());
			pstmt.setString(2, m.getUserId());
			pstmt.setString(3, m.getnName());
			pstmt.setString(4, m.getUserPwd());
			pstmt.setString(5, m.getUserName());
			pstmt.setString(6, m.getBirthNo());
			pstmt.setString(7, m.getEmail());
			pstmt.setInt(8, m.getiNo());
			pstmt.setString(9, m.getrPerson());
			pstmt.setString(10, m.getSignal());
			pstmt.setInt(11, m.getdCount());
			pstmt.setString(12, m.getuGrade());
			pstmt.setString(13, m.getuStatus());
					
			result = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("에러확인");
		}
		return result;
	}

	public Member selectOne(Connection con, Member m) {

		Member result = null;

		PreparedStatement pstmt = null;

		ResultSet rset = null;

		try {

			String sql = prop.getProperty("selectMember");

			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, m.getUserId());
			pstmt.setString(2, m.getUserPwd());

			rset = pstmt.executeQuery();

			if (rset.next()) {
				result = new Member();

				result.setUserId(m.getUserId());
				result.setUserPwd(m.getUserPwd());

				result.setnName(rset.getString(3)); 
				result.setUserName(rset.getString(5));
				result.setBirthNo(rset.getString(6));
				result.setEmail(rset.getString(7)); 
				result.setiNo(rset.getInt(9));
				result.setrPerson(rset.getString(10));
				result.setSignal(rset.getString(11));
				
				
				/*
				 * result.setnName(rset.getString(3)); result.setUserName(rset.getString(5));
				 * result.setBirthNo(rset.getString(6)); result.setEmail(rset.getString(7));
				 * result.setiNo(rset.getInt(9)); result.setrPerson(rset.getString(10));
				 * result.seteStatus(rset.getString(11));
				 * result.setaComment(rset.getString(12)); result.setaItem(rset.getString(13));
				 * result.setaItem(rset.getString(14)); result.setEvent(rset.getString(15));
				 * result.setaChat(rset.getString(16));
				 */
				
			}

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("오류발생");

		} finally {
			close(rset);
			close(pstmt);
		}
		return result;
	}

	public int updateMember(Connection con, Member m) {

		return 0;
	}

	public int deleteMember(Connection con, String userId) {

		return 0;
	}

	public int idDupCheck(Connection con, String userId) {
		int result = 0;

		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = prop.getProperty("idDupCheck");

		try {
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, userId);

			rset = pstmt.executeQuery();

			if (rset.next()) {
				result = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return result;
	}

	public int nNameDupCheck(Connection con, String nName) {

		int result = 0;

		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = prop.getProperty("nNameDupCheck");

		try {
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, nName);

			rset = pstmt.executeQuery();

			if (rset.next()) {
				result = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return result;
	}

}
