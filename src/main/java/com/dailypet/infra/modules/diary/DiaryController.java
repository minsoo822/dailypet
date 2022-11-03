package com.dailypet.infra.modules.diary;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/diary/")
public class DiaryController {
	
	@Autowired
	DiaryServiceImpl service;
	
	
	@RequestMapping(value = "DiaryList")
	public String selectList(DiaryVo vo, Model model) throws Exception {
		List<Diary> list = service.seleList(vo);
		model.addAttribute("list", list);
		
		return "infra/diary/user/diaryList";
	}
	
}
