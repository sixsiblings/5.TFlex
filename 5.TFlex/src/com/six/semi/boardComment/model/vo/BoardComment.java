package com.six.semi.boardComment.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class BoardComment implements Serializable {
	
	private int cno;
	private int bno;
	private String ccontent;
	private String cwriter;
	private Date cdate;
	private int ref_cno;
	private int clevel;
	private String status;
	
	public BoardComment() { }
	public BoardComment(int cno, int bno, String ccontent, String cwriter, Date cdate, int ref_cno, int clevel,
			String status) {
		super();
		this.cno = cno;
		this.bno = bno;
		this.ccontent = ccontent;
		this.cwriter = cwriter;
		this.cdate = cdate;
		this.ref_cno = ref_cno;
		this.clevel = clevel;
		this.status = status;
	}

	public BoardComment(int bno, String ccontent, String cwriter, int ref_cno, int clevel) {
		super();
		this.bno = bno;
		this.ccontent = ccontent;
		this.cwriter = cwriter;
		this.ref_cno = ref_cno;
		this.clevel = clevel;
	}
	
	@Override
	public String toString() {
		return "BoardComment [cno=" + cno + ", bno=" + bno + ", ccontent=" + ccontent + ", cwriter=" + cwriter
				+ ", cdate=" + cdate + ", ref_cno=" + ref_cno + ", clevel=" + clevel + ", status=" + status + "]";
	}
	
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getCcontent() {
		return ccontent;
	}
	public void setCcontent(String ccontent) {
		this.ccontent = ccontent;
	}
	public String getCwriter() {
		return cwriter;
	}
	public void setCwriter(String cwriter) {
		this.cwriter = cwriter;
	}
	public Date getCdate() {
		return cdate;
	}
	public void setCdate(Date cdate) {
		this.cdate = cdate;
	}
	public int getRef_cno() {
		return ref_cno;
	}
	public void setRef_cno(int ref_cno) {
		this.ref_cno = ref_cno;
	}
	public int getClevel() {
		return clevel;
	}
	public void setClevel(int clevel) {
		this.clevel = clevel;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}
