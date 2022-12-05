package com.dailypet.infra.modules.findpet;

import java.util.List;

public interface FindpetService {
	
	public List<Findpet> selectList(FindpetVo vo) throws Exception;
	public Findpet selectOne(FindpetVo vo) throws Exception;
	
	public int findPetInst(Findpet dto) throws Exception;
	public int findPetUpdt(Findpet dto) throws Exception;
	public int uelete(Findpet dto) throws Exception;
	public int delete(FindpetVo vo) throws Exception;
	
	//댓글
	public List<Findpet> commentList(FindpetVo vo) throws Exception;
	public int commentInst(Findpet dto) throws Exception;
	public Findpet commentOne(Findpet dto) throws Exception;

	//유기동물 등록 시 지역 추가
	public List<Findpet> AreaAdd(FindpetVo vo) throws Exception;
	//유기동물 등록 시 품종 추가
	public List<Findpet> BreedAdd(FindpetVo vo) throws Exception;
	//페이징
	public int selectOneCount(FindpetVo vo) throws Exception;
	
	//지역 탭
	public List<Findpet> selectKorea(FindpetVo vo) throws Exception;
	
	//유기동물 찾기 결과
	public List<Findpet> findpetResult(FindpetVo vo) throws Exception;
	
	public List<Findpet> xdminList(FindpetVo vo) throws Exception;
	public List<Findpet> findpetOne(FindpetVo vo) throws Exception;
	
}