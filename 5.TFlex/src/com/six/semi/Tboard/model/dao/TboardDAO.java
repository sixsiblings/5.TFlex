package com.six.semi.Tboard.model.dao;

import static com.six.semi.common.JDBCTemplate.close;

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

import com.six.semi.Tboard.model.vo.Tboard;
import com.six.semi.board.model.vo.Board;


public class TboardDAO {

	private Properties prop = new Properties();
	
	public TboardDAO() {
		String filePath = TboardDAO.class
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
		
		String sql = prop.getProperty("tlistCount");
		
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

	public ArrayList<Tboard> selectList(Connection con, int startRow, int endRow) {
		
		ArrayList<Tboard> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		System.out.println("start"+startRow );
		System.out.println("end"+endRow );
		String sql = prop.getProperty("tselectList");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<>();
			
			while(rset.next()) {
				Tboard tb = new Tboard();

				tb.settNo(rset.getInt(1));
				tb.settTitle(rset.getString(2));
				tb.settContent(rset.getString(3));
				tb.settPrice(rset.getInt(4));
				tb.settCount(rset.getInt(5));
				tb.settDate(rset.getString(6));
				tb.setsNo(rset.getInt(7));
				tb.setTicketNo(rset.getInt(8));
				tb.settEnrolldate(rset.getDate(9));
				tb.setTuNo(rset.getInt(10));
				tb.settStatus(rset.getString(11));
				
				list.add(tb);
			}
			
		} catch(SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(rset);
			close(pstmt);
		}
		System.out.println(list.size());
		
		return list;
	}

	public int insertBoard(Connection con, Tboard tb) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		try {
			
			String sql = prop.getProperty("tinsertBoard");
			
			pstmt = con.prepareStatement(sql);
			
			// pstmt.setInt(1, b.getCgbno());
			pstmt.setString(1, tb.gettTitle());
			pstmt.setString(2, tb.gettContent());
			pstmt.setInt(3, tb.gettPrice());
			pstmt.setString(4, tb.gettDate());
			pstmt.setInt(5, tb.getTicketNo());
			pstmt.setInt(6, tb.getTuNo());
			
			result = pstmt.executeUpdate();
			
		} catch(SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int addReadCount(Connection con, int tNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("taddReadCount");
		
		try {
		
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, tNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public Tboard selectOne(Connection con, int tNo) {
		Tboard tb = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		try {
			String sql = prop.getProperty("tselectOne");
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, tNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				tb = new Tboard();
				
				tb.settNo(rset.getInt(1));
				tb.settTitle(rset.getString(2));
				tb.settContent(rset.getString(3));
				tb.settPrice(rset.getInt(4));
				tb.settCount(rset.getInt(5));
				tb.settDate(rset.getString(6));
				tb.setsNo(rset.getInt(7));
				tb.setTicketNo(rset.getInt(8));
				tb.settEnrolldate(rset.getDate(9));
				tb.setTuNo(rset.getInt(10));
				tb.settStatus(rset.getString(11));

			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return tb;
	}

	public int updateBoard(Connection con, Tboard tb) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("tupdateBoard");
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, tb.gettTitle());
			pstmt.setString(2, tb.gettDate());
			pstmt.setInt(3, tb.gettPrice());
			pstmt.setInt(4, tb.getTicketNo());
			pstmt.setString(5, tb.gettContent());
			pstmt.setInt(6, tb.gettNo());
						
			result = pstmt.executeUpdate();
			
		} catch(SQLException e) {
			e.printStackTrace();
			
		} finally	{
			close(pstmt);
		}		
		
		return result;
	
	}

}
