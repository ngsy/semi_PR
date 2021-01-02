package com.kh.shop.model.service;

import java.sql.Connection;
import java.util.ArrayList;
import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import com.kh.member.model.vo.Member;
import com.kh.shop.model.dao.ShopDao;
import com.kh.shop.model.vo.Attachment;
import com.kh.shop.model.vo.Shop;

public class ShopService {

	public ArrayList<Shop> selectShList() {
		Connection conn = getConnection();
		ArrayList<Shop> list =new ShopDao().selectShList(conn);
		
		close(conn);
		return list;
	}



	public int insertShop(Shop s, ArrayList<Attachment> fileList) {
		Connection conn = getConnection();
		
		ShopDao bdao= new ShopDao();
		int result1= bdao.insertShBoard(conn,s);
		int result2=bdao.insertAttachment(conn, fileList);
		
		if(result1>0 && result2>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result1*result2;
	
	}

}
