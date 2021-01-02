package com.kh.shop.model.vo;

import java.util.Date;

public class Shop {
     private int shopNo;
     private String shopTitle;
     private String shopContent;
     private String phoneNo;
 	private int readCount; // 게시글 조회수
 	private int likeCount; // 게시글 조아요수
 	private Date createDate; // 게시글 작성일 
	private String shopWriter; // 게시글 작성자 (번호 또는 이름)
	private String status; // 게시글 상태값(Y, N)
	private int shopWriterNo;
	private String titleImg;
	private double lat; //위도
	private double lon; //경도
	
 	 private String region1;
 	 private String region2;
 	 private String detailLocation;
 	//SHOP_NUMBER, SHOP_TITLE, SHOP_CONTENT, SHOP_LOCATION,
 	//SHOP_PHONENO, SHOP_READ_COUNT, SHOP_LIKE_COUNT, SHOP_WRITE_DATE, SHOP_STATUS, M_NO,REGION1, REGION2, DETAILLOCATION
  	 
  	 
 	public Shop() {
 		
 	}

   
	public Shop(int shopNo, String shopTitle, String shopContent, String phoneNo, int readCount, Date createDate, String detailLocation,
			String shopWriter) {
		super();
		this.shopNo = shopNo;
		this.shopTitle = shopTitle;
		this.shopContent = shopContent;
		this.phoneNo = phoneNo;
		this.readCount = readCount;
		this.createDate = createDate;
		this.shopWriter = shopWriter;
		this.detailLocation = detailLocation;
	}


	public Shop(int shopNo, String shopTitle, String shopContent, String phoneNo, int readCount, int likeCount,
			Date createDate, String shopWriter, String status, int shopWriterNo, String titleImg, double lat,
			double lon, String region1, String region2, String detailLocation) {
		super();
		this.shopNo = shopNo;
		this.shopTitle = shopTitle;
		this.shopContent = shopContent;
		this.phoneNo = phoneNo;
		this.readCount = readCount;
		this.likeCount = likeCount;
		this.createDate = createDate;
		this.shopWriter = shopWriter;
		this.status = status;
		this.shopWriterNo = shopWriterNo;
		this.titleImg = titleImg;
		this.lat = lat;
		this.lon = lon;
		this.region1 = region1;
		this.region2 = region2;
		this.detailLocation = detailLocation;
	}


	public Shop(int shopNo, String shopTitle, String shopContent, String phoneNo, int readCount, Date createDate,
			String shopWriter, int shopWriterNo, String titleImg) {
		super();
		this.shopNo = shopNo;
		this.shopTitle = shopTitle;
		this.shopContent = shopContent;
		this.phoneNo = phoneNo;
		this.readCount = readCount;
		this.createDate = createDate;
		this.shopWriter = shopWriter;
		this.shopWriterNo = shopWriterNo;
		this.titleImg = titleImg;
	}


	public int getShopNo() {
		return shopNo;
	}


	public void setShopNo(int shopNo) {
		this.shopNo = shopNo;
	}


	public String getShopTitle() {
		return shopTitle;
	}


	public void setShopTitle(String shopTitle) {
		this.shopTitle = shopTitle;
	}


	public String getShopContent() {
		return shopContent;
	}


	public void setShopContent(String shopContent) {
		this.shopContent = shopContent;
	}


	public String getPhoneNo() {
		return phoneNo;
	}


	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}


	public int getReadCount() {
		return readCount;
	}


	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}


	public int getLikeCount() {
		return likeCount;
	}


	public void setLikeCount(int likeCount) {
		this.likeCount = likeCount;
	}


	public Date getCreateDate() {
		return createDate;
	}


	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}


	public String getShopWriter() {
		return shopWriter;
	}


	public void setShopWriter(String shopWriter) {
		this.shopWriter = shopWriter;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public int getShopWriterNo() {
		return shopWriterNo;
	}


	public void setShopWriterNo(int shopWriterNo) {
		this.shopWriterNo = shopWriterNo;
	}


	public String getTitleImg() {
		return titleImg;
	}


	public void setTitleImg(String titleImg) {
		this.titleImg = titleImg;
	}


	public double getLat() {
		return lat;
	}


	public void setLat(double lat) {
		this.lat = lat;
	}


	public double getLon() {
		return lon;
	}


	public void setLon(double lon) {
		this.lon = lon;
	}


	public String getRegion1() {
		return region1;
	}


	public void setRegion1(String region1) {
		this.region1 = region1;
	}


	public String getRegion2() {
		return region2;
	}


	public void setRegion2(String region2) {
		this.region2 = region2;
	}


	public String getDetailLocation() {
		return detailLocation;
	}


	public void setDetailLocation(String detailLocation) {
		this.detailLocation = detailLocation;
	}


	@Override
	public String toString() {
		return "Shop [shopNo=" + shopNo + ", shopTitle=" + shopTitle + ", shopContent=" + shopContent + ", phoneNo="
				+ phoneNo + ", readCount=" + readCount + ", likeCount=" + likeCount + ", createDate=" + createDate
				+ ", shopWriter=" + shopWriter + ", status=" + status + ", shopWriterNo=" + shopWriterNo + ", titleImg="
				+ titleImg + ", lat=" + lat + ", lon=" + lon + ", region1=" + region1 + ", region2=" + region2
				+ ", detailLocation=" + detailLocation + "]";
	}





 	 
}