package com.six.semi.notice.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Notice implements Serializable {
	
	private int ntNo;
	private String ntTitle;
	private String ntContent;
	private int ntFile;
	private Date ntDate;
	private String gm;
	
	
	// 기본 생성자
	public Notice() {
		super();
	}

	// 매개변수 생성자
	public Notice(int ntNo, String ntTitle, String ntContent, int ntFile, Date ntDate, String gm) {
		super();
		this.ntNo = ntNo;
		this.ntTitle = ntTitle;
		this.ntContent = ntContent;
		this.ntFile = ntFile;
		this.ntDate = ntDate;
		this.gm = gm;
	}

	// 투스트링
	@Override
	public String toString() {
		return "Notice [ntNo=" + ntNo + ", ntTitle=" + ntTitle + ", ntContent=" + ntContent + ", ntFile=" + ntFile
				+ ", ntDate=" + ntDate + ", gm=" + gm + "]";
	}

	
	// 게터 앤 세터
	public int getNtNo() {
		return ntNo;
	}

	public void setNtNo(int ntNo) {
		this.ntNo = ntNo;
	}

	public String getNtTitle() {
		return ntTitle;
	}

	public void setNtTitle(String ntTitle) {
		this.ntTitle = ntTitle;
	}

	public String getNtContent() {
		return ntContent;
	}

	public void setNtContent(String ntContent) {
		this.ntContent = ntContent;
	}

	public int getNtFile() {
		return ntFile;
	}

	public void setNtFile(int ntFile) {
		this.ntFile = ntFile;
	}

	public Date getNtDate() {
		return ntDate;
	}

	public void setNtDate(Date ntDate) {
		this.ntDate = ntDate;
	}

	public String getGm() {
		return gm;
	}

	public void setGm(String gm) {
		this.gm = gm;
	}

	
	
	
	

}
