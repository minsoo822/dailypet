package com.dailypet.infra.modules.findpet;

import java.util.List;

public interface FindpetService {
	
	public List<Findpet> selectList(FindpetVo vo) throws Exception;
	
	public int findPetInst(Findpet dto) throws Exception;

}
