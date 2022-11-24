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
	
	public void insertFollow(Follow dto) { sqlSession.insert(namespace + ".insertFollow", dto); }
	public void deleteFollow(Follow dto) { sqlSession.delete(namespace+ ".delete", dto); }
	
	public int selectChkFollow(Follow dto) { return sqlSession.selectOne(namespace+".selectChkFollow", dto); }

	public int selectCountFollowed(Integer target) { return sqlSession.selectOne(namespace + ".selectCountFollowed", target); }

	public int selectCountFollowing(Integer target) { return sqlSession.selectOne(namespace + ".selectCountFollowing", target); }

}
