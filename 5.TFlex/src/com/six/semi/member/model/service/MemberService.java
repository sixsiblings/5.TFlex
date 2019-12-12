package com.six.semi.member.model.service;

import java.sql.Connection;

import static com.six.semi.common.JDBCTemplate.*;

import com.six.semi.member.model.DAO.MemberDAO;
import com.six.semi.member.model.vo.Member;

public class MemberService {
	
	MemberDAO mDao = new MemberDAO();
	Connection con = null;
		
	public int insertMember(Member m) {
		
		con = getConnection();
		
		int result = mDao.insertMember(con, m);
		
		if( result > 0 ) commit(con);
		
		else rollback(con);
		
		close(con);
				
		return result;
	}

	public Member selectOne(Member m) {
		con = getConnection();
		
		Member result = mDao.selectOne(con, m);
		
		if(result != null) {
			commit(con);
		}
		
		else {
			rollback(con);
		}
		
		close(con);
		
		return result;
		
	}
	
	public int updateMember(Member m) {
		
		con = getConnection();
		
		int result = mDao.updateMember(con, m);
		
		if(result > 0) commit(con);
		
		else rollback(con);
		
		close(con);
		
		return result;
	}
	
	public int deleteMember(String userId) {
		
		con = getConnection();
		
		int result = mDao.deleteMember(con, userId);
		
		if( result > 0) commit(con);
		
		else rollback(con);
		
		close(con);
		
		return result;
		
	}
	
	public int idDupCheck(String userId) {
		
		con = getConnection();
		
		int result = mDao.idDupCheck(con, userId);
		
		close(con);
		
		return result;
	}
	

	public int nNameCheck(String nName) {
		
		con = getConnection();
		
		int result = mDao.nNameDupCheck(con, nName);
		
		close(con);
		
		return result;
	}
}
