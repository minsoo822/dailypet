package com.dailypet.infra.modules.comment;

import java.util.List;

public interface CommentService {

	// 댓글
	public List<Comment> commentList(CommentVo vo) throws Exception;
	public int commentInst(Comment dto) throws Exception;
	public Comment commentOne(Comment dto) throws Exception;
	public int commentDel(Comment dto) throws Exception;
}
