package com.six.semi.board.model.service;

import java.sql.Connection;

import com.six.semi.board.model.vo.Board;

public class BoardService {

	private BoardDAO bdao= new BoardDAO();
	Connection con;
	
	public int insertBoard(Board b) {
		con=getConnection();
		
		int result=bdao.inserBoard(con,b);
		
		if(result>0)commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}
}
