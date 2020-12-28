package com.kh.board.model.vo;

import java.util.Date;

public class Attachment {
	private int fileNo; // 파일 고유 번호
	private String originName; // 파일 원본명
	private String changeName; // 파일 수정명
	private Date uploadDate; // 파일 업로드일
	private String filePath; // 파일이 저장된 폴더 경로
	private String status; // 파일 상태값
	private String fileThumnail; // 파일이 저장된 폴더 경로
	private int refBoardNo; // 참조하고 있는 게시글 번호
	private int shopNo; // 참조하고 있는 가게 번호
	
	public Attachment() {

	}
	
	public Attachment(int fileNo, String originName, String changeName, Date uploadDate, String filePath, String status,
			String fileThumnail, int refBoardNo, int shopNo) {
		super();
		this.fileNo = fileNo;
		this.originName = originName;
		this.changeName = changeName;
		this.uploadDate = uploadDate;
		this.filePath = filePath;
		this.status = status;
		this.fileThumnail = fileThumnail;
		this.refBoardNo = refBoardNo;
		this.shopNo = shopNo;
	}

	public int getFileNo() {
		return fileNo;
	}

	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public String getChangeName() {
		return changeName;
	}

	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}

	public Date getUploadDate() {
		return uploadDate;
	}

	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getFileThumnail() {
		return fileThumnail;
	}

	public void setFileThumnail(String fileThumnail) {
		this.fileThumnail = fileThumnail;
	}

	public int getRefBoardNo() {
		return refBoardNo;
	}

	public void setRefBoardNo(int refBoardNo) {
		this.refBoardNo = refBoardNo;
	}

	public int getShopNo() {
		return shopNo;
	}

	public void setShopNo(int shopNo) {
		this.shopNo = shopNo;
	}

	@Override
	public String toString() {
		return "Attachment [fileNo=" + fileNo + ", originName=" + originName + ", changeName=" + changeName
				+ ", uploadDate=" + uploadDate + ", filePath=" + filePath + ", status=" + status + ", fileThumnail="
				+ fileThumnail + ", refBoardNo=" + refBoardNo + ", shopNo=" + shopNo + "]";
	}


}
