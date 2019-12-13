package com.six.semi.board.model.dao;


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

import com.six.semi.board.model.dao.BoardDAO;
import com.six.semi.board.model.vo.Board;

public class BoardDAO {

	private Properties prop = new Properties();
	
	public BoardDAO() {
		String filePath = BoardDAO.class
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
	
	public int inserBoard(Connection con, Board b) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int getListCount(Connection con) {
		int result = 0;
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("listCount");
		
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

	public ArrayList<Board> selectList(Connection con, int startRow, int endRow) {
		ArrayList<Board> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		System.out.println("start"+startRow );
		System.out.println("end"+endRow );
		String sql = prop.getProperty("selectList");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<>();
			
			while(rset.next()) {
				Board b = new Board();

				b.setBno(rset.getInt(1));
				b.setCgbno(rset.getInt(2));
				b.setBtitle(rset.getString(3));
				b.setBcontent(rset.getString(4));
				b.setBcount(rset.getInt(5));
				b.setBfile(rset.getString(6));
				b.setBreportcount(rset.getInt(7));
				b.setBbenrolldate(rset.getDate(8));
				b.setUno(rset.getInt(9));
				b.setBstatus(rset.getString(10));
								
				list.add(b);
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
	}

