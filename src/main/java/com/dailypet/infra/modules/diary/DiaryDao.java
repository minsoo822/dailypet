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
	
	public Diary selectOne(DiaryVo vo) throws Exception {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
//-----------------------------------------------------------------------------------	
//	일기Inst
	public int insertDiary(Diary dto) throws Exception { return sqlSession.insert(namespace + ".insertDiary", dto); }
	public int insertPetUpload(Diary dto) { return sqlSession.insert(namespace + ".insertPetUpload" , dto);}
//-----------------------------------------------------------------------------------
	public List<Diary> mypageImageList(DiaryVo vo) throws Exception {
		return sqlSession.selectList(namespace + ".mypageImageList", vo);
	}
	public List<Diary> mypageDetailList(DiaryVo vo) throws Exception {
		return sqlSession.selectList(namespace + ".mypageDetailList", vo);
	}
	
	public Diary selectOnePost(Diary dto) { return sqlSession.selectOne(namespace + ".selectOnePost", dto); }
	
//	댓글
	public int insertComment(Diary dto) { return sqlSession.insert(namespace + ".insertComment", dto); }
	public Diary commentOne(Diary dto) { return sqlSession.selectOne(namespace + ".commentOne", dto); }
	
}
