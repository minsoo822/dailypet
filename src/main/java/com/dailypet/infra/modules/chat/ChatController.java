package com.dailypet.infra.modules.chat;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value="/chat/")
public class ChatController {
	
	@Autowired
	ChatServiceImpl service;

	@RequestMapping(value="")
	public String chat(HttpSession httpSession,Model model) throws Exception {
		
		List<Chat> list = service.selectChatListFromOne(Integer.parseInt(httpSession.getAttribute("sessSeq").toString()));
		
		model.addAttribute("list", list);
		
		return "infra/chat/user/chat";
	}

	@ResponseBody
	@RequestMapping(value="insChat")
	public Map<String,Object> insChat(HttpSession httpSession,Chat dto) throws Exception {
		
		Map<String,Object> result = new HashMap<String,Object>();
		
		Chat newChat = service.createChat(Integer.parseInt(httpSession.getAttribute("sessSeq").toString()),dto.getCuMember());
		
		if(newChat != null) {
			result.put("rt", "success");
			result.put("newChat", newChat);
		}
		else
			result.put("rt", "fail");
		
		return result;
	}
	
	@RequestMapping(value="instChat")
	public String instChat(HttpSession httpSession,Chat dto,Model model) throws Exception {
		
		List<Chat> list = service.selectChatListFromOne(Integer.parseInt(httpSession.getAttribute("sessSeq").toString()));
		model.addAttribute("list", list);
 
		int Count = service.selectCountChat(dto); 
		System.out.println("Count : " + Count);
		//여기서 list라는 이름으로 attribute를 넘겨줘야 저기 jsp에서 list.어쩌구 로 받아서 쓰지
		// 셋다 있다가 옥상와서 두들겨 맞자 :D
		//addAttribute로 넘겨줘야지
		//챗 리스트랑 뉴 팻을 불러왔으면 
		
		//기존 채팅방이 존재하지 않을때만 채팅방 생성
		if(Count == 0 ) {
			service.createChat(Integer.parseInt(httpSession.getAttribute("sessSeq").toString()),dto.getCuMember());
		}
		 
		return "infra/chat/user/chat";  
	}
}