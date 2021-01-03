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

import com.kh.chat.model.vo.Chat;
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
	public void setLastChat(Connection conn,ChatRoom cr) {
		
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		
		String sql=prop.getProperty("setLastChat");
		
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setInt(1, cr.getcRNO());
			
			rset=pstmt.executeQuery();
			while(rset.next()) {
				cr.setLastChat(rset.getString(1));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			close(pstmt);
			close(rset);
		}
		
		
		
	}
	public void setUnreadCount(Connection conn, ChatRoom cr) {
		
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		
		String sql=prop.getProperty("setUnreadCount");
		
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setInt(1, cr.getcRNO());
			pstmt.setInt(2, cr.getMno1());
			
			rset=pstmt.executeQuery();
			while(rset.next()) {
				cr.setUnreadCount(rset.getInt(1));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			close(pstmt);
			close(rset);
		}
		
		
	}
	public ArrayList<Chat> getChatList(Connection conn, int mno, int mno2) {
		
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		
		ArrayList<Chat> list=new ArrayList<Chat>();
		Chat c=null;
		String sql=prop.getProperty("getChatList");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, mno);
			pstmt.setInt(2, mno2);
			pstmt.setInt(3, mno2);
			pstmt.setInt(4, mno);
			
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				c=new Chat();
				//CHAT_CONTENT,CHAT_TIME,CR_NO,CHAT_RECEIVER,CHAT_SENDER,CHAT_READ_STATUS
				
				c.setChatContent(rset.getString("CHAT_CONTENT"));
				c.setChatDate(rset.getString(2));
				c.setCrno(rset.getInt("CR_NO"));
				c.setChatReceiver(rset.getInt("CHAT_RECEIVER"));
				c.setChatSender(rset.getInt("CHAT_SENDER"));
				c.setReadStatus(rset.getString("CHAT_READ_STATUS"));
				list.add(c);
				
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
