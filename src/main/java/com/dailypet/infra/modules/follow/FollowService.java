package com.dailypet.infra.modules.follow;

public interface FollowService {
	
	public void insertFollow(Follow dto) throws Exception;
	public void deleteFollow(Follow dto) throws Exception; 
	public int selectChkFollow(int writer,int reader)throws Exception;
	public int selectCountFollowed(Integer target)throws Exception;
	public int selectCountFollowing(Integer target)throws Exception;
}
