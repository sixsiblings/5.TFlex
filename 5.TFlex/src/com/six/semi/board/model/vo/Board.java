package com.six.semi.board.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Board implements Serializable {
		
		private int B_NO; 
	    private int CGB_NO;
	    private String B_TITLE; 
	    private String B_CONTENT; 
	    private int B_COUNT;
	    private int B_FILE; 
	    private int B_REPORTCOUNT; 
	    private Date B_BENROLLDATE;
	    private int U_NO;
	    private String B_STATUS;
	    
	    public Board() {
	    	super();
	    }

		public Board(int b_NO, int cGB_NO, String b_TITLE, String b_CONTENT, int b_COUNT, int b_FILE, int b_REPORTCOUNT,
				Date b_BENROLLDATE, int u_NO, String b_STATUS) {
			super();
			B_NO = b_NO;
			CGB_NO = cGB_NO;
			B_TITLE = b_TITLE;
			B_CONTENT = b_CONTENT;
			B_COUNT = b_COUNT;
			B_FILE = b_FILE;
			B_REPORTCOUNT = b_REPORTCOUNT;
			B_BENROLLDATE = b_BENROLLDATE;
			U_NO = u_NO;
			B_STATUS = b_STATUS;
		}

		public Board(int b_NO, String b_TITLE, String b_CONTENT, int b_COUNT, int b_FILE, Date b_BENROLLDATE,
				int u_NO) {
			super();
			B_NO = b_NO;
			B_TITLE = b_TITLE;
			B_CONTENT = b_CONTENT;
			B_COUNT = b_COUNT;
			B_FILE = b_FILE;
			B_BENROLLDATE = b_BENROLLDATE;
			U_NO = u_NO;
		}

		@Override
		public String toString() {
			return "Board [B_NO=" + B_NO + ", CGB_NO=" + CGB_NO + ", B_TITLE=" + B_TITLE + ", B_CONTENT=" + B_CONTENT
					+ ", B_COUNT=" + B_COUNT + ", B_FILE=" + B_FILE + ", B_REPORTCOUNT=" + B_REPORTCOUNT
					+ ", B_BENROLLDATE=" + B_BENROLLDATE + ", U_NO=" + U_NO + ", B_STATUS=" + B_STATUS + "]";
		}

		public int getB_NO() {
			return B_NO;
		}

		public void setB_NO(int b_NO) {
			B_NO = b_NO;
		}

		public int getCGB_NO() {
			return CGB_NO;
		}

		public void setCGB_NO(int cGB_NO) {
			CGB_NO = cGB_NO;
		}

		public String getB_TITLE() {
			return B_TITLE;
		}

		public void setB_TITLE(String b_TITLE) {
			B_TITLE = b_TITLE;
		}

		public String getB_CONTENT() {
			return B_CONTENT;
		}

		public void setB_CONTENT(String b_CONTENT) {
			B_CONTENT = b_CONTENT;
		}

		public int getB_COUNT() {
			return B_COUNT;
		}

		public void setB_COUNT(int b_COUNT) {
			B_COUNT = b_COUNT;
		}

		public int getB_FILE() {
			return B_FILE;
		}

		public void setB_FILE(int b_FILE) {
			B_FILE = b_FILE;
		}

		public int getB_REPORTCOUNT() {
			return B_REPORTCOUNT;
		}

		public void setB_REPORTCOUNT(int b_REPORTCOUNT) {
			B_REPORTCOUNT = b_REPORTCOUNT;
		}

		public Date getB_BENROLLDATE() {
			return B_BENROLLDATE;
		}

		public void setB_BENROLLDATE(Date b_BENROLLDATE) {
			B_BENROLLDATE = b_BENROLLDATE;
		}

		public int getU_NO() {
			return U_NO;
		}

		public void setU_NO(int u_NO) {
			U_NO = u_NO;
		}

		public String getB_STATUS() {
			return B_STATUS;
		}

		public void setB_STATUS(String b_STATUS) {
			B_STATUS = b_STATUS;
		}
	
	    
	}
	
	

