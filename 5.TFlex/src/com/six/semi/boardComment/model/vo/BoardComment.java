package com.six.semi.boardComment.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class BoardComment implements Serializable {

	private int cno;
	private int cgbno;
	private int bno;
	private int uno;
	private String ccontent;
	private Date cdate;
	private int clevel;
	private int ccount;
	private String cstatus;
	private int cno2;
	public BoardComment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BoardComment(int cno, int cgbno, int bno, int uno, String ccontent, Date cdate, int clevel, int ccount,
			String cstatus, int cno2) {
		super();
		this.cno = cno;
		this.cgbno = cgbno;
		this.bno = bno;
		this.uno = uno;
		this.ccontent = ccontent;
		this.cdate = cdate;
		this.clevel = clevel;
		this.ccount = ccount;
		this.cstatus = cstatus;
		this.cno2 = cno2;
	}
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public int getCgbno() {
		return cgbno;
	}
	public void setCgbno(int cgbno) {
		this.cgbno = cgbno;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public int getUno() {
		return uno;
	}
	public void setUno(int uno) {
		this.uno = uno;
	}
	public String getCcontent() {
		return ccontent;
	}
	public void setCcontent(String ccontent) {
		this.ccontent = ccontent;
	}
	public Date getCdate() {
		return cdate;
	}
	public void setCdate(Date cdate) {
		this.cdate = cdate;
	}
	public int getClevel() {
		return clevel;
	}
	public void setClevel(int clevel) {
		this.clevel = clevel;
	}
	public int getCcount() {
		return ccount;
	}
	public void setCcount(int ccount) {
		this.ccount = ccount;
	}
	public String getCstatus() {
		return cstatus;
	}
	public void setCstatus(String cstatus) {
		this.cstatus = cstatus;
	}
	public int getCno2() {
		return cno2;
	}
	public void setCno2(int cno2) {
		this.cno2 = cno2;
	}
	@Override
	public String toString() {
		return "BoardComment [cno=" + cno + ", cgbno=" + cgbno + ", bno=" + bno + ", uno=" + uno + ", ccontent="
				+ ccontent + ", cdate=" + cdate + ", clevel=" + clevel + ", ccount=" + ccount + ", cstatus=" + cstatus
				+ ", cno2=" + cno2 + "]";
	}
	
	
}
