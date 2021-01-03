package com.kh.chat.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.chat.model.dao.ChatDao;
import com.kh.chat.model.vo.Chat;
import com.kh.chat.model.vo.ChatRoom;
public class ChatService {

	public ArrayList<ChatRoom> getChatRoomList(int mno) {
		
		Connection conn=getConnection();
		
		ArrayList<ChatRoom> list=new ChatDao().getChatRoomList(conn,mno);
		
		if(!list.isEmpty()) {
			
			
			for(ChatRoom cr:list) {
				
				new ChatDao().setLastChat(conn,cr);
				new ChatDao().setUnreadCount(conn, cr);
				
				
				
			}
			
			
			
		}
		
		close(conn);
		
		
		
		return list;
	}

	public ArrayList<Chat> getChatList(int mno, int mno2) {
		Connection conn=getConnection();
		
		ArrayList<Chat> list=new ChatDao().getChatList(conn,mno,mno2);
		
		return list;
	}

}
