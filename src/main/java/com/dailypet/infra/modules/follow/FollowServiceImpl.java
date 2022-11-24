package com.dailypet.infra.modules.follow;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FollowServiceImpl implements FollowService{

	@Autowired
	FollowDao dao;

	@Override
	public void insertFollow(Follow dto) throws Exception {
		// TODO Auto-generated method stub
		dao.insertFollow(dto);
	}

	
	
	
}
