package com.kh.chat.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.chat.model.dao.ChatDao;
import com.kh.chat.model.vo.ChatRoom;
public class ChatService {

	public ArrayList<ChatRoom> getChatRoomList(int mno) {
		
		Connection conn=getConnection();
		
		ArrayList<ChatRoom> list=new ChatDao().getChatRoomList(conn,mno);
		
		close(conn);
		
		
		
		return list;
	}

}
