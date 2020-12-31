package com.kh.shopInfo.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.kh.common.JDBCTemplate.close;
import com.kh.shopInfo.model.vo.Shop;

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
				s.setReadCount(rset.getInt("SHOP_READ_COUNT"));
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

}
