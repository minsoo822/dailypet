package com.dailypet.infra.modules.diary;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class DiaryDao {

	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.dailypet.infra.modules.diary.DiaryMapper";
	
	public List<Diary> selectList(DiaryVo vo) throws Exception {
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	
//	public Diary selectOne(DiaryVo vo) throws Exception {
//		return sqlSession.selectOne(namespace + ".selectOne", vo);
//	}
	
	
	
}
