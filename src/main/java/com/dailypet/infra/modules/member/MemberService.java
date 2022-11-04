package com.dailypet.infra.modules.member;

import java.util.List;

public interface MemberService {
	
	public List<Member> selectList(MemberVo vo) throws Exception;
	
	//로그인
	public Member selectOneID(Member dto) throws Exception;
	public Member selectOneLogin(Member dto) throws Exception;
}