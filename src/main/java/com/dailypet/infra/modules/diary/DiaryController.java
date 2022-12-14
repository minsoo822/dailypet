package com.dailypet.infra.modules.diary;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dailypet.infra.modules.comment.Comment;
import com.dailypet.infra.modules.comment.CommentServiceImpl;
import com.dailypet.infra.modules.comment.CommentVo;
import com.dailypet.infra.modules.follow.Follow;
import com.dailypet.infra.modules.follow.FollowServiceImpl;
import com.dailypet.infra.modules.like.Like;
import com.dailypet.infra.modules.like.LikeServiceImpl;

@Controller
@RequestMapping(value = "/diary/")
public class DiaryController {
	
	@Autowired
	DiaryServiceImpl service;
	
	@Autowired
	FollowServiceImpl serviceFollow;
	
	@Autowired
	CommentServiceImpl serviceComment;
	
	@Autowired
	LikeServiceImpl serviceLike;
	
	// 일기리스트 
	@RequestMapping(value = "diaryList")
	public String selectList(@ModelAttribute("vo") DiaryVo vo, CommentVo cmvo, Like lidto, Model model, HttpSession httpSession) throws Exception {
		
		vo.setIfmmSeq((String)httpSession.getAttribute("sessSeq"));
		Diary item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		vo.setLoginUser((String)httpSession.getAttribute("sessSeq"));
		List<Diary> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		cmvo.setIfdaSeq(cmvo.getIfdaSeq());
		List<Comment> cmList = serviceComment.commentList(cmvo);
		model.addAttribute("cmList", cmList);
		
//		int count = serviceLike.selectCheckLike(lidto);
//		if(count == 1) {
//			model.addAttribute("like", 1);
//		}
		
		return "infra/diary/user/diaryList";
	}
	
	// 일기폼 
	@RequestMapping(value = "diaryForm")
	public String diaryForm(@ModelAttribute("vo") DiaryVo vo, Model model, HttpSession httpSession) throws Exception {
		
		vo.setIfmmSeq((String)httpSession.getAttribute("sessSeq"));
		Diary item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		return "infra/diary/user/diaryForm";
	}
	
	// 일기Inst
	@RequestMapping(value = "diaryInst")
	public String insertDiary(Diary dto) throws Exception {
				
		service.insertDiary(dto);
		
		return "redirect:/diary/diaryList";
	}
	//일기Del
	@RequestMapping(value = "diaryDel")
	public String diaryDel(Diary dto, Comment cmdto) throws Exception {
		serviceComment.commentDel(cmdto);
		service.diaryDel(dto);
		return "redirect:/diary/diaryList";
	}
	// 일기리스트 디테일 
	@RequestMapping(value = "diaryDetail")
	public String diaryDetail(@ModelAttribute("vo") DiaryVo vo, Model model, HttpSession httpSession ) throws Exception {
	
		// 회원정보
		vo.setIfmmSeq((String)httpSession.getAttribute("sessSeq"));
		Diary item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		// 회원이 올린사진
		List<Diary> list = service.mypageDetailList(vo);
		model.addAttribute("list", list);
		 
		return "infra/diary/user/diaryDetail";
	}
	
	// 나의 일기리스트 
	@RequestMapping(value = "diaryMypage")
	public String diaryMypage(@ModelAttribute("vo") DiaryVo vo, Model model, HttpSession httpSession ) throws Exception {
		
		// 회원정보
		vo.setIfmmSeq((String)httpSession.getAttribute("sessSeq"));
		Diary item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		// 회원이 올린사진
		List<Diary> list = service.mypageImageList(vo);
		model.addAttribute("list", list);
		
		
		return "infra/diary/user/diaryMypage";
	}
	//
	@RequestMapping(value = "diaryUserpage")
	public String diaryUserpage(@ModelAttribute("vo") DiaryVo vo, Follow dto, Model model, HttpSession httpSession ) throws Exception {
		
		// 회원정보
		vo.setLoginUser((String)httpSession.getAttribute("sessSeq"));
		Diary me = service.selectOneImg(vo);
		model.addAttribute("me", me);
		Diary followCheck = service.selectCheckFollow(vo);
		model.addAttribute("follow", followCheck);
		
		Diary item = service.selectOne(vo);
		model.addAttribute("item", item);

		List<Diary> list = service.mypageImageList(vo);
		model.addAttribute("list", list);
		
//		if(serviceFollow.selectChkFollow(Integer.parseInt(vo.getIfmmSeq()), (Integer)httpSession.getAttribute("sessSeq")) == 1) {
//			System.out.println("이사람 팔로우 했네");
//		}
//		int count = serviceFollow.selectChkFollow(Integer.parseInt(vo.getIfmmSeq()), (Integer)httpSession.getAttribute("sessSeq"));
//			if(count == 1) {
//				model.addAttribute("IsFollow", 1);
//			}
		//회원이 올린사진
		
		return "infra/diary/user/diaryUserpage";
	}
	
//--------------------------------------------------------------------------------------------------------------------------
	
