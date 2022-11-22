package com.dailypet.infra.modules.findpet;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/findpet/")
public class FindpetController {
	
	@Autowired
	FindpetServiceImpl service;
	
	@RequestMapping(value = "findpetList")
	public String findpetList() throws Exception {
		return "infra/findpet/user/findpetList";
	}
	
	@RequestMapping(value = "findpetView")
	public String findpetView() throws Exception {
		return "infra/findpet/user/findpetView";
	}
	
	@RequestMapping(value = "findpetMod")
	public String findpetMod(Findpet dto, HttpSession httpSession) throws Exception {
		
		dto.setIfmmSeq((String)httpSession.getAttribute("sessSeq"));
		
		return "infra/findpet/user/findpetMod";
	}
	
	@RequestMapping(value = "findpetSearchForm")
	public String findpetSearchForm() throws Exception {
		return "infra/findpet/user/findpetSearchForm";
	}
	
	

}
