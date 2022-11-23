package com.dailypet.infra.modules.findpet;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/findpet/")
public class FindpetController {
	
	@Autowired
	FindpetServiceImpl service;
	
	@RequestMapping(value = "findpetList")
	public String findpetList(FindpetVo vo, Model model) throws Exception {
		
		List<Findpet> selectList = service.selectList(vo);
		model.addAttribute("list", selectList);
		
		return "infra/findpet/user/findpetList";
	}
	
	@RequestMapping(value = "findpetView")
	public String findpetView(FindpetVo vo, Model model) throws Exception {
		Findpet item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		List<Findpet> commentlist = service.commentList(vo);
		model.addAttribute("commentList", commentlist);
		
		return "infra/findpet/user/findpetView";
	}
	
	@ResponseBody
	@RequestMapping(value = "comentInst")
	public Map<String, Object> comentInst(Findpet dto) throws Exception {
		Map<String, Object> result = new HashMap<String, Object>();
		
		int comentInst = service.comentInst(dto);
		
		Findpet comentItem = service.comentOne(dto);
		
		result.put("img", comentItem.getPath() + comentItem.getUuidName());
		result.put("writer", comentItem.getWriter());
		result.put("comment", dto.getIfcmContent());
		return result;
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
	public String findpetSearchForm(FindpetVo vo, Model model) throws Exception {

		List<Findpet> selectList = service.selectList(vo);
		model.addAttribute("list", selectList);
		
		return "infra/findpet/user/findpetSearchForm";
	}
	
	

}
