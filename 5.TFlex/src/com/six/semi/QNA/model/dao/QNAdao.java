package com.six.semi.QNA.model.dao;
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

import com.six.semi.QNA.model.vo.QNA;

public class QNAdao {
	
	// 쿼리 조회용 프로퍼티 등록
	
	private Properties prop = new Properties();
	
	public QNAdao() {
		
		String filePath = QNAdao.class.getResource("/mappers/QNA.properties").getPath();
		
		try {
			
			prop.load(new FileReader(filePath));
			
		} catch (FileNotFoundException e) {
			
			e.printStackTrace();
			
		} catch (IOException e) {
			
			e.printStackTrace();			
		}
	}

	public int insertQNA(Connection con, QNA q) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertQNA");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, q.getuNo());
			pstmt.setString(2, q.getqTitle());
			pstmt.setString(3, q.getqContent());
			
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		}finally {
			
			close(pstmt);
			
		}
		return result;	
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

	// 게시글 목록 조회
	public ArrayList<QNA> selectList(Connection con, int startRow, int endRow){
		
		ArrayList<QNA> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<>();
			
			while(rset.next()) {
				QNA q = new QNA();
				
				/* q.setQaContent(rset.getCursorName(1)); */
				
				q.setqNo(rset.getInt(2));
				q.setqTitle(rset.getString(4));
				q.setQaStatus(rset.getString(6));
							
				list.add(q);
			}
			
		} catch(SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(rset);
			close(pstmt);
		}
			
		return list;
	}

	
	public QNA selectOne(Connection con, int qNo) {
		
		QNA q = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		try {
			String sql = prop.getProperty("selectOne");
			
			pstmt = con.prepareStatement(sql);

			pstmt.setInt(1, qNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				q = new QNA();
				
				q.setqNo(rset.getInt(2));
				q.setqTitle(rset.getString(4));
				q.setqContent(rset.getString(5));
				q.setQaStatus(rset.getString(6));				
				
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}		
		return q;
	}
	

	public int updateQNA(Connection con, QNA q) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateQNA");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, q.getqNo());
			pstmt.setString(2, q.getqTitle());
			pstmt.setString(3, q.getqContent());
						
			result = pstmt.executeUpdate();
			
		} catch(SQLException e) {
			e.printStackTrace();
			
		} finally	{
			close(pstmt);
			
		}				
		return result;
	}

}
