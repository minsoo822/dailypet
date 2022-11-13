package com.dailypet.infra.modules.findpet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/findpet/")
public class FindpetController {
	
	@RequestMapping(value = "findpetList")
	public String findpetList() throws Exception {
		return "infra/findpet/user/findpetList";
	}
	
	@RequestMapping(value = "findpetView")
	public String findpetView() throws Exception {
		return "infra/findpet/user/findpetView";
	}
	
	@RequestMapping(value = "findpetMod")
	public String findpetMod() throws Exception {
		return "infra/findpet/user/findpetMod";
	}
	
	@RequestMapping(value = "findpetSearchForm")
	public String findpetSearchForm() throws Exception {
		return "infra/findpet/user/findpetSearchForm";
	}
	
	

}
