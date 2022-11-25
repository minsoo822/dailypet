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
	@RequestMapping(value = "commentInst")
	public Map<String, Object> commentInst(Findpet dto) throws Exception {
		Map<String, Object> result = new HashMap<String, Object>();
		
		int commentInst = service.commentInst(dto);
		
		Findpet commentItem = service.commentOne(dto);
		
		result.put("img", commentItem.getPath() + commentItem.getUuidName());
		result.put("writer", commentItem.getWriter());
		result.put("comment", dto.getIfcmContent());
		return result;
	}
	
	@RequestMapping(value = "findpetMod")
	public String findpetMod(FindpetVo vo, Model model) throws Exception {
		Findpet item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		List<Findpet> list = service.BreedAdd(vo);
		model.addAttribute("list", list);
		
		return "infra/findpet/user/findpetMod";
	}
	
	@RequestMapping(value = "findpetInst")
	public String findpetInst(Findpet dto, HttpSession httpSession) throws Exception {
		
		dto.setIfmmSeq((String)httpSession.getAttribute("sessSeq"));
		service.findPetInst(dto);
		
		return "redirect:/findpet/findpetList";
	}
	
	@RequestMapping(value = "findpetUpdt")
	public String findpetUpdt(Findpet dto, HttpSession httpSession) throws Exception {
		
		dto.setIfmmSeq((String)httpSession.getAttribute("sessSeq"));
		service.findPetUpdt(dto);
		
		return "redirect:/findpet/findpetList";
	}
	
	@RequestMapping(value = "findpetSearchForm")
	public String findpetSearchForm(FindpetVo vo, Model model) throws Exception {

		List<Findpet> selectList = service.selectList(vo);
		model.addAttribute("list", selectList);
		
		return "infra/findpet/user/findpetSearchForm";
	}
	

}
