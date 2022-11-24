package com.dailypet.infra.modules.follow;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FollowServiceImpl implements FollowService{

	@Autowired
	FollowDao dao;

	@Override
	public void insertFollow(Follow dto) throws Exception {
		dao.insertFollow(dto);
	}
	@Override
	public void deleteFollow(Follow dto) throws Exception {
		dao.deleteFollow(dto);
	}

	@Override
	public int selectChkFollow(int writer, int reader) throws Exception {
		Follow dto = new Follow();
		dto.setIffwFollow(writer);
		dto.setIffwFollower(reader);
		return dao.selectChkFollow(dto);
	}
	@Override
	public int selectCountFollowed(Integer target) throws Exception {
		return dao.selectCountFollowed(target);
	}
	@Override
	public int selectCountFollowing(Integer target) throws Exception {
		return dao.selectCountFollowing(target);
	}
	
	
	
}
