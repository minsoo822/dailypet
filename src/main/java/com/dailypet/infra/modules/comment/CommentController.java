package com.dailypet.infra.modules.comment;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/comment/")
public class CommentController {
	
	@Autowired
	CommentServiceImpl service;
	
	@ResponseBody
	@RequestMapping(value = "commentInst")
	public Map<String, Object> commentInst(Comment dto) throws Exception {
		Map<String, Object> result = new HashMap<String, Object>();
		
		service.commentInst(dto);
		
		Comment commentItem = service.commentOne(dto);
		result.put("img", commentItem.getPath() + commentItem.getUuidName());
		result.put("writer", commentItem.getIfmmID());
		result.put("comment", dto.getIfcmContent());
		
		
		return result;
	}
	
}
