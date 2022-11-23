package com.dailypet.infra.modules.findpet;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class FindpetDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.dailypet.infra.modules.findpet.FindpetMapper";
	
	public List<Findpet> selectList(FindpetVo vo) throws Exception { return sqlSession.selectList(namespace + ".selectList", vo); }
	public Findpet selectOne(FindpetVo vo) throws Exception{ return sqlSession.selectOne(namespace + ".selectOne", vo); }
	
	//등록
	public int findPetInst(Findpet dto) throws Exception { return sqlSession.insert(namespace + ".findPetInst", dto); }
	public int findPetImgInst(Findpet dto) throws Exception { return sqlSession.insert(namespace + ".findPetImgInst", dto); }
	//댓글
	public List<Findpet> commentList(FindpetVo vo) throws Exception { return sqlSession.selectList(namespace + ".commentList", vo); }
	public int comentInst(Findpet dto) throws Exception { return sqlSession.insert(namespace + ".comentInst", dto); }
	public Findpet comentOne(Findpet dto) { return sqlSession.selectOne(namespace + ".comentOne", dto); }
}
