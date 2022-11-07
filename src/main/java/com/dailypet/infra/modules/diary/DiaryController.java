package com.dailypet.infra.modules.diary;

import java.util.List;

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
	@RequestMapping(value = "DiaryList")
	public String selectList(@ModelAttribute("vo") DiaryVo vo, Model model) throws Exception {
		List<Diary> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/diary/user/diaryList";
	}
//	일기폼
	@RequestMapping(value = "DiaryForm")
	public String diaryForm(DiaryVo vo, Model model) throws Exception {
		Diary item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		return "infra/diary/user/diaryForm";
	}
//	일기폼
	@RequestMapping(value = "DiaryInst")
	public String insertDiary(Diary dto) throws Exception {
		int insertDiary = service.insertDiary(dto);
		
		return "redirect:/diary/DiaryList";
	}
	
//	일기리스트 디테일
	@RequestMapping(value = "DiaryDetail")
	public String diaryDetail() throws Exception {
		
		return "infra/diary/user/diaryDetail";
	}
//	나의 일기리스트
	@RequestMapping(value = "DiaryMypage")
	public String diaryMypage(DiaryVo vo, Model model) throws Exception {
//		Diary item = service.selectOne(vo);
//		model.addAttribute("item", item);
		
		return "infra/diary/user/diaryMypage";
	}
}
