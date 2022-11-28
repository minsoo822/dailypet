package com.dailypet.infra.modules.like;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class LikeDao {
	@Inject
	@Resource(name = "sqlSession")
	private  SqlSession sqlSession;
	
	private static String namespace = "com.dailypet.infra.modules.like.LikeMapper";
	
	public int diaryLikeInst(Like dto) throws Exception {
		return sqlSession.insert(namespace + ".diaryLikeInst", dto);
	}
	public int diaryLikeDel(Like dto) throws Exception {
		return sqlSession.delete(namespace + ".diaryLikeDel", dto);
	}
	public int likeCount(Like dto) throws Exception {
		return sqlSession.selectOne(namespace + ".likeCount", dto);
	}
	public List<Like> selectList(Like dto)throws Exception{
		return sqlSession.selectList(namespace +".selectList", dto);
	}

}
