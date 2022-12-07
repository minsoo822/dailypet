package com.dailypet.infra.modules.member;

import java.util.List;

public interface MemberService {
	
	public List<Member> selectList(MemberVo vo) throws Exception;
	public Member selectMypage(MemberVo vo) throws Exception;
	
	//회원가입
	public int userInsert(Member dto) throws Exception;
	
	//회원정보 수정
	public int userUpdate(Member dto) throws Exception;
	
	//회원 탈퇴
	public int memberUel(Member dto) throws Exception;
	
	//아이디 중복 체크
	public int selectOneCheckId(Member dto) throws Exception;
	
	//닉네임 중복 체크
	public int selectOneCheckNick(Member dto) throws Exception;
	
	//로그인
	public Member selectOneID(Member dto) throws Exception;
	public Member selectOneLogin(Member dto) throws Exception;
	
	public Member selectOne(MemberVo vo) throws Exception;
	
	//관리자 폼 사진
	public List<Member> selectProfile(MemberVo vo) throws Exception;
	
	//관리자 업뎃
	public int xdminUpdate(Member dto) throws Exception;
	
	public int memberDel(Member dto) throws Exception;
}