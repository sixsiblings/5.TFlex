package com.six.semi.notice.model.dao;

import java.io.FileNotFoundException;


import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;
import static com.six.semi.common.JDBCTemplate.*;

import com.six.semi.notice.model.vo.Notice;

public class NoticeDAO {
	
	// 쿼리 조회용 프로퍼티 등록
	
	private Properties prop = new Properties();
	
	public NoticeDAO() {
		
		String filePath = NoticeDAO.class.getResource("/mappers/Notice.properties").getPath();
		
		try {
			
			prop.load(new FileReader(filePath));
			
		} catch (FileNotFoundException e) {
			
			e.printStackTrace();
			
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	// 게시글 등록
	public int insertNotice(Connection con, Notice nt) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		try {
			String sql = prop.getProperty("inserttNotice");
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, nt.getNtTitle());
			pstmt.setString(2, nt.getNtContent());
			pstmt.setString(3, nt.getGm());
			
			result = pstmt.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		} finally {
			System.out.println("dao성공");
			close(pstmt);
		}
		System.out.println("성공?");
		return result;
	}

	public int getListCount(Connection con) {
		int result = 0;
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("listCount");
		System.out.println("SQL : " + sql);
		
		try {
			stmt = con.createStatement();
			
			rset = stmt.executeQuery(sql);
			
			if(rset.next()) {
				result = rset.getInt(1);
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		return result;
	}

	public ArrayList<Notice> selectList(Connection con, int startRow, int endRow) {
		ArrayList<Notice> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		System.out.println("시작" + startRow);
		System.out.println("끝" + endRow);
		String sql = prop.getProperty("selectNList");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<>();
			
			while(rset.next()) {
				
			Notice n = new Notice();
			
			n.setNtNo(rset.getInt(1));
			n.setNcgbno(rset.getInt(2));
			n.setNtTitle(rset.getString(3));
			n.setNtContent(rset.getString(4));
			n.setNtFile(rset.getInt(5));
			n.setNtDate(rset.getDate(6));
			n.setGm(rset.getString(7));
			n.setNstatus(rset.getString(8));
			
			list.add(n);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			
			close(rset);
			close(pstmt);
		}
		System.out.println(list.size());
		
		return list;
	}

	public Notice getselelctOne(Connection con, int ntNo) {
		Notice n = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectNOne");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, ntNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				n = new Notice();
				
				n.setNtNo(rset.getInt(1));
				n.setNcgbno(rset.getInt(2));
				n.setNtTitle(rset.getString(3));
				n.setNtContent(rset.getString(4));
				n.setNtFile(rset.getInt(5));
				n.setNtDate(rset.getDate(6));
				n.setGm(rset.getString(7));
				n.setNstatus(rset.getString(8));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
			
		}
		return n;
	}

	public int addReadCount(Connection con, int ntNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("addReadNCount");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, ntNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}	finally {
			close(pstmt);
		}
		return result;
	}

	public ArrayList<Notice> top5(Connection con) {
		ArrayList<Notice> list = null;
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectTop5");
		
		try {
			stmt = con.createStatement();
			
			rset = stmt.executeQuery(sql);
			
			list = new ArrayList<>();
			
			while(rset.next()) {
				Notice n = new Notice();
				
				n.setNtNo(rset.getInt(1));
				n.setNcgbno(rset.getInt(2));
				n.setNtTitle(rset.getString(3));
				n.setNtContent(rset.getString(4));
				n.setNtFile(rset.getInt(5));
				n.setNtDate(rset.getDate(6));
				n.setGm(rset.getString(7));
				n.setNstatus(rset.getString(8));
				
				list.add(n);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		
		return list;
	}
	
}















