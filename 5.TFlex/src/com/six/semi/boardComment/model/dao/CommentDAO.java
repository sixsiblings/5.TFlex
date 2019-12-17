package com.six.semi.boardComment.model.dao;

import static com.six.semi.common.JDBCTemplate.*;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.six.semi.boardComment.model.dao.CommentDAO;
import com.six.semi.boardComment.model.vo.BoardComment;

public class CommentDAO {

	private Properties prop = new Properties();
	
	public CommentDAO() {
		String filePath = CommentDAO.class
				          .getResource("/mappers/comment.properties")
				          .getPath();
		try {
			prop.load(new FileReader(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<BoardComment> selectList(Connection con, int bno, int cgbno) {
		ArrayList<BoardComment> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, bno);
			pstmt.setInt(2, cgbno);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<>();
			
			while(rset.next()) {
				
				BoardComment bco = new BoardComment();
				
				bco.setCno(rset.getInt("C_NO"));
				bco.setCgbno(rset.getInt("CGB_NO"));
				bco.setBno(rset.getInt("B_NO"));
				bco.setCcontent(rset.getString("C_CONTENT"));
				bco.setUno(rset.getInt("U_NO"));
				bco.setCdate(rset.getDate("C_DATE"));
				bco.setCno2(rset.getInt("C_NO2"));
				bco.setClevel(rset.getInt("C_LEVEL"));
				bco.setCstatus(rset.getString("C_STATUS"));
				System.out.println(bco);
				list.add(bco);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	public int insertComment(Connection con, BoardComment bco) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertComment");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, bco.getBno());
			pstmt.setInt(2, bco.getUno());
			pstmt.setString(3, bco.getCcontent());
			pstmt.setInt(4, bco.getClevel());
			pstmt.setInt(5, bco.getCno2());
			
			// 다른 참조하는 댓글이 만약 없다면 null이 들어가고,
			// 참조하는 댓글이 존재한다면 해당 댓글의 정보가 들어가야 한다.
			if(bco.getCno2() > 0) {
				pstmt.setInt(4, bco.getCno2());
			} else {
				// pstmt.setNull(4, java.sql.Types.NULL);
				pstmt.setNull(4, 0);
			}
			
			pstmt.setInt(5, bco.getClevel());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
		
			e.printStackTrace();
			
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int updateComment(Connection con, BoardComment bco) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateComment");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, bco.getCcontent());
			pstmt.setInt(2, bco.getCno());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(pstmt);
			
		}
		
		return result;
	}

	public int deleteComment(Connection con, BoardComment bco ) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("deleteComment");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, bco.getCno());
			pstmt.setInt(2, bco.getBno());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {			
			close(pstmt);
		}
		
		return result;
	}

}
