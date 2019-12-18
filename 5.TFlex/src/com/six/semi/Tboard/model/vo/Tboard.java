package com.six.semi.Tboard.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Tboard implements Serializable {

	private int tNo;
	private String tTitle;
	private String tContent;
	private int tPrice;
	private int tCount;
	private String tDate;
	private int sNo;
	private int ticketNo;
	private Date tEnrolldate;
	private int tuNo;
	private String tStatus;
	public Tboard() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Tboard(int tNo, String tTitle, String tContent, int tPrice, int tCount,  String tDate, int sNo,
			int ticketNo, Date tEnrolldate, int tuNo, String tStatus) {
		super();
		this.tNo = tNo;
		this.tTitle = tTitle;
		this.tContent = tContent;
		this.tPrice = tPrice;
		this.tCount = tCount;
		this.tDate = tDate;
		this.sNo = sNo;
		this.ticketNo = ticketNo;
		this.tEnrolldate = tEnrolldate;
		this.tuNo = tuNo;
		this.tStatus = tStatus;
	}
	public int gettNo() {
		return tNo;
	}
	public void settNo(int tNo) {
		this.tNo = tNo;
	}
	public String gettTitle() {
		return tTitle;
	}
	public void settTitle(String tTitle) {
		this.tTitle = tTitle;
	}
	public String gettContent() {
		return tContent;
	}
	public void settContent(String tContent) {
		this.tContent = tContent;
	}
	public int gettPrice() {
		return tPrice;
	}
	public void settPrice(int tPrice) {
		this.tPrice = tPrice;
	}
	public int gettCount() {
		return tCount;
	}
	public void settCount(int tCount) {
		this.tCount = tCount;
	}
	
	public String gettDate() {
		return tDate;
	}
	public void settDate(String tDate) {
		this.tDate = tDate;
	}
	public int getsNo() {
		return sNo;
	}
	public void setsNo(int sNo) {
		this.sNo = sNo;
	}
	public int getTicketNo() {
		return ticketNo;
	}
	public void setTicketNo(int ticketNo) {
		this.ticketNo = ticketNo;
	}
	public Date gettEnrolldate() {
		return tEnrolldate;
	}
	public void settEnrolldate(Date tEnrolldate) {
		this.tEnrolldate = tEnrolldate;
	}
	public int getTuNo() {
		return tuNo;
	}
	public void setTuNo(int tuNo) {
		this.tuNo = tuNo;
	}
	public String gettStatus() {
		return tStatus;
	}
	public void settStatus(String tStatus) {
		this.tStatus = tStatus;
	}
	@Override
	public String toString() {
		return "Tboard [tNo=" + tNo + ", tTitle=" + tTitle + ", tContent=" + tContent + ", tPrice=" + tPrice
				+ ", tCount=" + tCount + ", tDate=" + tDate + ", sNo=" + sNo + ", ticketNo="
				+ ticketNo + ", tEnrolldate=" + tEnrolldate + ", tuNo=" + tuNo + ", tStatus=" + tStatus + "]";
	}
                               
	
	
}
