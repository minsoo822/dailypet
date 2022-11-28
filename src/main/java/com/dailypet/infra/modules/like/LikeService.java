package com.dailypet.infra.modules.like;

import java.util.List;

public interface LikeService {

	public int diaryLikeInst(Like dto) throws Exception;
	public int diaryLikeDel(Like dto) throws Exception;
	public int likeCount(Like dto) throws Exception;
	public List<Like> selectList(Like dto) throws Exception;
}
