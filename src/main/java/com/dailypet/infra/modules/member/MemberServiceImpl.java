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
	
	@Override
	public Member selectOneID(Member dto) throws Exception {
		return dao.selectOneID(dto);
	}
	
	@Override
	public Member selectOneLogin(Member dto) throws Exception {
		dto.setIfmmPW(UtilSecurity.encryptSha256(dto.getIfmmPW())); 
		return dao.selectOneLogin(dto);
	}
	
	
}
