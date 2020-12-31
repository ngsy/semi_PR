package com.kh.shopInfo.model.service;

import java.sql.Connection;
import java.util.ArrayList;
import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import com.kh.shopInfo.model.dao.ShopDao;
import com.kh.shopInfo.model.vo.Shop;

public class ShopService {

	public ArrayList<Shop> selectShList() {
		Connection conn = getConnection();
		ArrayList<Shop> list =new ShopDao().selectShList(conn);
		
		close(conn);
		return list;
	}

}
