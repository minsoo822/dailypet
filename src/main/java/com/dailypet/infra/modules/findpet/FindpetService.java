package com.dailypet.infra.modules.findpet;

import java.util.List;

public interface FindpetService {
	
	public List<Findpet> selectList(FindpetVo vo) throws Exception;
	public Findpet selectOne(FindpetVo vo) throws Exception;
	
	public int findPetInst(Findpet dto) throws Exception;
	
	//댓글
	public List<Findpet> commentList(FindpetVo vo) throws Exception;
	public int comentInst(Findpet dto) throws Exception;
	public Findpet comentOne(Findpet dto) throws Exception;

}
