package com.dailypet.infra.modules.diary;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
//--------------------------------------------------------------------------------------------------------------------------
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
//-------------------------------------------------------------------------------
	@ResponseBody
	@RequestMapping(value = "getPost")
	public Map<String, Object> getPost(HttpSession httpSession, Diary dto, Model model) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		Diary item = service.selectOnePost(dto);
		
		result.put("userImg" ,item.getMmPath() + item.getMmuuidName());
		result.put("diaryImg" ,item.getDiPath() + item.getDiuuidName());
		result.put("userID" ,item.getIfmmID());
		result.put("diaryContents" ,item.getIfdaContents());
		result.put("regDate" ,item.getIfdaRegDate());
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value = "insertComment")
	public Map<String, Object> insertComment(Diary dto) throws Exception {
		Map<String, Object> result = new HashMap<String, Object>();
		
		int insertComment = service.insertComment(dto);
		
		Diary commentItem = service.commentOne(dto);
		result.put("coUserImg", commentItem.getMmPath() + commentItem.getMmuuidName());
		result.put("coUserid", commentItem.getIfmmID());
		result.put("comment", commentItem.getIfdaContents());
		return result;
	}
	
//	@ResponseBody
//	@RequestMapping(value = "addLiked")
//	public Map<String,Object> addLiked(Diary dto) throws Exception{
//		
//		Map<String,Object> result = new HashMap<String,Object>();
//		
//		service.addLiked(dto);
//		
//		return result;
//	}
//	
//	
//	
//
//	@ResponseBody
//	@RequestMapping(value = "removeLiked")
//	public Map<String,Object> removeLiked(Diary dto) throws Exception{
//		
//		Map<String,Object> result = new HashMap<String,Object>();
//		
//		service.removeLiked(dto);
//		
//		return result;
//	}
	
	
}
