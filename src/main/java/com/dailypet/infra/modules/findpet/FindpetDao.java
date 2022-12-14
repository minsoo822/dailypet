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
	
	public List<Findpet> findpetOne(FindpetVo vo) { 
		return sqlSession.selectList(namespace + ".findpetOne", vo);
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
	
	//유기동물 등록 시 지역 등록
	public List<Findpet> AreaAdd(FindpetVo vo) {
		return sqlSession.selectList(namespace + ".AreaAdd", vo);
	}
	
	//유기동물 등록 시 품종 등록
	public List<Findpet> BreedAdd(FindpetVo vo) {
		return sqlSession.selectList(namespace + ".BreedAdd", vo);
	}
	
	//페이징
	public int selectOneCount(FindpetVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount" , vo);
	}
	public int searchCount(FindpetVo vo) {
		return sqlSession.selectOne(namespace + ".searchCount" , vo);
	}
	//지역 탭
	public List<Findpet> selectKorea(FindpetVo vo) throws Exception { 
		return sqlSession.selectList(namespace + ".selectKorea", vo); 
	}
	
	//유기동물 찾기 결과
	public List<Findpet> findpetResult(FindpetVo vo) throws Exception {
		return sqlSession.selectList(namespace + ".findpetResult", vo);
	}
	
	public List<Findpet> xdminList(FindpetVo vo) throws Exception { 
		return sqlSession.selectList(namespace + ".xdminList", vo); 
	}
	
	public int uelete(Findpet dto) {
		return sqlSession.update(namespace + ".uelete", dto);
	}
	
	public int delete(FindpetVo vo) {
		return sqlSession.delete(namespace + ".delete", vo);
	}
	
}
