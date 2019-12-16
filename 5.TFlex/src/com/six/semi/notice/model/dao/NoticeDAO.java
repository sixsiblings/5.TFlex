package com.six.semi.notice.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
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
			String sql = prop.getProperty("insertNotice");
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, nt.getNtTitle());
			pstmt.setString(3, nt.getNtContent());
			pstmt.setString(2, nt.getGm());
			
		}catch(SQLException e) {
			e.printStackTrace();
		} finally {
			System.out.println("dao성공");
			close(pstmt);
		}
		return result;
	}
}















