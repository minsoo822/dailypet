package com.dailypet.infra.modules.diary;

import java.util.List;

public interface DiaryService {
	
	public List<Diary> seleList(DiaryVo vo) throws Exception;

}
