package com.kh.chat.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.chat.model.vo.ChatRoom;
import com.kh.member.model.dao.MemberDao;
import static com.kh.common.JDBCTemplate.*;


public class ChatDao {

	private Properties prop = new Properties();
	public ChatDao() {
		
		String fileName = MemberDao.class.getResource("/sql/chat/chat.properties").getPath();
	
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public ArrayList<ChatRoom> getChatRoomList(Connection conn, int mno) {
		
		PreparedStatement pstmt=null;
		ArrayList<ChatRoom> list=new ArrayList<ChatRoom>();
		ChatRoom cr=null;
		ResultSet rset=null;
		
		String sql=prop.getProperty("getChatRoomList");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, mno);
			pstmt.setInt(2, mno);
			pstmt.setInt(3, mno);
			pstmt.setInt(4, mno);
			
			
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				cr=new ChatRoom();
				cr.setMno1(mno);
				//CR_NO,MEMBER_NO , M_NAME
				cr.setcRNO(rset.getInt("CR_NO"));
				cr.setMno2(rset.getInt("MEMBER_NO"));
				cr.setmName(rset.getString("M_NAME"));
				list.add(cr);
				
				
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			close(pstmt);
			close(rset);
		}
		
	
		
		return list;
	}
}
