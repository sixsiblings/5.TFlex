package com.six.semi.boardComment.model.service;


import static com.six.semi.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.six.semi.boardComment.model.dao.CommentDAO;
import com.six.semi.boardComment.model.vo.BoardComment;

public class CommentService {

	Connection con;
	private CommentDAO cdao = new CommentDAO();
	
	public ArrayList<BoardComment> selectList(int bno, int cgbno) {
		con = getConnection();
		
		ArrayList<BoardComment> list = cdao.selectList(con, bno, cgbno);
		
		close(con);
		
		return list;
	}

	public int insertComment(BoardComment bco) {
		con = getConnection();
		
		int result = cdao.insertComment(con, bco);
		
		if ( result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

	public int updateComment(BoardComment bco) {
		con = getConnection();
		
		int result = cdao.updateComment(con, bco);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}

	public int deleteComment(BoardComment bco) {
		con = getConnection();
		
		int result = cdao.deleteComment(con, bco);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}

}
