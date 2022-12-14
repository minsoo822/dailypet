package com.dailypet.infra.modules.member;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dailypet.infra.common.constants.Constants;
import com.dailypet.infra.common.util.UtilCookie;
import com.dailypet.infra.modules.animal.Animal;
import com.dailypet.infra.modules.animal.AnimalServiceImpl;
import com.dailypet.infra.modules.code.CodeServiceImpl;

@Controller
@RequestMapping(value = "/member/")
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	@Autowired
	AnimalServiceImpl service1;
	
	@RequestMapping(value = "login")
	public String login() throws Exception {

		return "infra/member/user/login";
	}
	
	public void setSearchAndPaging(MemberVo vo) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));
		vo.setShOptionDate(vo.getShOptionDate() == null ? 0 : vo.getShOptionDate());
	}
	
	@RequestMapping(value = "memberList")
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		setSearchAndPaging(vo);
		
		if(vo.getTotalRows() > 0) {
			List<Member> list = service.selectList(vo);
			model.addAttribute("list", list);
		}
		
		return "infra/member/xdmin/memberList";
	}
	
	@RequestMapping(value = "memberForm")
	public String memberForm(@ModelAttribute("vo") MemberVo vo, Member dto, Model model) throws Exception {
		
		Member result = service.selectOne(vo);
		model.addAttribute("item", result);
		
		//이미지 가져오기
		dto.setPseq(vo.getIfmmSeq());
				
		List<Member> listimg = service.selectProfile(vo);
		model.addAttribute("listimg", listimg);
		
		return "infra/member/xdmin/memberForm";
	}
	
	// 회원가입
	@RequestMapping(value="allInst")
	public String allInst(Member dto, Animal dto1) throws Exception {
		
		dto.setIfmmEmail(dto.getIfmmEmailID() + "@" + CodeServiceImpl.selectOneCachedCode(dto.getIfmmEmailDomain()));
		
		service.userInsert(dto);
		service1.animalInsert(dto1);
		service1.petimgInsert(dto1);
		
		return "infra/member/user/regDone";
	}
	
	// 회원 탈퇴
	@RequestMapping(value = "memberUel")
	public String memberUel(MemberVo vo, Member dto, HttpSession httpSession,RedirectAttributes redirectAttributes) throws Exception {
		service.memberUel(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		httpSession.invalidate();
		return "infra/member/user/memberDel2";
	}
	
	// 로그인
	@ResponseBody
	@RequestMapping(value = "loginProc")
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		Member rtMember = service.selectOneID(dto);

		if (rtMember != null) {
			Member rtMember2 = service.selectOneLogin(dto);

			if (rtMember2 != null) {

				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); // 60second * 30 = 30minute
				httpSession.setAttribute("sessSeq", rtMember2.getIfmmSeq());
				httpSession.setAttribute("sessId", rtMember2.getIfmmID());

				System.out.println(httpSession.getAttribute("sessSeq"));
				returnMap.put("rt", "success");
			}
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
		
	// 로그아웃
	@ResponseBody
	@RequestMapping(value = "logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		UtilCookie.deleteCookie();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}
	
	//아이디 중복 체크
	@ResponseBody
	@RequestMapping(value = "idCheck")
	public Map<String, Object> checkId(Member dto) throws Exception {

		Map<String, Object> returnMap = new HashMap<String, Object>();

		int result = service.selectOneCheckId(dto);

		if (result > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	
	//닉네임 중복 체크
	@ResponseBody
	@RequestMapping(value = "nickCheck")
	public Map<String, Object> checkNick(Member dto) throws Exception {

		Map<String, Object> returnMap = new HashMap<String, Object>();

		int result = service.selectOneCheckNick(dto);

		if (result > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	
	@RequestMapping(value = "regForm1")
	public String regForm1() throws Exception {

		return "infra/member/user/regForm1";
	}
	
	@RequestMapping(value = "regForm2")
	public String regForm2() throws Exception {

		return "infra/member/user/regForm2";
	}
	
	@RequestMapping(value = "regDone")
	public String regDone() throws Exception {

		return "infra/member/user/regDone";
	} 
	
	@RequestMapping(value = "findID")
	public String findID() throws Exception {

		return "infra/member/user/findID";
	}
	
	@RequestMapping(value = "findPW")
	public String findPW() throws Exception {

		return "infra/member/user/findPW";
	}
	
	@RequestMapping(value = "loginDmin")
	public String loginDmin(HttpSession httpSession) throws Exception {

		httpSession.invalidate();
		return "infra/member/xdmin/loginDmin";
	}
	
	@RequestMapping(value = "memberDel1")
	public String memberDel1(@ModelAttribute("vo") MemberVo vo, Model model, HttpSession httpSession) throws Exception {

		String seq = (String) httpSession.getAttribute("sessSeq");
		vo.setIfmmSeq(seq);
		
		Member result = service.selectOne(vo);
		model.addAttribute("de", result);
		
		return "infra/member/user/memberDel1";
	}
	
	@RequestMapping(value = "memberDel2")
	public String memberDel2() throws Exception {

		return "infra/member/user/memberDel2";
	}
	@RequestMapping(value = "myPage")
	public String myPage(MemberVo vo, Model model, HttpSession httpSession) throws Exception {
		
		String ifmmSeq = (String) httpSession.getAttribute("sessSeq");
		vo.setIfmmSeq(ifmmSeq);
		
		Member selectMypage = service.selectMypage(vo);
		model.addAttribute("item", selectMypage);

		return "infra/member/user/mypage";
	}
	@RequestMapping(value = "mypageMod") 
	public String myPageMod(MemberVo vo, Model model, HttpSession httpSession) throws Exception {
		
		String ifmmSeq = (String) httpSession.getAttribute("sessSeq");
		vo.setIfmmSeq(ifmmSeq);
		
		Member selectMypage = service.selectMypage(vo);
		model.addAttribute("item", selectMypage);

		return "infra/member/user/mypageMod";
	}
	@RequestMapping(value = "allUpdt") 
	public String allUpdt(@ModelAttribute("vo") MemberVo vo, Member dto, Animal dto1, HttpSession httpSession, RedirectAttributes redirectAttributes) throws Exception {
		
		service.userUpdate(dto);
		service1.petUpdate(dto1);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/myPage";
	}
	
	@RequestMapping(value = "changePW")
	public String changePW() throws Exception {

		return "infra/member/user/changePW";
	}
	
	//관리자 회원정보수정
	@RequestMapping(value = "memberUpdt") 
	public String memberUpdt(@ModelAttribute("vo") MemberVo vo, Member dto, Animal dto1, HttpSession httpSession, RedirectAttributes redirectAttributes) throws Exception {
		
		service.xdminUpdate(dto);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/memberForm";
	}
	
	@RequestMapping(value = "memberDele")
	public String memberDele(Member dto, HttpSession httpSession, RedirectAttributes redirectAttributes) throws Exception {
		
		service.memberDel(dto);
		
		return "redirect:/member/memberList";
	}
	
	//카카오로그인
	@ResponseBody
	@RequestMapping(value = "kakaoLoginProc")
	public Map<String, Object> kakaoLoginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member kakaoLogin = service.snsLoginCheck(dto);
		
		 System.out.println("test : " + dto.getToken());
		
		if (kakaoLogin == null) {
			service.kakaoInst(dto);
			
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			// session(dto.getSeq(), dto.getId(), dto.getName(), dto.getEmail(), dto.getUser_div(), dto.getSnsImg(), dto.getSns_type(), httpSession);
           session(dto, httpSession); 
			returnMap.put("rt", "success");
		} else {
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			
			// session(kakaoLogin.getSeq(), kakaoLogin.getId(), kakaoLogin.getName(), kakaoLogin.getEmail(), kakaoLogin.getUser_div(), kakaoLogin.getSnsImg(), kakaoLogin.getSns_type(), httpSession);
			session(kakaoLogin, httpSession);
			returnMap.put("rt", "success");
		}
		return returnMap;
	}

	public void session(Member dto, HttpSession httpSession) {
		httpSession.setAttribute("sessSeq", dto.getIfmmSeq());    
		httpSession.setAttribute("sessId", dto.getIfmmID());
		httpSession.setAttribute("sessName", dto.getIfmmName());
		httpSession.setAttribute("sessEmail", dto.getIfmmEmail());
		httpSession.setAttribute("sessImg", dto.getSnsImg());
	}
	
	@ResponseBody
	@RequestMapping(value = "findId")
	public Map<String, Object> findId(Member dto) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		Member id = service.findId(dto);
		
		if(id != null) {
			result.put("rt", "success");
			result.put("id", id);
		} else {
			result.put("rt", "fail");
		}
		return result;
	}
} 