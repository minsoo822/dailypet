package com.dailypet.infra.modules.animal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.dailypet.infra.common.util.UtilUpload;

@Service
public class AnimalServiceImpl implements AnimalService{

	@Autowired
	AnimalDao dao;
	
	@Override
	public int animalInsert(Animal dto) throws Exception {
		int animalInsert = dao.animalInsert(dto);

        int j = 0;
        for(MultipartFile myFile : dto.getPet_image()) {

            if(!myFile.isEmpty()) {
                // postServiceImpl
                String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
                
//                		MemberServiceImpl.java  ->	 MemberServiceImpl -> ""  ->	 memberserviceimpl -> 	member
                UtilUpload.uploadPet(myFile, pathModule, dto);
                    
                dto.setType(2);
                dto.setDefaultNy(j == 0 ? 1 : 0);
                dto.setSort(j+1);
                dto.setPseq(dto.getIfamSeq());

                dao.petimgInsert(dto);
                j++;
            }
        }
		return animalInsert;
	}
	
	@Override
	public int petimgInsert(Animal dto) throws Exception {
		
        int j = 0;
        for(MultipartFile myFile : dto.getPet_image()) {

            if(!myFile.isEmpty()) {
                // postServiceImpl
                String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
                UtilUpload.uploadPet(myFile, pathModule, dto);

                dto.setType(2);
                dto.setDefaultNy(j == 0 ? 1 : 0);
                dto.setSort(j+1);
                dto.setPseq(dto.getIfamSeq());

                dao.petimgInsert(dto);
                j++;
            }
        }
		return 0;
	}
	
}
