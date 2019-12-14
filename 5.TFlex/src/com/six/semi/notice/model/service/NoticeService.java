package com.six.semi.notice.model.service;

import java.sql.Connection;
import static com.six.semi.common.JDBCTemplate.*;

import com.six.semi.notice.model.dao.NoticeDAO;
import com.six.semi.notice.model.vo.Notice;

public class NoticeService {
	
	private NoticeDAO ndao = new NoticeDAO();
	
	Connection con;
	
	
	public int insertNotice(Notice nt) {
		con = getConnection();
		
		int result = ndao.insertNotice(con, nt);
		
		if( result > 0) {
			
			commit(con);
			
		}
		
	}



}
