package com.six.semi.Pay.model.vo;

import java.io.Serializable;

public class Pay implements Serializable{
	
	private int usNo;
	private int tNo;
	private String trNo;
	private String pay;
	private int trNo2;
	private int ubNo;
	
	public Pay() {
		super();
	}

	public Pay(int usNo, int tNo, String trNo, String pay, int trNo2, int ubNo) {
		super();
		this.usNo = usNo;
		this.tNo = tNo;
		this.trNo = trNo;
		this.pay = pay;
		this.trNo2 = trNo2;
		this.ubNo = ubNo;
	}

	@Override
	public String toString() {
		return "PayService [usNo=" + usNo + ", tNo=" + tNo + ", trNo=" + trNo + ", pay=" + pay + ", trNo2=" + trNo2
				+ ", ubNo=" + ubNo + "]";
	}

	public int getUsNo() {
		return usNo;
	}

	public void setUsNo(int usNo) {
		this.usNo = usNo;
	}

	public int gettNo() {
		return tNo;
	}

	public void settNo(int tNo) {
		this.tNo = tNo;
	}

	public String getTrNo() {
		return trNo;
	}

	public void setTrNo(String trNo) {
		this.trNo = trNo;
	}

	public String getPay() {
		return pay;
	}

	public void setPay(String pay) {
		this.pay = pay;
	}

	public int getTrNo2() {
		return trNo2;
	}

	public void setTrNo2(int trNo2) {
		this.trNo2 = trNo2;
	}

	public int getUbNo() {
		return ubNo;
	}

	public void setUbNo(int ubNo) {
		this.ubNo = ubNo;
	}
	
	

}
