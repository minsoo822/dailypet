package com.dailypet.infra.modules.animal;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.dailypet.infra.common.util.UtilUpload;

@Service
public class AnimalServiceImpl implements AnimalService{

	@Autowired
	AnimalDao dao;
	
	@Override
	public List<Animal> selectList(AnimalVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override 
	public Animal selectOne(AnimalVo vo) throws Exception {
		return dao.selectOne(vo);
	}
	
	@Override 
	public int selectOneCount(AnimalVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	
	@Override
	public int animalInsert(Animal dto) throws Exception {
		
		dto.setIfmmSeq(dao.selectLastSeq(dto));
		
		return dao.animalInsert(dto);
	}
	
	@Override
	public int petimgInsert(Animal dto) throws Exception {
		
		//여기부터 파일
        String seq = dao.petLastSeq(dto); //seq 자동으로 부여되기때문

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
	
	@Override
	public int petImgUpdate(Animal dto) throws Exception {
		
		//여기부터 파일
        String seq = dao.petLastSeq(dto); //seq 자동으로 부여되기때문

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

                dao.petImgUpdate(dto);
                j++;
            }
        }
		return 0;
	}
	
	//펫정보수정
	@Override
	public int petUpdate(Animal dto) throws Exception {
		
		return dao.petUpdate(dto);
	}
	
	@Override
	public List<Animal> selectPhoto(AnimalVo vo) throws Exception {
		return dao.selectPhoto(vo);
	}
	
	@Override
	public List<Animal> selectWith(AnimalVo vo) throws Exception {
		return dao.selectWith(vo);
	}
	
	@Override
	public int xdminInsert(Animal dto) throws Exception {

		return dao.xdminInsert(dto);
	}
	
	@Override
	public int xdminUpdate(Animal dto) throws Exception {
		
        return dao.xdminUpdate(dto);
	}
	
}