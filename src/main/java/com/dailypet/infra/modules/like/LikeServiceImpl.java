package com.dailypet.infra.modules.like;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LikeServiceImpl implements LikeService{

	@Autowired
	LikeDao dao;
	
	@Override
	public int diaryLikeInst(Like dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.diaryLikeInst(dto);
	}

	@Override
	public int diaryLikeDel(Like dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.diaryLikeDel(dto);
	}
	@Override
	public int likeCount(Like dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.likeCount(dto);
	}
	@Override
	public List<Like> selectList(Like dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectList(dto);
	}
	
	
	
}
