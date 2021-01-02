package com.kh.shop.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.kh.common.JDBCTemplate.close;

import com.kh.shop.model.vo.Attachment;
import com.kh.shop.model.vo.Shop;

public class ShopDao {
	private Properties prop = new Properties();
	
	

	public ShopDao() {
		String fileName = ShopDao.class.getResource("/sql/shop/shop.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	
	public ArrayList<Shop> selectShList(Connection conn) {
		ArrayList<Shop> list = new ArrayList<>();

		PreparedStatement pstmt = null;
		String sql = prop.getProperty("selectShList");
		ResultSet rset = null;

		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			while (rset.next()) {
				Shop s = new Shop();
				s.setShopNo(rset.getInt("SHOP_NUMBER"));
				s.setShopTitle(rset.getString("SHOP_TITLE"));
				s.setDetailLocation(rset.getString("DETAILLOCATION"));
				s.setTitleImg(rset.getString("FILE_CHANGED"));

				list.add(s);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}



	public int insertShBoard(Connection conn, Shop s) {
		int result = 0;

		PreparedStatement pstmt = null;

		String sql = prop.getProperty("insertShBoard");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,s.getShopTitle());
			pstmt.setString(2,s.getShopContent());
			pstmt.setString(3,s.getPhoneNo());
			pstmt.setInt(4, Integer.parseInt(s.getShopWriter()));
			pstmt.setString(5,s.getDetailLocation());
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}


	public int insertAttachment(Connection conn, ArrayList<Attachment> fileList) {
		int result = 0;
		PreparedStatement pstmt = null;

		String sql = prop.getProperty("insertShAttachment");

		for (int i = 0; i < fileList.size(); i++) {
			Attachment at = fileList.get(i);
			try {
				pstmt = conn.prepareStatement(sql);

				pstmt.setString(1, at.getChangeName());
				pstmt.setString(2, at.getOriginName());
				pstmt.setString(3, at.getFilePath());

				result += pstmt.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				close(pstmt);
			}

		}
		return result;
	}


}
