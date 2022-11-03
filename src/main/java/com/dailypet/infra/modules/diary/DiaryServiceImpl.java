package com.dailypet.infra.modules.diary;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DiaryServiceImpl implements DiaryService{

	@Autowired
	DiaryDao dao;

	@Override
	public List<Diary> seleList(DiaryVo vo) throws Exception {
		return dao.selectList(vo);
	}

	
	
	
	
	
}
