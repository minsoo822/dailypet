package com.dailypet.infra.modules.diary;

import java.util.List;

public interface DiaryService {
	
	public List<Diary> selectList(DiaryVo vo) throws Exception;
//	public Diary selectOne(DiaryVo vo) throws Exception;
	
	
}
