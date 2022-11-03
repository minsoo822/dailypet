package com.dailypet.infra.modules.animal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/animal/")
public class AnimalController {

	@RequestMapping(value = "home")
	public String home() throws Exception {

		return "infra/animal/user/home";
	}
}
