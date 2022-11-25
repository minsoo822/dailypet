package com.dailypet.infra.modules.diary;

import java.util.List;

public interface DiaryService {
	
	public List<Diary> selectList(DiaryVo vo) throws Exception;
	public Diary selectOne(DiaryVo vo) throws Exception;
	
	// 일기 Inst
	public int insertDiary(Diary dto) throws Exception;
	
	public List<Diary> mypageImageList(DiaryVo vo) throws Exception;
	public List<Diary> mypageDetailList(DiaryVo vo) throws Exception;
	public Diary selectOnePost(Diary dto)throws Exception;
	public Diary selectOneImg(DiaryVo vo)throws Exception;
	public Diary selectCheckFollow(DiaryVo vo)throws Exception;
	
	
	// 게시물 좋아요
	public void addLiked(Diary dto) throws Exception; 
	public void removeLiked(Diary dto) throws Exception; 
}
