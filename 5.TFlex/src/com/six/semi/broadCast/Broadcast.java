package com.six.semi.broadCast;

import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/broadcast")
public class Broadcast {
	
	private static Set<Session> clients
		= Collections.synchronizedSet(new HashSet<>());
	
	/*
	 * ServerEndPoint 에서 사용하는 어노테이션 4가지
	 * 
	 * @OnOpen : 서버로 연결요청이 왔을 때
	 * @OnMessage : 서버로 데이터가 전달 되었을 때
	 * @OnError : 서버 통신 수행 중 에러가 발생했을 때
	 * @OnClose : 서버에 연결 종료 요청이 왔을 때
	 */
	
	@OnOpen
	public void onOpen(Session session) throws IOException {
		
		System.out.println(session);
		
		// 기존 사용자 목록에 새로 추가해준다.
		clients.add(session);
		
	}
	
	// 서버로 데이터 요청이 왔을 때
	@OnMessage
	public void onMessage(String msg, Session session) throws IOException {
		
		Date date = new Date();
		SimpleDateFormat sday = new SimpleDateFormat("yyyy/MM/dd");
		SimpleDateFormat stime = new SimpleDateFormat("HH:mm:ss");
		
		String day = sday.format(date);
		String time = stime.format(date);
		
		try(FileWriter fw = new FileWriter(Broadcast.class.getResource("/").getPath() + "chatLog.txt", true)){
			
			fw.write(day + "\n");
			fw.write(time + "\n");
			fw.write(msg);
			fw.write("\n"); // 한줄 띄어쓰기용
			
		} catch (IOException e) {
			
			e.printStackTrace();
			
		}
		System.out.println(msg);
		
		// 사용자가 내용을 전송하는 동안
		// 다른 사용자가 중간에 나가버리거나 
		// 사용자의 목록이 변경되어 버리는 문제가 생기면
		// 전달하는 정보가 틀어질 수 있기 때문에 
		// 동기화 처리를 수행한다.
		
		synchronized(clients) {
			// 현재 연결된 사용자 모두에게 문자 전송하기
			for(Session client: clients) {
				// 나는 빼기
				if(!client.equals(session)) {
					// 실제 데이터 전송부
					client.getBasicRemote().sendText(msg);
				}
			}
		}
	}
	
	@OnError
	public void onError(Throwable e) {
		e.printStackTrace();
	}
	
	// 채팅방 퇴장할 때
	@OnClose
	public void onClose(Session session) {
		clients.remove(session);
	}
	
}




















