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
		
		dto.setIfmmSeq(dao.selectLastSeq(dto));
		int animalInsert = dao.animalInsert(dto);
		
		return animalInsert;
	}
	
	@Override
	public int petimgInsert(Animal dto) throws Exception {
		
		//여기부터 파일
        String seq = dao.selectLastSeq(dto); //seq 자동으로 부여되기때문

        int j = 0;
        for(MultipartFile myFile : dto.getPet_image()) {

            if(!myFile.isEmpty()) {
                // postServiceImpl
                String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
                UtilUpload.uploadPet(myFile, pathModule, dto);

                dto.setType(1);
                dto.setDefaultNy(j == 0 ? 1 : 0);
                dto.setSort(j+1);
                dto.setPseq(seq+"");

                dao.petimgInsert(dto);
                j++;
            }
        }
		return 0;
	}
	
}