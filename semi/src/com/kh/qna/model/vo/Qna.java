package com.kh.qna.model.vo;

import java.util.Date;

public class Qna {
	private int qnaNo; //고유번호
	private String qnaTitie; //제목
	private String qnaContent; //내용
	private Date qnaDate; //작성일
	private String qnaWriter; // 작성자 (번호 또는 이름)
	private String qnastatus; // 상태값(Y, N)
	
	public Qna() {
		
	}
	public Qna(int qnaNo, String qnaTitie, String qnaContent, Date qnaDate, String qnaWriter, String qnastatus) {
		super();
		this.qnaNo = qnaNo;
		this.qnaTitie = qnaTitie;
		this.qnaContent = qnaContent;
		this.qnaDate = qnaDate;
		this.qnaWriter = qnaWriter;
		this.qnastatus = qnastatus;
	}
	
	public Qna(int qnaNo, String qnaTitie, String qnaContent, Date qnaDate, String qnaWriter) {
		super();
		this.qnaNo = qnaNo;
		this.qnaTitie = qnaTitie;
		this.qnaContent = qnaContent;
		this.qnaDate = qnaDate;
		this.qnaWriter = qnaWriter;
	}
	public int getQnaNo() {
		return qnaNo;
	}
	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}
	public String getQnaTitie() {
		return qnaTitie;
	}
	public void setQnaTitie(String qnaTitie) {
		this.qnaTitie = qnaTitie;
	}
	public String getQnaContent() {
		return qnaContent;
	}
	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}
	public Date getQnaDate() {
		return qnaDate;
	}
	public void setQnaDate(Date qnaDate) {
		this.qnaDate = qnaDate;
	}
	public String getQnaWriter() {
		return qnaWriter;
	}
	public void setQnaWriter(String qnaWriter) {
		this.qnaWriter = qnaWriter;
	}
	public String getQnastatus() {
		return qnastatus;
	}
	public void setQnastatus(String qnastatus) {
		this.qnastatus = qnastatus;
	}
	@Override
	public String toString() {
		return "Qna [qnaNo=" + qnaNo + ", qnaTitie=" + qnaTitie + ", qnaContent=" + qnaContent + ", qnaDate=" + qnaDate
				+ ", qnaWriter=" + qnaWriter + ", qnastatus=" + qnastatus + "]";
	}
	
	
	
	
}
