package com.dailypet.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/code/")
public class CodeController {
	
	@Autowired
	CodeServiceImpl service;
	
	@RequestMapping(value = "codeList")
	public String selectList(CodeVo vo, Model model) throws Exception {
		
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/code/xdmin/codeList";
	}
	
	@RequestMapping(value = "codeForm")
	public String codeForm(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		
		Code result = service.selectOne(vo);
		model.addAttribute("item", result);
		
		List<Code> add = service.selectcgName(vo);
		model.addAttribute("add", add);
		
		return "infra/code/xdmin/codeForm";
	}
	
	@RequestMapping(value = "codeInst")
	public String codeInst(CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		
		vo.setIfcdSeq(dto.getIfcdSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/code/codeForm";
	}
	
	@SuppressWarnings(value = { "all" })
	@RequestMapping(value = "codeUpdt")
	public String codeUpdt(CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.update(dto);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/code/codeForm";
	}
	
	@RequestMapping(value = "codeUele")
	public String codeUele(CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.uelete(dto);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/code/codeList";
	}
	
	@RequestMapping(value = "codeDele")
	public String codeDele(@ModelAttribute("vo") CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.delete(vo);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/code/codeList";
	}
}
