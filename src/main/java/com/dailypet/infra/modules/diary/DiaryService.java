package com.dailypet.infra.modules.diary;

import java.util.List;

public interface DiaryService {
	
	public List<Diary> selectList(DiaryVo vo) throws Exception;
	public Diary selectOne(DiaryVo vo) throws Exception;
//	일기Inst
	public int insertDiary(Diary dto) throws Exception;
	
	public List<Diary> mypageImageList(DiaryVo vo) throws Exception;
	public List<Diary> mypageDetailList(DiaryVo vo) throws Exception;
	public Diary selectOnePost(Diary dto)throws Exception;
	
//	댓글
	public int insertComment(Diary dto) throws Exception;
	public Diary commentOne(Diary dto) throws Exception;
	
}
