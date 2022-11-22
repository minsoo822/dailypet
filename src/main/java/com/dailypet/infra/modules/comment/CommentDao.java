package com.dailypet.infra.modules.comment;

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
	
//	댓글
	public int commentInst(Comment dto) { 
		return sqlSession.insert(namespace + ".commentInst", dto); 
	}
	
	public Comment commentOne(Comment dto) { 
		return sqlSession.selectOne(namespace + ".commentOne", dto);
		}
	
}
