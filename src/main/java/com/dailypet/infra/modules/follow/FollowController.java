package com.dailypet.infra.modules.follow;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FollowController {
	
	@Autowired
	FollowServiceImpl service;
	
	@RequestMapping(value = "Follow")
	public Map<String, Object> insertFollow(Follow dto) throws Exception {
		Map<String, Object> result = new HashMap<String, Object>();
		
		service.insertFollow(dto);
		
		
		return result;
	}

}
