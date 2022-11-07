package com.dailypet.infra.modules.diary;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.dailypet.infra.common.util.UtilUpload;

@Service
public class DiaryServiceImpl implements DiaryService{

	@Autowired
	DiaryDao dao;

	@Override
	public List<Diary> selectList(DiaryVo vo) throws Exception {
		return dao.selectList(vo);
	}
	@Override
	public Diary selectOne(DiaryVo vo) throws Exception {
		System.out.println("selectOne : " + dao.selectOne(vo));
		return dao.selectOne(vo);
	}

	@Override
	public int insertDiary(Diary dto) throws Exception {
		int insertDiary = dao.insertDiary(dto);
		int pseq = dao.selectLastSeq();

        int j = 0;
        for(MultipartFile myFile : dto.getDiary_image()) {

            if(!myFile.isEmpty()) {
                // postServiceImpl
                String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
//                		DiaryServiceImpl.java  ->	 DiaryServiceImpl -> ""  ->	 diaryserviceimpl -> 	diary
                UtilUpload.uploadPost(myFile, pathModule, dto);
                    
                    System.out.println(myFile.getOriginalFilename());
                if(myFile.getOriginalFilename().toUpperCase().contains(".MP4") == true ) {
                    dto.setType(3);
                } else {
                    dto.setType(2);
                }
                dto.setDefaultNy(j == 0 ? 1 : 0);
                dto.setSort(j+1);
                dto.setPseq(pseq);

                dao.insertDiaryUploaded(dto);
                j++;
            }
        }
		return insertDiary;
	}
	
	
	
	
	
	
}
