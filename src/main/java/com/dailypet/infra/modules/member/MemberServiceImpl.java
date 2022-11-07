package com.dailypet.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dailypet.infra.common.util.UtilSecurity;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	MemberDao dao;
	
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		List<Member> list =	dao.selectList(vo);
		return list;
	}
	
	//로그인 관련
	@Override
	public Member selectOneID(Member dto) throws Exception {
		return dao.selectOneID(dto);
	}
	
	@Override
	public Member selectOneLogin(Member dto) throws Exception {
		dto.setIfmmPW(UtilSecurity.encryptSha256(dto.getIfmmPW())); 
		return dao.selectOneLogin(dto);
	}
	
	//아이디 중복 체크
	@Override
	public int selectOneCheckId(Member dto) throws Exception {
		return dao.selectOneCheckId(dto);
	}
	
	//닉네임 중복 체크
	@Override
	public int selectOneCheckNick(Member dto) throws Exception {
		return dao.selectOneCheckNick(dto);
	}
}
