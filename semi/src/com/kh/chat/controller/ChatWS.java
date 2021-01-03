package com.kh.chat.controller;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.kh.chat.model.vo.Chat;


//WebSocket의 호스트 주소 설정
@ServerEndpoint(value="/chat",encoders= { ChatEncoder.class})
public class ChatWS {

	
		
		private Map<Integer,Session> getSession= Collections.synchronizedMap(new HashMap<>()); //mno,session
		private Map<Session,Integer> getMno=Collections.synchronizedMap(new HashMap<>());

		private Map<Integer,Integer> getCrno=Collections.synchronizedMap(new HashMap<>()); //mno,crno
	 	
		// WebSocket으로 브라우저가 접속하면 요청되는 함수
		@OnOpen
		public void handleOpen() {
		// 콘솔에 접속 로그를 출력한다.
		System.out.println("ChatWS : client is now connected...");
		}
		
		// WebSocket으로 메시지가 오면 요청되는 함수
		@OnMessage
		public void handleMessage(String message,Session userSession) {
				
			
			
			Gson gson=new GsonBuilder().create();
			Chat chat=gson.fromJson(message, Chat.class);
			System.out.println(chat);
			
			
		}
		
		// WebSocket과 브라우저가 접속이 끊기면 요청되는 함수
		@OnClose
		public void handleClose(Session userSession) {
		// 콘솔에 접속 끊김 로그를 출력한다.
		System.out.println("ChatWS : client is now disconnected...");
		

		
		}
		
		// WebSocket과 브라우저 간에 통신 에러가 발생하면 요청되는 함수.
		@OnError
		public void handleError(Throwable t) {
		// 콘솔에 에러를 표시한다.
		t.printStackTrace();
		}


		
	}


