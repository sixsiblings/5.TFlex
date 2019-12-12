package com.six.semi.member.model.vo;

import java.io.Serializable;
import java.util.Date;

public class Member implements Serializable {
	
	// 필드변수생성
	
	private int  uNo; // 회원 번호1
	private String  userId; // 회원 아이디2
	private String  nName; // 회원 닉네임3
	private String  userPwd; // 비밀번호4
	private String  userName; // 회원 이름5
	private String  birthNo; // 회원 생년월일6
	private String  email; // 회원 이메일7
	private Date  enrollDate; // 회원 가입일8
	private int  iNo; // 관심사 번호9
	private String  rPerson; // 추천인10
	private String  signal; // 채팅 알림11
	private int  dCount; // 신고 횟수12
	private String  uGrade; // 회원 등급13
	private String  uStatus; // 회원 탈퇴 여부14
	
	// ----------------------------------------------------------------------------------
	
	// 기본 생성자
	public Member() {
		super();
	}

	// 매개변수 생성자 - 회원가입용
	
	public Member(String userId, String nName, String userPwd, String userName, String birthNo, String email, int iNo,
			String rPerson, String signal) {
		super();
		this.userId = userId;
		this.nName = nName;
		this.userPwd = userPwd;
		this.userName = userName;
		this.birthNo = birthNo;
		this.email = email;
		this.iNo = iNo;
		this.rPerson = rPerson;
		this.signal = signal;
	}


	
	// 매개변수 생성자 - 로그인용
	public Member(String userId, String userPwd) {
		this.userId = userId;
		this.userPwd = userPwd;
	}
	
	
	// 매개변수 생성자 - 아이디/비번 찾기용
	
	public Member(String userName, String birthNo, String email) {
		super();
		this.userName = userName;
		this.birthNo = birthNo;
		this.email = email;
	}
	
	
	
	@Override
	public String toString() {
		return "Member [uNo=" + uNo + ", userId=" + userId + ", nName=" + nName + ", userPwd=" + userPwd + ", userName="
				+ userName + ", birthNo=" + birthNo + ", email=" + email + ", enrollDate=" + enrollDate + ", iNo=" + iNo
				+ ", rPerson=" + rPerson + ", signal=" + signal + ", dCount=" + dCount + ", uGrade=" + uGrade
				+ ", uStatus=" + uStatus + "]";
	}
	
	
	// GETTER & SETTER
	public int getuNo() {
		return uNo;
	}

	public void setuNo(int uNo) {
		this.uNo = uNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getnName() {
		return nName;
	}

	public void setnName(String nName) {
		this.nName = nName;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getBirthNo() {
		return birthNo;
	}

	public void setBirthNo(String birthNo) {
		this.birthNo = birthNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public int getiNo() {
		return iNo;
	}

	public void setiNo(int iNo) {
		this.iNo = iNo;
	}

	public String getrPerson() {
		return rPerson;
	}

	public void setrPerson(String rPerson) {
		this.rPerson = rPerson;
	}

	public String getSignal() {
		return signal;
	}

	public void setSignal(String signal) {
		this.signal = signal;
	}

	public int getdCount() {
		return dCount;
	}

	public void setdCount(int dCount) {
		this.dCount = dCount;
	}

	public String getuGrade() {
		return uGrade;
	}

	public void setuGrade(String uGrade) {
		this.uGrade = uGrade;
	}

	public String getuStatus() {
		return uStatus;
	}

	public void setuStatus(String uStatus) {
		this.uStatus = uStatus;
	}



	
	
}