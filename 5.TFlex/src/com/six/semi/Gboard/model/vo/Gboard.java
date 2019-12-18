package com.six.semi.Gboard.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Gboard implements Serializable{
	
	
	private int gNo;
	private String gTitle;
	private String gContent;
	private int gPrice;
	private int gCount;
	private Date gEnrolldate;
	private int guNo;
	private String gStatus;
	
	public Gboard() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Gboard(int gNo, String gTitle, String gContent, int gPrice, int gCount, Date gEnrolldate,
			int guNo, String gStatus) {
		super();
		this.gNo = gNo;
		this.gTitle = gTitle;
		this.gContent = gContent;
		this.gPrice = gPrice;
		this.gCount = gCount;
		this.gEnrolldate = gEnrolldate;
		this.guNo = guNo;
		this.gStatus = gStatus;
	}

	public int getgNo() {
		return gNo;
	}

	public void setgNo(int gNo) {
		this.gNo = gNo;
	}

	public String getgTitle() {
		return gTitle;
	}

	public void setgTitle(String gTitle) {
		this.gTitle = gTitle;
	}

	public String getgContent() {
		return gContent;
	}

	public void setgContent(String gContent) {
		this.gContent = gContent;
	}

	public int getgPrice() {
		return gPrice;
	}

	public void setgPrice(int gPrice) {
		this.gPrice = gPrice;
	}

	public int getgCount() {
		return gCount;
	}

	public void setgCount(int gCount) {
		this.gCount = gCount;
	}

	public Date getgEnrolldate() {
		return gEnrolldate;
	}

	public void setgEnrolldate(Date gEnrolldate) {
		this.gEnrolldate = gEnrolldate;
	}

	public int getGuNo() {
		return guNo;
	}

	public void setGuNo(int guNo) {
		this.guNo = guNo;
	}

	public String getgStatus() {
		return gStatus;
	}

	public void setgStatus(String gStatus) {
		this.gStatus = gStatus;
	}

	@Override
	public String toString() {
		return "Gboard [gNo=" + gNo + ", gTitle=" + gTitle + ", gContent=" + gContent + ", gPrice=" + gPrice
				+ ", gCount=" + gCount + ", gEnrolldate=" + gEnrolldate + ", guNo=" + guNo + ", gStatus=" + gStatus
				+ "]";
	}
	
	
}
