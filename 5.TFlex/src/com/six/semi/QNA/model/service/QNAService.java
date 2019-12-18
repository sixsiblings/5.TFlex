package com.six.semi.QNA.model.service;

import java.sql.Connection;
import java.util.ArrayList;
import static com.six.semi.common.JDBCTemplate.*;
import com.six.semi.QNA.model.dao.QNAdao;
import com.six.semi.common.PageInfo;
import com.six.semi.QNA.model.vo.QNA;

public class QNAService {

	private QNAdao qdao = new QNAdao();

	Connection con;

	public int insertQNA(QNA q) {

		con = getConnection();

		int result = qdao.insertQNA(con, q);

		if (result > 0) {

			commit(con);

		} else {

			rollback(con);
		}
		close(con);

		return result;
	}

	public ArrayList<QNA> selectList(int currentPage, int limit) {

		con = getConnection();

		// 게시글 시작값과 끝값 미리 계산하기
		int startRow = (currentPage - 1) * limit;
		
		int endRow = startRow + 10;

		ArrayList<QNA> list = qdao.selectList(con, startRow, endRow);

		close(con);

		return list;
	}

	
	public int getListCount() {
		
		con = getConnection();
		
		int result = qdao.getListCount(con);
		
		close(con);
		
		return result;
		

	}

	
	 public ArrayList<QNA> selectList(PageInfo pi) {
 
	  con = getConnection();
	  
	 // 게시글 시작값과 끝값 미리 계산하기
	 
	  ArrayList<QNA> list = qdao.selectList(con, pi.getStartRow(), pi.getEndRow());
	  
	  close(con);
	 
	 return list; 
	 
	 }
	 

	public QNA selectOne(int qNo) {

		con = getConnection();

		QNA q = null;

		q = qdao.selectOne(con, qNo);

		if (q != null) {

			commit(con);
		}

		else {

			rollback(con);
		}

		close(con);

		return q;
	}
	

	public int updateBoard(QNA q) {
		
		con = getConnection();
		
		int result = qdao.updateQNA(con, q);
		
		if(result > 0) commit(con);
		
		else rollback(con);
		
		return result;
	}
	

	public QNA updateView(int qNo) {

		con = getConnection();

		QNA q = null;

		q = qdao.selectOne(con, qNo);

		close(con);

		return q;
	}
	
	public int deleteQNA(int qNo) {
		
		con = getConnection();
		
		int result = qdao.deleteQNA(con, qNo);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		return result;
	}

	
}
