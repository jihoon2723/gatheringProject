package com.model;

public class MemberDTO {
	private String id;
	private String pw;
	private String tel;
	private String addr;
	private String email;

	public MemberDTO(String id, String pw, String tel, String addr, String email) {
		this.id = id;
		this.pw = pw;
		this.tel = tel;
		this.addr = addr;
		this.email = email;
	}

	public MemberDTO(String id, String pw) {
		this.id = id;
		this.pw = pw;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
