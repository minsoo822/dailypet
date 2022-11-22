package com.dailypet.infra.modules.comment;

public interface CommentService {

	// 댓글
	public int commentInst(Comment dto) throws Exception;
	public Comment commentOne(Comment dto) throws Exception;
	
}
