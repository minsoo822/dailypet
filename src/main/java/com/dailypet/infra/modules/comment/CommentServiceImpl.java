package com.dailypet.infra.modules.comment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentServiceImpl implements CommentService{
	
	@Autowired
	CommentDao dao;
	
	// 댓글
	@Override
	public int commentInst(Comment dto) throws Exception {
		return dao.commentInst(dto);
	}
	@Override
	public Comment commentOne(Comment dto) throws Exception {
		return dao.commentOne(dto);
	}
}
