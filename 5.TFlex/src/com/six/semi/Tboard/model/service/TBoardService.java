package com.six.semi.Tboard.model.service;

import static com.six.semi.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.six.semi.Tboard.model.dao.TBoardDAO;
import com.six.semi.Tboard.model.vo.TBoard;
import com.six.semi.common.PageInfo;

public class TBoardService {

	
		
		private TBoardDAO tdao = new TBoardDAO();
		Connection con;
		
		public int insertTBoard(TBoard t) {
			con = getConnection();
			
			int result = tdao.insertTBoard(con,t);
			
			if(result>0)commit(con);
			else rollback(con);
			
			close(con);
			
			return result;
		}
		
		public int getListCount() {
			con= getConnection();
			
			int result = tdao.getListCount(con);
			
			close(con);
			
			return result;
			
		}
		public ArrayList<TBoard> selectList(PageInfo pi) {
			
			con = getConnection();
			
			// 게시글 시작값과 끝값 미리 계산하기
			
			
			ArrayList<TBoard> list = tdao.selectList(con, pi.getStartRow(), pi.getEndRow());
			//System.out.println(list.get(1).getBno());
			close(con);
			
			return list;
		}

		

		public TBoard selectOne(int tno) {
			con = getConnection();
			
			int result = tdao.addReadCount(con, tno);
			
			TBoard t = null;
			
			if(result > 0) {
				t = tdao.selectOne(con, tno);
				if(t != null) commit(con);
			}
			else rollback(con);
			
			close(con);
			
			return t;
		}
}
