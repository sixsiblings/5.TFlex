package com.six.semi.member.model.vo;

import java.io.Serializable;
import java.util.Date;

public class Member implements Serializable {
	
	// 필드변수생성
	
	private int  uNo; // 회원 번호
	private String  userId; // 회원 아이디
	private String  nName; // 회원 닉네임
	private String  userPwd; // 비밀번호
	private String  userName; // 회원 이름
	private String  birthNo; // 회원 생년월일
	private Date  enrollDate; // 회원 가입일
	private int  iNo; // 관심사 번호
	private String  rPerson; // 추천인
	private String  eStatus; // 이메일 수신 여부
	private String  aComment; // 내 게시글 댓글 알림
	private String  aNotice; // 공지사항 알림
	private String  event; // 각종 이벤트 알림
	private String  aItem; // 매물 알림 
	private String  aChat; // 채팅 알림
	private int  dCount; // 신고 횟수
	private String  userBank; // 회원 은행
	private String  bankNo; // 회원 계좌
	private String  uGrade; // 회원 등급
	private String  uStatus; // 회원 탈퇴 여부
	
	// ----------------------------------------------------------------------------------
	
	// 기본 생성자
	public Member() {
		super();
	}

	
	// 매개변수 생성자 - 회원가입용
	public Member(String userId, String nName, String userPwd, String userName, String birthNo, int iNo, String rPerson,
			String eStatus, String aComment, String aNotice, String event, String aItem, String aChat) {
		super();
		this.userId = userId;
		this.nName = nName;
		this.userPwd = userPwd;
		this.userName = userName;
		this.birthNo = birthNo;
		this.iNo = iNo;
		this.rPerson = rPerson;
		this.eStatus = eStatus;
		this.aComment = aComment;
		this.aNotice = aNotice;
		this.event = event;
		this.aItem = aItem;
		this.aChat = aChat;
	}
	
	
	// ----------------------------------------------------------------------------------
	
	// 매개변수 생성자 - 로그인용
	public Member(String userId, String userPwd) {
		this.userId = userId;
		this.userPwd = userPwd;
	}
	

	// ----------------------------------------------------------------------------------
	
	// 매개변수 생성자 - 결재용
	public Member(String userId, String userName, String birthNo, String userBank, String bankNo) {
		this.userId = userId;
		this.userName = userName;
		this.birthNo = birthNo;
		this.userBank = userBank;
		this.bankNo = bankNo;
	}

	
	// ----------------------------------------------------------------------------------
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


	public String geteStatus() {
		return eStatus;
	}


	public void seteStatus(String eStatus) {
		this.eStatus = eStatus;
	}


	public String getaComment() {
		return aComment;
	}


	public void setaComment(String aComment) {
		this.aComment = aComment;
	}


	public String getaNotice() {
		return aNotice;
	}


	public void setaNotice(String aNotice) {
		this.aNotice = aNotice;
	}


	public String getEvent() {
		return event;
	}


	public void setEvent(String event) {
		this.event = event;
	}


	public String getaItem() {
		return aItem;
	}


	public void setaItem(String aItem) {
		this.aItem = aItem;
	}


	public String getaChat() {
		return aChat;
	}


	public void setaChat(String aChat) {
		this.aChat = aChat;
	}


	public int getdCount() {
		return dCount;
	}


	public void setdCount(int dCount) {
		this.dCount = dCount;
	}


	public String getUserBank() {
		return userBank;
	}


	public void setUserBank(String userBank) {
		this.userBank = userBank;
	}


	public String getBankNo() {
		return bankNo;
	}


	public void setBankNo(String bankNo) {
		this.bankNo = bankNo;
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

	
	// ----------------------------------------------------------------------------------
	// 투스트링
	
	@Override
	public String toString() {
		return "Member [userId=" + userId + ", nName=" + nName + ", userPwd=" + userPwd + ", userName=" + userName
				+ ", birthNo=" + birthNo + ", iNo=" + iNo + ", rPerson=" + rPerson + ", eStatus=" + eStatus + "]";
	}



}
