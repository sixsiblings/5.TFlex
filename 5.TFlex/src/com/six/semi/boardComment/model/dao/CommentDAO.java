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

}
