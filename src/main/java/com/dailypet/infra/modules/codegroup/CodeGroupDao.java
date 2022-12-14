package com.dailypet.infra.modules.codegroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeGroupDao {

	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.dailypet.infra.modules.codegroup.CodeGroupMapper";
	
	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception {
		return sqlSession.selectList(namespace + ".selectList", vo); 
	}
	
	public CodeGroup selectOne(CodeGroupVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	
	public int selectOneCount(CodeGroupVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
	public int insert(CodeGroup dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}
	
	public int update(CodeGroup dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
	public int uelete(CodeGroup dto) {
		return sqlSession.update(namespace + ".uelete", dto);
	}
	
	public int delete(CodeGroupVo vo) {
		return sqlSession.delete(namespace + ".delete", vo);
	}
}
