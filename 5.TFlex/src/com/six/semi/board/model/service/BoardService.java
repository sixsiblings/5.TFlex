package com.six.semi.board.model.service;


import static com.six.semi.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.six.semi.board.model.dao.BoardDAO;
import com.six.semi.board.model.vo.Board;


public class BoardService {
	
	private BoardDAO bdao= new BoardDAO();
	Connection con;
	
	public int insertBoard(Board b) {
		con = getConnection();
		
		int result=bdao.inserBoard(con,b);
		
		if(result>0)commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}

	public int getListCount() {
	con = getConnection();
		
		int result = bdao.getListCount(con);
		
		close(con);
		
		return result;
	}

	public ArrayList<Board> selectList(int currentPage, int limit) {
		
		con = getConnection();
		
		// 게시글 시작값과 끝값 미리 계산하기
		int startRow = (currentPage - 1) * limit;
		int endRow = startRow + 10;
		
		ArrayList<Board> list = bdao.selectList(con, startRow, endRow);
		
		close(con);
		
		return list;
	}


}
