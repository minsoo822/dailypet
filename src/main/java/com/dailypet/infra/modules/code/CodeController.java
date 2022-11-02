package com.dailypet.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/code/")
public class CodeController {
	
	@Autowired
	CodeServiceImpl service;
	
	@RequestMapping(value = "CodeList")
	public String selectList(CodeVo vo, Model model) throws Exception {
		
		List<Code> CodeList = service.selectList(vo);
		model.addAttribute("list", CodeList);
		
		return "infra/code/xdmin/codeList";
	}
}
