package com.six.semi.QNA.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.six.semi.QNA.model.dao.QNAdao;
import com.six.semi.QNA.model.vo.QNA;

public class QNAService {

	private QNAdao qdao = new QNAdao();
	
	Connection con;
	
	public int insertQNA(QNA q) {
		
		if( result > 0) {
			
			commit(con);
			
		}else {
			
			rollback(con);
		}
		close(con);
		
		return result;
	}

	public ArrayList<QNA> selectList(int currentPage, int limit) {
		
		
		
		return null;
	}

	public int getListCount() {
		con = getConnection();
		
		int result = qdao.getListCount(con);
		
		close(con);
		
		return result;
	}


	
	

}
