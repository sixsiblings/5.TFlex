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

}
