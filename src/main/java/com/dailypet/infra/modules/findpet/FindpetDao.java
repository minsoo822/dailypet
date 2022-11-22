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
	
	//등록
	public int findPetInst(Findpet dto) throws Exception { return sqlSession.insert(namespace + ".findPetInst", dto); }
	public int findPetImgInst(Findpet dto) throws Exception { return sqlSession.insert(namespace + ".findPetImgInst", dto); }
}