	@ResponseBody
	@RequestMapping(value = "getPost")
	public Map<String, Object> getPost(Comment cm,CommentVo cmvo, HttpSession httpSession, Diary dto, Model model) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
				
		
		Diary item = service.selectOnePost(dto);
		
		result.put("ifdaSeq" ,item.getIfdaSeq());
		result.put("userImg" ,item.getMmPath() + item.getMmuuidName());
		result.put("diaryImg" ,item.getDiPath() + item.getDiuuidName());
		result.put("userID" ,item.getIfmmID());
		result.put("diaryContents" ,item.getIfdaContents());
		result.put("regDate" ,item.getIfdaRegDate());
		result.put("likeCount", item.getLikeCount());
		result.put("loginUgerLike", item.getLike_ing());
		
		
		//게시물 댓글
//		
		List<Comment> cmList = serviceComment.commentList(cmvo);
		result.put("cmList", cmList);
//		
//		Comment cmItem = serviceComment.cmItem((Integer.parseInt(dto.getIfdaSeq())));
//
//		result.put("ifdaSeq", cmItem.getIfdaSeq());
//		result.put("ifcmContent", cmItem.getIfcmContent());
//		result.put("ifcmRegDate", cmItem.getIfcmRegDate());
//		result.put("ifmmID", cmItem.getIfmmID());
//		result.put("cmimg", cmItem.getMmPath() + cmItem.getUuidName());

		return result;
	}
	
	// 게시물 좋아요 구현
	@ResponseBody
	@RequestMapping(value = "addLiked")
	public Map<String,Object> addLiked(Like dto) throws Exception{
		
		Map<String,Object> result = new HashMap<String,Object>();
				
		serviceLike.diaryLikeInst(dto);
		
		int likecount = serviceLike.likeCount(dto);
		List<Like> list = serviceLike.selectList(dto);
		
		result.put("likeCount", likecount);
		result.put("list", list);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value = "removeLiked")
	public Map<String,Object> removeLiked(Like dto) throws Exception{
		
		Map<String,Object> result = new HashMap<String,Object>();
		
		serviceLike.diaryLikeDel(dto);
		
		int likecount = serviceLike.likeCount(dto);
		List<Like> list = serviceLike.selectList(dto);
		
		result.put("likeCount", likecount);
		result.put("list", list);
		return result;
	}
	@ResponseBody
	@RequestMapping(value="drListCmInst")
	public Map<String, Object> addComment(Comment dto) throws Exception {
		Map<String, Object> result = new HashMap<String, Object>();
		serviceComment.commentInst(dto);
		
		Comment commentItem = serviceComment.commentOne(dto);
		
		result.put("img", commentItem.getPath() + commentItem.getUuidName());
		result.put("writer", commentItem.getWriter());
		result.put("comment", dto.getIfcmContent());
		return result;
	}
//-------------------------------------------------------------------------------
	@RequestMapping(value = "diaryMypagePrac")
	public String diaryMypagePrac(@ModelAttribute("vo") DiaryVo vo, Model model, HttpSession httpSession ) throws Exception {
		
		// 회원정보
		vo.setIfmmSeq((String)httpSession.getAttribute("sessSeq"));
		Diary item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		// 회원이 올린사진
		List<Diary> list = service.mypageImageList(vo);
		model.addAttribute("list", list);
		
		return "infra/diary/user/diaryMypagePrac";
	}

 
}