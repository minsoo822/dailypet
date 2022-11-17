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
	
	/* 일기리스트 */
	@RequestMapping(value = "diaryList")
	public String selectList(@ModelAttribute("vo") DiaryVo vo, Model model, HttpSession httpSession) throws Exception {
		
		vo.setIfmmSeq((String)httpSession.getAttribute("sessSeq"));
		Diary item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		List<Diary> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/diary/user/diaryList";
	}
	
	/* 일기폼 */
	@RequestMapping(value = "diaryForm")
	public String diaryForm(@ModelAttribute("vo") DiaryVo vo, Model model, HttpSession httpSession) throws Exception {
		
		vo.setIfmmSeq((String)httpSession.getAttribute("sessSeq"));
		Diary item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		return "infra/diary/user/diaryForm";
	}
	
	/* 일기폼 */
	@RequestMapping(value = "diaryInst")
	public String insertDiary(Diary dto) throws Exception {
				
		service.insertDiary(dto);
		
		return "redirect:/diary/diaryList";
	}
	
	/* 일기리스트 디테일 */
	@RequestMapping(value = "diaryDetail")
	public String diaryDetail(@ModelAttribute("vo") DiaryVo vo, Model model, HttpSession httpSession ) throws Exception {
//		회원정보
		vo.setIfmmSeq((String)httpSession.getAttribute("sessSeq"));
		Diary item = service.selectOne(vo);
		model.addAttribute("item", item);
//		회원이 올린사진
		List<Diary> list = service.mypageDetailList(vo);
		model.addAttribute("list", list);
		 
		return "infra/diary/user/diaryDetail";
	}
	
	/* 나의 일기리스트 */
	@RequestMapping(value = "diaryMypage")
	public String diaryMypage(@ModelAttribute("vo") DiaryVo vo, Model model, HttpSession httpSession ) throws Exception {
//		회원정보
		vo.setIfmmSeq((String)httpSession.getAttribute("sessSeq"));
		Diary item = service.selectOne(vo);
		model.addAttribute("item", item);
//		회원이 올린사진
		List<Diary> list = service.mypageImageList(vo);
		model.addAttribute("list", list);
		
		return "infra/diary/user/diaryMypage";
	}
	
//------------------------------------------------------------------------------
//	나의 일기리스트
	@RequestMapping(value = "diaryMypage222")
	public String diaryMypage222(@ModelAttribute("vo") DiaryVo vo, Model model, HttpSession httpSession ) throws Exception {
//		회원정보
		vo.setIfmmSeq((String)httpSession.getAttribute("sessSeq"));
		Diary item = service.selectOne(vo);
		model.addAttribute("item", item);
//		회원이 올린사진
		List<Diary> list = service.mypageImageList(vo);
		model.addAttribute("list", list);
		
		return "infra/diary/user/diaryMypage222";
	}
	
	@RequestMapping(value = "diaryMypagePrac")
	public String diaryMypagePrac(@ModelAttribute("vo") DiaryVo vo, Model model, HttpSession httpSession ) throws Exception {
//		회원정보
		vo.setIfmmSeq((String)httpSession.getAttribute("sessSeq"));
		Diary item = service.selectOne(vo);
		model.addAttribute("item", item);
//		회원이 올린사진
		List<Diary> list = service.mypageImageList(vo);
		model.addAttribute("list", list);
		
		return "infra/diary/user/diaryMypagePrac";
	}
}
