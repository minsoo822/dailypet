package com.dailypet.infra.modules.follow;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class FollowController {
	
	@Autowired
	FollowServiceImpl service;
	
	@ResponseBody
	@RequestMapping(value = "/insertFollow")
	public Map<String, Object> insertFollow(Follow dto) throws Exception {
		Map<String, Object> result = new HashMap<String, Object>();
		
		service.insertFollow(dto);
		
		int count = service.selectCountFollowed(dto.getIffwFollow());
		result.putIfAbsent("followCount", count);
		return result;
	}
	@ResponseBody
	@RequestMapping(value = "/deleteFollow")
	public Map<String, Object> deleteFollow(Follow dto) throws Exception {
		Map<String, Object> result = new HashMap<String, Object>();
		
		service.deleteFollow(dto);
		
		int count = service.selectCountFollowed(dto.getIffwFollow());
		result.put("followCount", count);
		return result;
	}

}
