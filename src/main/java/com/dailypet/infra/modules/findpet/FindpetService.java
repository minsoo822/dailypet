package com.dailypet.infra.modules.findpet;

import java.util.List;

public interface FindpetService {
	
	public List<Findpet> selectList(FindpetVo vo) throws Exception;
	public Findpet selectOne(FindpetVo vo) throws Exception;
	
	public int findPetInst(Findpet dto) throws Exception;
	public int findPetUpdt(Findpet dto) throws Exception;
	
	//댓글
	public List<Findpet> commentList(FindpetVo vo) throws Exception;
	public int commentInst(Findpet dto) throws Exception;
	public Findpet commentOne(Findpet dto) throws Exception;

	//유기동물 등록 시 품종 추가
	public List<Findpet> BreedAdd(FindpetVo vo) throws Exception;
	//페이징
	public int selectOneCount(FindpetVo vo) throws Exception;
	
	//지역 탭
	public List<Findpet> selectKorea(FindpetVo vo) throws Exception;
	public List<Findpet> selectSeoul(FindpetVo vo) throws Exception;
	public List<Findpet> selectGyeonggi(FindpetVo vo) throws Exception;
	public List<Findpet> selectIncheon(FindpetVo vo) throws Exception;
	public List<Findpet> selectGangwon(FindpetVo vo) throws Exception;
	public List<Findpet> selectBusan(FindpetVo vo) throws Exception;
	public List<Findpet> selectDaegu(FindpetVo vo) throws Exception;
	public List<Findpet> selectDaejeon(FindpetVo vo) throws Exception;
	public List<Findpet> selectGwangju(FindpetVo vo) throws Exception;
	public List<Findpet> selectUlsan(FindpetVo vo) throws Exception;
	public List<Findpet> selectSejong(FindpetVo vo) throws Exception;
	public List<Findpet> selectChungbuk(FindpetVo vo) throws Exception;
	public List<Findpet> selectChungnam(FindpetVo vo) throws Exception;
	public List<Findpet> selectGyeongbuk(FindpetVo vo) throws Exception;
	public List<Findpet> selectGyeongnam(FindpetVo vo) throws Exception;
	public List<Findpet> selectJeonbuk(FindpetVo vo) throws Exception;
	public List<Findpet> selectJeonnam(FindpetVo vo) throws Exception;
	public List<Findpet> selectJeju(FindpetVo vo) throws Exception;
}
