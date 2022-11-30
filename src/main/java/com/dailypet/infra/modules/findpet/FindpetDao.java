package com.dailypet.infra.modules.findpet;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class FindpetDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.dailypet.infra.modules.findpet.FindpetMapper";
	
	public List<Findpet> selectList(FindpetVo vo) throws Exception { 
		return sqlSession.selectList(namespace + ".selectList", vo); 
	}
	
	public Findpet selectOne(FindpetVo vo) throws Exception{ 
		return sqlSession.selectOne(namespace + ".selectOne", vo); 
	}
	
	//등록
	public int findPetInst(Findpet dto) throws Exception { 
		return sqlSession.insert(namespace + ".findPetInst", dto); 
	}
	public int findPetImgInst(Findpet dto) throws Exception { 
		return sqlSession.insert(namespace + ".findPetImgInst", dto); 
	}
	
	//수정
	public int findPetUpdt(Findpet dto) throws Exception { 
		return sqlSession.insert(namespace + ".findPetUpdt", dto);
	}
	public int findPetImgUpdt(Findpet dto) throws Exception { 
		return sqlSession.insert(namespace + ".findPetImgUpdt", dto);
	}
	
	//댓글
	public List<Findpet> commentList(FindpetVo vo) throws Exception { 
		return sqlSession.selectList(namespace + ".commentList", vo); 
	}
	
	public int commentInst(Findpet dto) throws Exception { 
		return sqlSession.insert(namespace + ".commentInst", dto); 
	}
	
	public Findpet commentOne(Findpet dto) { 
		return sqlSession.selectOne(namespace + ".commentOne", dto);
	}
	
	//유기동물 등록 시 품종 등록
	public List<Findpet> BreedAdd(FindpetVo vo) {
		return sqlSession.selectList(namespace + ".BreedAdd", vo);
	}
	
	//페이징
	public int selectOneCount(FindpetVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount" , vo);
	}
	
	//지역 탭
	public List<Findpet> selectSeoul(FindpetVo vo) throws Exception { 
		return sqlSession.selectList(namespace + ".selectSeoul", vo); 
	}
	public List<Findpet> selectGyeonggi(FindpetVo vo) throws Exception { 
		return sqlSession.selectList(namespace + ".selectGyeonggi", vo); 
	}
	public List<Findpet> selectIncheon(FindpetVo vo) throws Exception { 
		return sqlSession.selectList(namespace + ".selectIncheon", vo); 
	}
	public List<Findpet> selectGangwon(FindpetVo vo) throws Exception { 
		return sqlSession.selectList(namespace + ".selectGangwon", vo); 
	}
	public List<Findpet> selectBusan(FindpetVo vo) throws Exception { 
		return sqlSession.selectList(namespace + ".selectBusan", vo); 
	}
	public List<Findpet> selectDaegu(FindpetVo vo) throws Exception { 
		return sqlSession.selectList(namespace + ".selectDaegu", vo); 
	}
	public List<Findpet> selectDaejeon(FindpetVo vo) throws Exception { 
		return sqlSession.selectList(namespace + ".selectDaejeon", vo); 
	}
	public List<Findpet> selectGwangju(FindpetVo vo) throws Exception { 
		return sqlSession.selectList(namespace + ".selectGwangju", vo); 
	}
	public List<Findpet> selectUlsan(FindpetVo vo) throws Exception { 
		return sqlSession.selectList(namespace + ".selectUlsan", vo); 
	}
	public List<Findpet> selectSejong(FindpetVo vo) throws Exception { 
		return sqlSession.selectList(namespace + ".selectSejong", vo); 
	}
	public List<Findpet> selectChungbuk(FindpetVo vo) throws Exception { 
		return sqlSession.selectList(namespace + ".selectChungbuk", vo); 
	}
	public List<Findpet> selectChungnam(FindpetVo vo) throws Exception { 
		return sqlSession.selectList(namespace + ".selectChungnam", vo); 
	}
	public List<Findpet> selectGyeongbuk(FindpetVo vo) throws Exception { 
		return sqlSession.selectList(namespace + ".selectGyeongbuk", vo); 
	}
	public List<Findpet> selectGyeongnam(FindpetVo vo) throws Exception { 
		return sqlSession.selectList(namespace + ".selectGyeongnam", vo); 
	}
	public List<Findpet> selectJeonbuk(FindpetVo vo) throws Exception { 
		return sqlSession.selectList(namespace + ".selectJeonbuk", vo); 
	}
	public List<Findpet> selectJeonnam(FindpetVo vo) throws Exception { 
		return sqlSession.selectList(namespace + ".selectJeonnam", vo); 
	}
	public List<Findpet> selectJeju(FindpetVo vo) throws Exception { 
		return sqlSession.selectList(namespace + ".selectJeju", vo); 
	}
	
}
