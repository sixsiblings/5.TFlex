package com.six.semi.Tboard.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class TBoard implements Serializable {

	private int tno;
	private String ttitle;
	private String tcontent;
	private int tprice;
	private int tcount;
	private int tfile;
	private Date tdate;
	private int sno;
	private int ticketno;
	private Date tenrolldate;
	private int tuno;
	private String tstatus;
	
	public TBoard() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TBoard(int tno, String ttitle, String tcontent, int tprice, int tcount, int tfile, Date tdate, int sno,
			int ticketno, Date tenrolldate, int tuno, String tstatus) {
		super();
		this.tno = tno;
		this.ttitle = ttitle;
		this.tcontent = tcontent;
		this.tprice = tprice;
		this.tcount = tcount;
		this.tfile = tfile;
		this.tdate = tdate;
		this.sno = sno;
		this.ticketno = ticketno;
		this.tenrolldate = tenrolldate;
		this.tuno = tuno;
		this.tstatus = tstatus;
	}

	public TBoard(String ttitle, String tcontent, int tfile, int sno, int ticketno, int tuno) {
		super();
		this.ttitle = ttitle;
		this.tcontent = tcontent;
		this.tfile = tfile;
		this.sno = sno;
		this.ticketno = ticketno;
		this.tuno = tuno;
	}
	
	

	public int getTno() {
		return tno;
	}

	public void setTno(int tno) {
		this.tno = tno;
	}

	public String getTtitle() {
		return ttitle;
	}

	public void setTtitle(String ttitle) {
		this.ttitle = ttitle;
	}

	public String getTcontent() {
		return tcontent;
	}

	public void setTcontent(String tcontent) {
		this.tcontent = tcontent;
	}

	public int getTprice() {
		return tprice;
	}

	public void setTprice(int tprice) {
		this.tprice = tprice;
	}

	public int getTcount() {
		return tcount;
	}

	public void setTcount(int tcount) {
		this.tcount = tcount;
	}

	public int getTfile() {
		return tfile;
	}

	public void setTfile(int tfile) {
		this.tfile = tfile;
	}

	public Date getTdate() {
		return tdate;
	}

	public void setTdate(Date tdate) {
		this.tdate = tdate;
	}

	public int getSno() {
		return sno;
	}

	public void setSno(int sno) {
		this.sno = sno;
	}

	public int getTicketno() {
		return ticketno;
	}

	public void setTicketno(int ticketno) {
		this.ticketno = ticketno;
	}

	public Date getTenrolldate() {
		return tenrolldate;
	}

	public void setTenrolldate(Date tenrolldate) {
		this.tenrolldate = tenrolldate;
	}

	public int getTuno() {
		return tuno;
	}

	public void setTuno(int tuno) {
		this.tuno = tuno;
	}

	public String getTstatus() {
		return tstatus;
	}

	public void setTstatus(String tstatus) {
		this.tstatus = tstatus;
	}

	@Override
	public String toString() {
		return "TBoard [tno=" + tno + ", ttitle=" + ttitle + ", tcontent=" + tcontent + ", tprice=" + tprice
				+ ", tcount=" + tcount + ", tfile=" + tfile + ", tdate=" + tdate + ", sno=" + sno + ", ticketno="
				+ ticketno + ", tenrolldate=" + tenrolldate + ", tuno=" + tuno + ", tstatus=" + tstatus + "]";
	}
	
	
	
}
