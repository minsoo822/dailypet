package com.dailypet.infra.modules.diary;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.dailypet.infra.common.util.UtilUpload;

@Service
public class DiaryServiceImpl implements DiaryService{

	@Autowired
	DiaryDao dao;

	@Override
	public List<Diary> selectList(DiaryVo vo) throws Exception {
		return dao.selectList(vo);
	}
	@Override
	public Diary selectOne(DiaryVo vo) throws Exception {
		return dao.selectOne(vo);
	}
//	일기Inst
	@Override
	public int insertDiary(Diary dto) throws Exception {
		return dao.insertDiary(dto);
	}
	
	
	
	
	
	
}
