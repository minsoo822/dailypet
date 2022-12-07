package com.dailypet.infra.modules.comment;

import java.util.List;

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
	@Override
	public List<Comment> commentList(CommentVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.commentList(vo);
	}
	@Override
	public int commentDel(Comment dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.commentDel(dto);
	}
	@Override
	public Comment cmItem(int i) throws Exception {
		return dao.cmItem(i);
	}
	
}
