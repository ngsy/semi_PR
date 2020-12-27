package com.kh.member.model.vo;

public class member {

	private int m_no; //회원번호
	private String m_name; //회원명
	private String id; //아이디
	private String pwd; //패스워드
	private String phone; //휴대폰
	private String address; //주소
	private String email; //이메일
	private String status; //탈퇴여부
	private int report_count; //신고횟수 
	private int grade; //등급
	
//	위도,경도,지역1,지역2 변수 타입 미정
	
	
	public member() {
		
	}
	

	public member(int m_no, String m_name, String id, String pwd, String phone, String address, String email
		) {

		this.m_no = m_no;
		this.m_name = m_name;
		this.id = id;
		this.pwd = pwd;
		this.phone = phone;
		this.address = address;
		this.email = email;
	
	}
	
	
	public member(int m_no, String m_name, String id, String pwd, String phone, String address, String email,
			String status, int report_count, int grade) {

		this.m_no = m_no;
		this.m_name = m_name;
		this.id = id;
		this.pwd = pwd;
		this.phone = phone;
		this.address = address;
		this.email = email;
		this.status = status;
		this.report_count = report_count;
		this.grade = grade;
	}
	
	
	
	
	
	
	public int getM_no() {
		return m_no;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getReport_count() {
		return report_count;
	}
	public void setReport_count(int report_count) {
		this.report_count = report_count;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}


	
	
	
}
