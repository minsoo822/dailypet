package com.dailypet.infra.modules.findpet;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.dailypet.infra.common.util.UtilUpload;

@Service
public class FindpetServiceImpl implements FindpetService{

	@Autowired
	FindpetDao dao;

	@Override
	public List<Findpet> selectList(FindpetVo vo) throws Exception {
		return dao.selectList(vo);
	}

	@Override
	public int findPetInst(Findpet dto) throws Exception {
		int findPetInst = dao.findPetInst(dto);
		int j = 0;
        for(MultipartFile myFile : dto.getFindpet_img()) {

            if(!myFile.isEmpty()) {
                // postServiceImpl
                String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
                
//                		MemberServiceImpl.java  ->	 MemberServiceImpl -> ""  ->	 memberserviceimpl -> 	member
                UtilUpload.uploadFindpet(myFile, pathModule, dto);
                    
                dto.setType(1);
                dto.setDefaultNy(j == 0 ? 1 : 0);
                dto.setSort(j+1);
                dto.setPseq(dto.getIfmmSeq());

                dao.findPetImgInst(dto);
                j++;
            }
        }
		
		return findPetInst;
	}
	
	
}
