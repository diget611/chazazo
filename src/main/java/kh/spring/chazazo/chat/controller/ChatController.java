package kh.spring.chazazo.chat.controller;

import java.security.Principal;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.chat.model.dto.ChatDto;
import kh.spring.chazazo.chat.model.dto.ChatRoomDto;
import kh.spring.chazazo.chat.model.service.ChatService;

@RestController
@RequestMapping("/chat")
public class ChatController {
	
	@Autowired
	private ChatService service;
	@Autowired
	private SimpMessagingTemplate template;
	
	// 관리자 채팅 문의 들어온 방들 확인용
	@GetMapping("/rooms")
	public ModelAndView getChatRoomList(ModelAndView mv) {
		// TODO: chat_room list 받기
		mv.setViewName("chat/rooms");
		return mv;
	}
	
	@GetMapping("/room/{roomIdx}")
	public ModelAndView enterChat(ModelAndView mv, Principal prin, @PathVariable String roomIdx) {
		// TODO: chat_log에서 roomIdx에 맞는 chat_log list 받기
		String username = prin.getName();
		mv.addObject("username", username);
		mv.addObject("roomIdx", roomIdx);
		mv.setViewName("chat/room");
		return mv;
	}
	
	@GetMapping("/room")
	public String createRoom(Principal prin) {
		String result = "";
		String username = prin.getName();
		if(service.hasRoom(username) >= 1) {
			result = service.selectRoom(username);
		} else {
			ChatRoomDto room = new ChatRoomDto();
			Map<String, String> data = new HashMap<String, String>();
			data.put("username", username);
			data.put("idx", room.getIdx());
			if(service.createRoom(data) == 1) result = room.getIdx();
		}
			
		return result;
	}
	
	@MessageMapping("/chat/message")
    public void message(ChatDto chat) {
		if(service.insertChat(chat) == 1) {
			template.convertAndSend("/sub/chat/room/" + chat.getRoomIdx(), chat);			
		} else {
			chat.setChatCon("문제 발생");
			chat.setSender("null");
			template.convertAndSend("/sub/chat/room/" + chat.getRoomIdx(), chat);
		}
    }
	
}
