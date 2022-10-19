package com.dailypet.infra.modules.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/member/")
public class MemberController {
	
	@RequestMapping(value = "index")
	public String index() throws Exception {
		return "infra/member/user/index";
	}

}
