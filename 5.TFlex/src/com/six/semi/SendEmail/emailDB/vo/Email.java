package com.six.semi.SendEmail.emailDB.vo;

public class Email {
	
	private String userId;
	private String email;
	private String content;
	
	public Email() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Email(String email, String content) {
		super();
		this.email = email;
		this.content = content;
	}

	public Email(String userId, String email, String content) {
		super();
		this.userId = userId;
		this.email = email;
		this.content = content;
	}

	@Override
	public String toString() {
		return "Email [userId=" + userId + ", email=" + email + ", content=" + content + "]";
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	

}
