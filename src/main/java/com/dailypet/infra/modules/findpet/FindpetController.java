package com.dailypet.infra.modules.findpet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/find/")
public class FindpetController {
	
	public String findpetList() throws Exception {
		return "infra/findpet/user/FindpetList";
	}
	
	

}
