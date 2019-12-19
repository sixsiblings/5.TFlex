package com.six.semi.Tboard.model.service;

import static com.six.semi.common.JDBCTemplate.close;
import static com.six.semi.common.JDBCTemplate.commit;
import static com.six.semi.common.JDBCTemplate.getConnection;
import static com.six.semi.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.six.semi.Tboard.model.dao.TboardDAO;
import com.six.semi.Tboard.model.vo.Tboard;
import com.six.semi.board.model.vo.Board;
import com.six.semi.common.PageInfo;

public class TboardService {

	private TboardDAO tbdao= new TboardDAO();
	Connection con;
	
	public int getListCount() {
		con = getConnection();
		
		int result = tbdao.getListCount(con);
		
		close(con);
		
		return result;
	}

	public ArrayList<Tboard> selectList(PageInfo pi) {

		con = getConnection();
		
		// 게시글 시작값과 끝값 미리 계산하기
		
		
		ArrayList<Tboard> list = tbdao.selectList(con, pi.getStartRow(), pi.getEndRow());
		//System.out.println(list.get(1).getBno());
		close(con);
		
		return list;
	}

	public int insertBoard(Tboard tb) {
		con = getConnection();
		
		int result = tbdao.insertBoard(con,tb);
		
		if(result>0)commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}

	public Tboard selectOne(int tNo) {
		con = getConnection();
		
		int result = tbdao.addReadCount(con, tNo);
		
		Tboard tb = null;
		
		if(result > 0) {
			tb = tbdao.selectOne(con, tNo);
			if(tb != null) commit(con);
		}
		else rollback(con);
		
		close(con);
		
		return tb;
	}

	public Tboard updateView(int tNo) {
		con = getConnection();
		
		Tboard tb = tbdao.selectOne(con, tNo);
		
		close(con);
		
		return tb;
	}

	public int updateBoard(Tboard tb) {
		con = getConnection();
		
		int result = tbdao.updateBoard(con, tb);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		return result;
	}


	public int deleteBoard(int tNo) {
		
		con = getConnection();
		
		int result = tbdao.deleteBoard(con, tNo);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		return result;
	}

	public ArrayList<Tboard> top5() {
		con = getConnection();
		ArrayList<Tboard> list = tbdao.top5(con);
		
		close(con);
		
		return list;
	}

}
