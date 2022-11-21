package com.dailypet.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.dailypet.infra.common.util.UtilSecurity;
import com.dailypet.infra.common.util.UtilUpload;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	MemberDao dao;
	
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		List<Member> list =	dao.selectList(vo);
		return list;
	}
	
	//회원가입
	@Override
	public int userInsert(Member dto) throws Exception {
		int userInsert = dao.userInsert(dto);
		dto.setIfmmPW(UtilSecurity.encryptSha256(dto.getIfmmPW()));  

        int j = 0;
        for(MultipartFile myFile : dto.getUser_image()) {

            if(!myFile.isEmpty()) {
                // postServiceImpl
                String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
                
//                		MemberServiceImpl.java  ->	 MemberServiceImpl -> ""  ->	 memberserviceimpl -> 	member
                UtilUpload.uploadUser(myFile, pathModule, dto);
                    
                dto.setType(1);
                dto.setDefaultNy(j == 0 ? 1 : 0);
                dto.setSort(j+1);
                dto.setPseq(dto.getIfmmSeq());

                dao.userimgInsert(dto);
                j++;
            }
        }
		return userInsert;
	}
	
//-----------------------------------------------------------------------------------	
	public static String selectOneCachedCode(String ifmmSeq) throws Exception {
		String rt = "";
		for(Member codeRow : Member.cachedCodeArrayList) {
			if (codeRow.getSeq().equals(ifmmSeq)) {
				rt = codeRow.getIfmmName();
			} else {
				// by pass
			}
		}
		return rt;
		
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
	@Override
	public Member selectMypage(MemberVo vo) throws Exception {
		return dao.selectMypage(vo);
	}
	

}