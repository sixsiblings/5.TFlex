package com.six.semi.board.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.six.semi.board.model.vo.Board;

public class BoardDAO {
	
	// 게시글 등록
	
	public int insertBoard(Connection con, Board b) {
		int result=0;
		PreparedStatement pstmt = null;
		
		String sql="";
		
		pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1,);
		
		return result;
	}
}
