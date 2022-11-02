package com.dailypet.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/codegroup/")
public class CodeGroupController {
	
	@Autowired
	CodeGroupServiceImpl service;

	@RequestMapping(value = "CodeGroupList")
	public String selectList(CodeGroupVo vo, Model model) throws Exception {
		
		List<CodeGroup> CodeGroupList = service.selectList(vo);
		model.addAttribute("list", CodeGroupList);
		
		return "infra/codegroup/xdmin/codegroupList";
	}
	
	
}
