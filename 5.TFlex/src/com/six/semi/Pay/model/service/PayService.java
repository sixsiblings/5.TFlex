package com.six.semi.Pay.model.service;

import java.sql.Connection;

import com.six.semi.Pay.model.dao.PayDAO;
import com.six.semi.Pay.model.vo.Pay;
import static com.six.semi.common.JDBCTemplate.*;

public class PayService{
	
	Connection con = null;
	PayDAO pdao = new PayDAO();

	public int insertHistory(Pay p) {
		con = getConnection();
		
		int result = pdao.insertHistory(con, p);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		return result;
	}
	
	
	

}
