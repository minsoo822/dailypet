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
	
	public int userimgInsert(Member dto) { 
		return sqlSession.insert(namespace + ".userimgInsert" , dto);
	}
	
	//회원 정보 수정
	public int userUpdate(Member dto) { 
		return sqlSession.update(namespace + ".userUpdate", dto); 
	}
	
	public int userImgUpdate(Member dto) { 
		return sqlSession.update(namespace + ".userImgUpdate" , dto); 
	}
	
	//회원 탈퇴
	public int memberUel(Member dto) {
		return sqlSession.update(namespace + ".memberUel", dto);
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

	public int memberLastSeq(Member dto) {
		return sqlSession.selectOne(namespace + ".memberLastSeq", dto);
	}
	public Member selectMypage(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".selectMypage", vo);
	}
	public Member findId(Member dto) {
		return sqlSession.selectOne(namespace + ".findId", dto);
	}
//-----------------------------------관리자------------------------------------------	
	
	//이미지 가져오기
	public List<Member> selectProfile(MemberVo vo) { 
		return sqlSession.selectList(namespace + ".selectProfile", vo);
	}
	
	public int xdminUpdate(Member dto) {
		return sqlSession.update(namespace + ".xdminUpdate", dto);
	}
	
	public int memberDel(Member dto) {
		return sqlSession.delete(namespace + ".memberDel", dto);
	}
}
