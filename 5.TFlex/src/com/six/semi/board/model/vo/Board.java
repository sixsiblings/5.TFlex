package com.six.semi.board.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Board implements Serializable {

	private int bno;
	private int cgbno;
	private String btitle;
	private String bcontent;
	private int bcount;
	private String bfile;
	private int breportcount;
	private Date bbenrolldate;
	private int uno;
	private String bstatus;
	
	
	public Board() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Board(int bno, int cgbno, String btitle, String bcontent, int bcount, String bfile, int breportcount,
			Date bbenrolldate, int uno, String bstatus) {
		super();
		this.bno = bno;
		this.cgbno = cgbno;
		this.btitle = btitle;
		this.bcontent = bcontent;
		this.bcount = bcount;
		this.bfile = bfile;
		this.breportcount = breportcount;
		this.bbenrolldate = bbenrolldate;
		this.uno = uno;
		this.bstatus = bstatus;
	}
	public Board(int cgbno, String btitle, String bcontent, int uno) {
		super();
		
		this.cgbno = cgbno;
		this.btitle = btitle;
		this.bcontent = bcontent;
		this.uno = uno;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public int getCgbno() {
		return cgbno;
	}
	public void setCgbno(int cgbno) {
		this.cgbno = cgbno;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBcontent() {
		return bcontent;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	public int getBcount() {
		return bcount;
	}
	public void setBcount(int bcount) {
		this.bcount = bcount;
	}
	public String getBfile() {
		return bfile;
	}
	public void setBfile(String bfile) {
		this.bfile = bfile;
	}
	public int getBreportcount() {
		return breportcount;
	}
	public void setBreportcount(int breportcount) {
		this.breportcount = breportcount;
	}
	public Date getBbenrolldate() {
		return bbenrolldate;
	}
	public void setBbenrolldate(Date bbenrolldate) {
		this.bbenrolldate = bbenrolldate;
	}
	public int getUno() {
		return uno;
	}
	public void setUno(int uno) {
		this.uno = uno;
	}
	public String getBstatus() {
		return bstatus;
	}
	public void setBstatus(String bstatus) {
		this.bstatus = bstatus;
	}
	@Override
	public String toString() {
		return "Board [bno=" + bno + ", cgbno=" + cgbno + ", btitle=" + btitle + ", bcontent=" + bcontent + ", bcount="
				+ bcount + ", bfile=" + bfile + ", breportcount=" + breportcount + ", bbenrolldate=" + bbenrolldate
				+ ", uno=" + uno + ", bstatus=" + bstatus + "]";
	}
	
}
