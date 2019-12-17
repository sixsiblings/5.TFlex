package com.six.semi.notice.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.six.semi.common.JDBCTemplate.*;

import com.six.semi.board.model.vo.Board;
import com.six.semi.notice.model.dao.NoticeDAO;
import com.six.semi.notice.model.vo.Notice;
import com.six.semi.notice.model.vo.PageInfo;

public class NoticeService {
	
	private NoticeDAO ndao = new NoticeDAO();
	
	Connection con;
	
	public int insertNotice(Notice nt) {
		con = getConnection();
		
		int result=ndao.insertNotice(con,nt);
		
		if(result>0)commit(con);
		else rollback(con);
		
		close(con);
		System.out.println("서비스 성공");
		return result;
		}

	public int getListCount() {
		con = getConnection();
		
		int result = ndao.getListCount(con);
		
		close(con);
		
		return result;
	}


	public ArrayList<Notice> selectList(PageInfo pi) {
		con = getConnection();
		
		// 게시글 시작값과 끝값 미리 계산하기
		
		ArrayList<Notice> list = ndao.selectList(con, pi.getStartRow(), pi.getEndRow());
		close(con);
		
		return list;
	}
		
	}
