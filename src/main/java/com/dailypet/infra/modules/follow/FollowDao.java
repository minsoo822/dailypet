package com.dailypet.infra.modules.follow;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class FollowDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.dailypet.infra.modules.follow.FollowMapper";
	
	public void insertFollow(Follow dto) throws Exception {
		sqlSession.insert(namespace + ".insertFollow", dto);
	}
}
