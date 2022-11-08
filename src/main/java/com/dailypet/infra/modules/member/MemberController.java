package com.dailypet.infra.modules.member;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dailypet.infra.common.constants.Constants;


@Controller
@RequestMapping(value = "/member/")
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;

	@RequestMapping(value = "login")
	public String login() throws Exception {

		return "infra/member/user/login";
	}
	
	//회원가입
	@RequestMapping(value="allInst")
	public String allInst(Member dto) throws Exception {
		dto.setIfmmEmail(dto.getIfmmEmailID() + MemberServiceImpl.selectOneCachedCode(dto.getIfmmEmailDomain()));
		
		service.userInsert(dto);
		service.animalInsert(dto);
		
		for (int i = 0; i < dto.getIfamName().length(); i++) {
		}
		
		return "infra/member/user/regDone";
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
	
	@RequestMapping(value = "memberDel1")
	public String memberDel1() throws Exception {

		return "infra/member/user/memberDel1";
	}
	
	
}
