package com.dailypet.infra.modules.comment;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CommentDao {
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.dailypet.infra.modules.comment.CommentMapper";
	
	public List<Comment> commentList(CommentVo vo) throws Exception {
		return sqlSession.selectList(namespace + ".commentList", vo);
	}
	
	// 댓글
	public int commentInst(Comment dto) { 
		return sqlSession.insert(namespace + ".commentInst", dto); 
	}
	
	public Comment commentOne(Comment dto) { 
		return sqlSession.selectOne(namespace + ".commentOne", dto);
	}
	public Comment cmItem(Comment dto) { 
		return sqlSession.selectOne(namespace + ".cmItem", dto);
	}
	public int commentDel(Comment dto) {
		return sqlSession.delete(namespace + ".commentDel", dto);
	}
}
