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
	public int userInsert(Member dto) throws Exception {
		return dao.userInsert(dto);
	}
	
	public int animalInsert(Member dto) throws Exception {
		int animalInsert = dao.animalInsert(dto);

        int j = 0;
        for(MultipartFile myFile : dto.getPet_image()) {

            if(!myFile.isEmpty()) {
                // postServiceImpl
                String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
                
                UtilUpload.uploadPost1(myFile, pathModule, dto);
                    
                if(myFile.getOriginalFilename().toUpperCase().contains(".MP4") == true ) {
                    dto.setType(3);
                } else {
                    dto.setType(2);
                }
                dto.setDefaultNy(j == 0 ? 1 : 0);
                dto.setSort(j+1);
                dto.setPseq(dto.getIfmmSeq());

                dao.imgInsert(dto);
                j++;
            }
        }
        return animalInsert;
	}
	
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
}
