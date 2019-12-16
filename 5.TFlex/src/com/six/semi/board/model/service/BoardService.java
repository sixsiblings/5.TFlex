package com.six.semi.board.model.service;


import static com.six.semi.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.six.semi.board.model.dao.BoardDAO;
import com.six.semi.board.model.vo.Board;
import com.six.semi.common.PageInfo;


public class BoardService {
	
	private BoardDAO bdao= new BoardDAO();
	Connection con;
	
	public int insertBoard(Board b) {
		con = getConnection();
		
		int result=bdao.insertBoard(con,b);
		
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

	public ArrayList<Board> selectList(PageInfo pi) {
		
		con = getConnection();
		
		// 게시글 시작값과 끝값 미리 계산하기
		
		
		ArrayList<Board> list = bdao.selectList(con, pi.getStartRow(), pi.getEndRow());
		//System.out.println(list.get(1).getBno());
		close(con);
		
		return list;
	}

	

	public Board selectOne(int bno) {
		con = getConnection();
		
		int result = bdao.addReadCount(con, bno);
		
		Board b = null;
		
		if(result > 0) {
			b = bdao.selectOne(con, bno);
			if(b != null) commit(con);
		}
		else rollback(con);
		
		close(con);
		
		return b;
	}


}
