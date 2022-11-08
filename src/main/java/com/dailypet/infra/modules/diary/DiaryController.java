package com.dailypet.infra.modules.diary;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/diary/")
public class DiaryController {
	
	@Autowired
	DiaryServiceImpl service;
	
//	일기리스트
	@RequestMapping(value = "diaryList")
	public String selectList(@ModelAttribute("vo") DiaryVo vo, Model model) throws Exception {
		List<Diary> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/diary/user/diaryList";
	}
//	일기폼
	@RequestMapping(value = "diaryForm")
	public String diaryForm(DiaryVo vo, Model model) throws Exception {
		
		Diary item = service.selectOne(vo);
		model.addAttribute("item", item);
		System.out.println("item : " + item);
		
		return "infra/diary/user/diaryForm";
	}
	
//	일기폼
	@RequestMapping(value = "diaryInst")
	public String insertDiary(Diary dto, HttpSession httpSession) throws Exception {
		
		dto.setIfmmSeq((String)httpSession.getAttribute("sessSeq"));  
		service.insertDiary(dto);
		
		return "redirect:/diary/diaryForm";
	}
	
	
//	일기리스트 디테일
	@RequestMapping(value = "diaryDetail")
	public String diaryDetail() throws Exception {
		
		return "infra/diary/user/diaryDetail";
	}
//	나의 일기리스트
	@RequestMapping(value = "diaryMypage")
	public String diaryMypage(DiaryVo vo, Model model) throws Exception {
//		Diary item = service.selectOne(vo);
//		model.addAttribute("item", item);
		
		return "infra/diary/user/diaryMypage";
	}
}
