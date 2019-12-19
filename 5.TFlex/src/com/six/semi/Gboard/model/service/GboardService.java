package com.six.semi.Gboard.model.service;

import static com.six.semi.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.six.semi.Gboard.model.dao.GboardDAO;
import com.six.semi.Gboard.model.vo.Gboard;

import com.six.semi.common.PageInfo;


public class GboardService {
	
		private GboardDAO gbdao= new GboardDAO();
		Connection con;
		
		public int getListCount() {
			con = getConnection();
			
			int result = gbdao.getListCount(con);
			
			close(con);
			
		
		return result;
	}

		public ArrayList<Gboard> selectList(PageInfo pi) {
			con = getConnection();
			
			// 게시글 시작값과 끝값 미리 계산하기
			
			
			ArrayList<Gboard> list = gbdao.selectList(con, pi.getStartRow(), pi.getEndRow());
			//System.out.println(list.get(1).getBno());
			close(con);
			
			return list;
		}

		public int insertBoard(Gboard gb) {
			con = getConnection();
			
			int result = gbdao.insertBoard(con,gb);
			
			if(result>0)commit(con);
			else rollback(con);
			
			close(con);
			
			return result;
		}

		public Gboard selectOne(int gNo) {
			con = getConnection();
			
			int result = gbdao.addReadCount(con, gNo);
			
			Gboard gb = null;
			
			if(result > 0) {
				gb = gbdao.selectOne(con, gNo);
				if(gb != null) commit(con);
			}
			else rollback(con);
			
			close(con);
			
			return gb;
		}

		public Gboard updateView(int gNo) {
			con = getConnection();
			
			Gboard gb = gbdao.selectOne(con, gNo);
			
			close(con);
			
			return gb;
		}

		public int updateBoard(Gboard gb) {
			con = getConnection();
			
			int result = gbdao.updateBoard(con, gb);
			
			if(result > 0) commit(con);
			else rollback(con);
			
			return result;
		}

		public int deleteBoard(int gNo) {
			
			con = getConnection();
			
			int result = gbdao.deleteBoard(con, gNo);
			
			if(result > 0) commit(con);
			else rollback(con);
			
			return result;
		}
}
