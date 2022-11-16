package com.dailypet.infra.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class MemberDao {


	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.dailypet.infra.modules.member.MemberMapper";
	
	public List<Member> selectList(MemberVo vo){ 
		List<Member> list = sqlSession.selectList("com.dailypet.infra.modules.member.MemberMapper.selectList", vo);
		return list; 
	}
	
	public Member selectOne(MemberVo vo) {
		Member result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result: " + result);
		return result;    //codegroup 객체 하나 리턴
	}
	
	public static String getSessionSeqCore(HttpServletRequest httpServletRequest) {
		HttpSession httpSession =  httpServletRequest.getSession();
		String rtSeq = (String) httpSession.getAttribute("sessSeq");
		return rtSeq;
	}
	
	public int selectOneCount(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
//----------------------------------------------------------------------------------------	
	//회원가입
	public int userInsert(Member dto) {
		return sqlSession.insert(namespace + ".userInsert", dto);
	}
	
	public int animalInsert(Member dto) {
		return sqlSession.insert(namespace + ".animalInsert", dto);
	}
	
	public int userimgInsert(Member dto) { 
		return sqlSession.insert(namespace + ".userimgInsert" , dto);
	}
//----------------------------------------------------------------------------------------	
	//아이디 중복 체크
	public int selectOneCheckId(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneCheckId", dto);
	}
	
	//닉네임 중복 체크
	public int selectOneCheckNick(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneCheckNick", dto);
	}
	
	//로그인
	public Member selectOneLogin(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneLogin", dto);
	}
	
	public Member selectOneID(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneID", dto);
	}
}
