package com.six.semi.QNA.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
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
		
		int reuslt = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertQNA");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, q.getuNo());
			pstmt.setInt(2, q.getqNo());
			pstmt.setInt(3, q.getqCno());
			pstmt.setString(4, q.getqTitle());
			pstmt.setString(5, q.getqContent());
			pstmt.setString(6, q.getQaStatus());
			pstmt.setString(7, q.getQaContent());
			pstmt.setDate(8, q.getqDate());
			pstmt.setString(9, q.getqStatus());
			
			reuslt = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		}finally {
			
			close(pstmt);
			
		}
		return result;	
	}
	
	
	// 게시글 목록 조회
	public ArrayList<Board> selectList(Connection con, int startRow, int endRow){
		
		ArrayList<Board> list = null;
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
				Board b = new Board();

				b.setBno(rset.getInt("bno"));
				b.setBtype(rset.getInt("btype"));
				b.setBtitle(rset.getString(3));
				b.setBcontent(rset.getString(4));
				b.setWriter(rset.getString(5));
				b.setBcount(rset.getInt(6));
				b.setBfile(rset.getString(7));
				b.setBdate(rset.getDate(8));
				b.setStatus(rset.getString(9));
								
				list.add(b);
			}
			
		} catch(SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(rset);
			close(pstmt);
		}
		
		
		return list;
	}

	public Board selectOne(Connection con, int bno) {
		Board b = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		try {
			String sql = prop.getProperty("selectOne");
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, bno);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				b = new Board();
				
				b.setBno(bno);
				b.setBtype(rset.getInt(2));
				b.setBtitle(rset.getString(3));
				b.setBcontent(rset.getString(4));
				b.setWriter(rset.getString(5));
				b.setBcount(rset.getInt(6));
				b.setBfile(rset.getString(7));
				b.setBdate(rset.getDate(8));
				b.setStatus(rset.getString(9));
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		
		return b;
	}

	// 게시글 조회수 증가
	public int addReadCount(Connection con, int bno) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("addReadCount");
		
		try {
		
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, bno);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int updateBoard(Connection con, Board b) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateBoard");
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, b.getBtitle());
			pstmt.setString(2, b.getBcontent());
			pstmt.setString(3, b.getBfile());
			pstmt.setInt(4, b.getBno());
						
			result = pstmt.executeUpdate();
			
		} catch(SQLException e) {
			e.printStackTrace();
			
		} finally	{
			close(pstmt);
		}		
		
		return result;
	}

	public int deleteBoard(Connection con, int bno) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteBoard");
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, bno);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
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

	public ArrayList<Board> top5(Connection con) {
		ArrayList<Board> list = null;
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectTop5");
		
		try {
		
			stmt = con.createStatement();
			
			rset = stmt.executeQuery(sql);
			
			list = new ArrayList<>();
			
			while(rset.next()) {
				Board b = new Board();
				
				b.setBno(rset.getInt("BNO"));
				b.setBtype(rset.getInt("BTYPE"));
				b.setBtitle(rset.getString("BTITLE"));
				b.setBcontent(rset.getString("BCONTENT"));
				b.setWriter(rset.getString("writer"));
				b.setBcount(rset.getInt("BCOUNT"));
				b.setBdate(rset.getDate("BDATE"));
				
				list.add(b);
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
