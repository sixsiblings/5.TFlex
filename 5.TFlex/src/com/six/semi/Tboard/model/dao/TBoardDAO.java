package com.six.semi.Tboard.model.dao;

import static com.six.semi.common.JDBCTemplate.*;


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

import com.six.semi.Tboard.model.vo.TBoard;

public class TBoardDAO {
	
	private Properties prop = new Properties();
	
	public TBoardDAO() {
		
		String filePath = TBoardDAO.class
						 .getResource("/mappers/TBoard.properties")
						 .getPath();

			
			try {
				prop.load(new FileReader(filePath));
				
			}catch(FileNotFoundException e) {
				e.printStackTrace();
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	
	public int insertTBoard(Connection con, TBoard t) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		
		try {
			
			String sql = prop.getProperty("insertBoard");
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, t.getTtitle());
			pstmt.setString(2, t.getTcontent());
			pstmt.setInt(3, t.getTno());
			
			result = pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
		
	}
	
	public int getListCount(Connection con) {
		
		int result=0;
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("listCount");
		
		try {
			
			stmt = con.createStatement();
			
			rset = stmt.executeQuery(sql);
			
			if(rset.next()) {
				
				result = rset.getInt(1);
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		
		return result;
		
	}
	
	public ArrayList<TBoard> selectList(Connection con, int startRow, int endRow){
		
		ArrayList<TBoard> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		System.out.println("start" +startRow);
		System.out.println("end"+endRow);
		String sql = prop.getProperty("selectList");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<>();
			
			while(rset.next()) {
				
				TBoard t = new TBoard();
				
				t.setTno(rset.getInt(1));        
				t.setTtitle(rset.getString(2));
				t.setTcontent(rset.getString(3));
				t.setTprice(rset.getInt(4));
				t.setTcount(rset.getInt(5));
				t.setTfile(rset.getInt(6));
				t.setTdate(rset.getDate(7));
				t.setSno(rset.getInt(8));
				t.setTicketno(rset.getInt(9));
				t.setTenrolldate(rset.getDate(10));
				t.setTuno(rset.getInt(11));
				t.setTstatus(rset.getString(12));
				
				list.add(t);
			}
					
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		System.out.println(list.size());
		
		
		return list;
		
	}
	
	public TBoard selectOne(Connection con, int tno) {
		
		TBoard t = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectOne");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, tno);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				
				t = new TBoard();
				
				t.setTno(tno);
				t.setTtitle(rset.getString(2));
				t.setTcontent(rset.getString(3));
				t.setTprice(rset.getInt(4));
				t.setTcount(rset.getInt(5));
				t.setTfile(rset.getInt(6));
				t.setTdate(rset.getDate(7));
				t.setSno(rset.getInt(8));
				t.setTicketno(rset.getInt(9));
				t.setTenrolldate(rset.getDate(10));
				t.setTuno(rset.getInt(11));
				t.setTstatus(rset.getString(12));
				
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return t;
		
	}
	
	public int addReadCount(Connection con, int tno) {
		
		int result = 0;
		PreparedStatement pstmt =null;
		
		String sql = prop.getProperty("addReadCount");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, tno);
			
			result = pstmt.executeUpdate();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			close(pstmt);
		}
		
		return result;
	}
		
}