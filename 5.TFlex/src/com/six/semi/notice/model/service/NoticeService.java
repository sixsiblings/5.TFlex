package com.six.semi.notice.model.service;

import java.sql.Connection;
import static com.six.semi.common.JDBCTemplate.*;

import com.six.semi.board.model.vo.Board;
import com.six.semi.notice.model.dao.NoticeDAO;
import com.six.semi.notice.model.vo.Notice;

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
		
	}
