package com.six.semi.boardComment.model.service;

import static com.six.semi.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.six.semi.boardComment.model.dao.CommentDAO;
import com.six.semi.boardComment.model.vo.BoardComment;

public class CommentService {
	Connection con;
	private CommentDAO cdao = new CommentDAO();
	
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

	public ArrayList<BoardComment> selectList(int bno) {
		con = getConnection();
		
		ArrayList<BoardComment> list = cdao.selectList(con, bno);
		
		close(con);
		
		return list;
	}

	public int updateComment(BoardComment bco) {
		con = getConnection();
		
		int result = cdao.updateComment(con, bco);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}
	
	public int deleteComment(int cno) {
		con = getConnection();
		
		int result = cdao.deleteComment(con, cno);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}

}




