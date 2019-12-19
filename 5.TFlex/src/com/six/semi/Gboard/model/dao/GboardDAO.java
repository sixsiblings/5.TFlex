package com.six.semi.Gboard.model.dao;

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

import com.six.semi.Gboard.model.vo.Gboard;
import com.six.semi.Gboard.model.dao.GboardDAO;


public class GboardDAO {

	private Properties prop = new Properties();
	
	public GboardDAO() {
		String filePath = GboardDAO.class
						  .getResource("/mappers/board.properties")
						  .getPath();
		try {
			prop.load(new FileReader(filePath));
			
		} catch (FileNotFoundException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	public int getListCount(Connection con) {
		
		int result = 0;
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("glistCount");
		
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

	public ArrayList<Gboard> selectList(Connection con, int startRow, int endRow) {
		
		ArrayList<Gboard> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		System.out.println("start"+startRow );
		System.out.println("end"+endRow );
		String sql = prop.getProperty("gselectList");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<>();
			
			while(rset.next()) {
				Gboard gb = new Gboard();
				
				gb.setgNo(rset.getInt(1));
				gb.setgTitle(rset.getString(2));
				gb.setgContent(rset.getString(3));
				gb.setgPrice(rset.getInt(4));
				gb.setgCount(rset.getInt(5));
				gb.setgEnrolldate(rset.getDate(6));
				gb.setGuNo(rset.getInt(7));
				gb.setgStatus(rset.getString(7));
				
				list.add(gb);
				
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
		}
		System.out.println(list.size());
		
		return list;
	}

	public int insertBoard(Connection con, Gboard gb) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		try {
			
			String sql = prop.getProperty("ginsertBoard");
			
			pstmt = con.prepareStatement(sql);
			
			// pstmt.setInt(1, b.getCgbno());
			pstmt.setString(1, gb.getgTitle());
			pstmt.setString(2, gb.getgContent());
			pstmt.setInt(3, gb.getgPrice());
			pstmt.setInt(4, gb.getGuNo());
			
			result = pstmt.executeUpdate();
			
		} catch(SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int addReadCount(Connection con, int gNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("gaddReadCount");
		
		try {
		
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, gNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public Gboard selectOne(Connection con, int gNo) {
		
		Gboard gb = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		try {
			String sql = prop.getProperty("gselectOne");
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, gNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				gb = new Gboard();
				
				gb.setgNo(rset.getInt(1));
				gb.setgTitle(rset.getString(2));
				gb.setgContent(rset.getString(3));
				gb.setgPrice(rset.getInt(4));
				gb.setgCount(rset.getInt(5));
				gb.setgEnrolldate(rset.getDate(6));
				gb.setGuNo(rset.getInt(7));
				gb.setgStatus(rset.getString(8));
				
			
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		
		return gb;
}
	public int updateBoard(Connection con, Gboard gb) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("gupdateBoard");
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, gb.getgTitle());
			pstmt.setInt(2, gb.getgPrice());
			pstmt.setString(3, gb.getgContent());
			pstmt.setInt(4, gb.getgNo());
						
			result = pstmt.executeUpdate();
			
		} catch(SQLException e) {
			e.printStackTrace();
			
		} finally	{
			close(pstmt);
		}		
		
		return result;
	
	}

	public int deleteBoard(Connection con, int gNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("gdeleteBoard");
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, gNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			
			close(pstmt);
		}
		
		return result;
	}
}
