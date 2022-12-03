package com.dailypet.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/codegroup/")

public class CodeGroupController {
	
	@Autowired
	CodeGroupServiceImpl service;
	
	public void setSearchAndPaging(CodeGroupVo vo) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));
		vo.setShOptionDate(vo.getShOptionDate() == null ? 0 : vo.getShOptionDate());
	}

	@RequestMapping(value = "codegroupList")
	public String selectList(CodeGroupVo vo, Model model) throws Exception {
		
		setSearchAndPaging(vo);
		
		if(vo.getTotalRows() > 0) {
			List<CodeGroup> list = service.selectList(vo);
			model.addAttribute("list", list);
		}
		
		return "infra/codegroup/xdmin/codegroupList";
	}
	
	@RequestMapping(value = "codegroupForm")
	public String codegroupForm(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		
		CodeGroup result = service.selectOne(vo);
		model.addAttribute("item", result);
		
		return "infra/code/xdmin/codegroupForm";
	}
	
	@RequestMapping(value = "codeInst")
	public String codegroupInst(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		
		vo.setIfcgSeq(dto.getIfcgSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/codegroup/codegroupForm";
	}
	
	@SuppressWarnings(value = { "all" })
	@RequestMapping(value = "codegroupUpdt")
	public String codegroupUpdt(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.update(dto);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/codegroup/codegroupForm";
	}
	
	@RequestMapping(value = "codegroupUele")
	public String codegroupUele(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.uelete(dto);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/codegroup/codegroupList";
	}
	
	@RequestMapping(value = "codegroupDele")
	public String codegroupDele(@ModelAttribute("vo") CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.delete(vo);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/codegroup/codegroupList";
	}
	
}
