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

         pstmt.setString(1, m.getUserId());
         pstmt.setString(2, m.getnName());
         pstmt.setString(3, m.getUserPwd());
         pstmt.setString(4, m.getUserName());
         pstmt.setString(5, m.getBirthNo());
         pstmt.setString(6, m.getEmail());
         pstmt.setString(7, m.getrPerson());
               
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
            
            result.setuNo(rset.getInt(1));
            result.setnName(rset.getString(3)); 
            result.setUserName(rset.getString(5));
            result.setBirthNo(rset.getString(6));
            result.setEmail(rset.getString(7)); 
            result.setrPerson(rset.getString(9));
            result.setdCount(rset.getInt(10));
            result.setuGrade(rset.getString(11));
            result.setuStatus(rset.getString(12));
            
            
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
	   	int result = 0;
		PreparedStatement pstmt = null;

		try {

			String sql = prop.getProperty("updateMember");
			
			pstmt = con.prepareStatement(sql);

	        pstmt.setString(1, m.getnName());
	        pstmt.setString(2, m.getUserPwd());
	        pstmt.setString(3, m.getUserName());
	        pstmt.setString(4, m.getEmail());
	        pstmt.setString(5, m.getUserId());
	               
	         result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}
    
   

   public int deleteMember(Connection con, String userId) {

	   int result = 0;
		PreparedStatement pstmt = null;

		try {

			String sql = prop.getProperty("deleteMember");

			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, userId);

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
     
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