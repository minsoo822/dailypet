package com.dailypet.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService{

	@Autowired
	CodeDao dao;

	@Override
	public List<Code> selectList(CodeVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override
	public Code selectOne(CodeVo vo) throws Exception {
		return dao.selectOne(vo);
	}

	@Override
	public int selectOneCount(CodeVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	
	@Override
	public List<Code> selectcgName(CodeVo vo) throws Exception {
		return dao.selectcgName(vo);
	}
	
	@Override
	public int insert(Code dto) throws Exception {
		return dao.insert(dto);
	}
	
	@Override
	public int update(Code dto) throws Exception {
		return dao.update(dto);
	}
	
	@Override
	public int uelete(Code dto) throws Exception {
		return dao.uelete(dto);
	}
	
	@Override
	public int delete(CodeVo vo) throws Exception {
		return dao.delete(vo);
	}

	
}
