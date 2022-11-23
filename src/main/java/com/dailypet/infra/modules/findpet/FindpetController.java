package com.dailypet.infra.modules.findpet;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/findpet/")
public class FindpetController {
	
	@Autowired
	FindpetServiceImpl service;
	
	@RequestMapping(value = "findpetList")
	public String findpetList(FindpetVo vo, Model model) throws Exception {
		
		List<Findpet> selectList = service.selectList(vo);
		System.out.println("selectList :" +selectList);
		model.addAttribute("list", selectList);
		
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
	
	@RequestMapping(value = "findpetInst")
	public String findpetInst(Findpet dto, HttpSession httpSession) throws Exception {
		
		dto.setIfmmSeq((String)httpSession.getAttribute("sessSeq"));
		service.findPetInst(dto);
		
		return "redirect:/findpet/findpetList";
	}
	
	@RequestMapping(value = "findpetSearchForm")
	public String findpetSearchForm() throws Exception {
		return "infra/findpet/user/findpetSearchForm";
	}
	
	

}
