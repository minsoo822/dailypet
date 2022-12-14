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
		return dao.selectOne(vo);
	}
	@Override
	public Diary selectOneImg(DiaryVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneImg(vo);
	}
	@Override
	public Diary selectCheckFollow(DiaryVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectCheckFollow(vo);
	}

	// 일기 Inst
	@Override
	public int insertDiary(Diary dto) throws Exception {
		int insertDiary = dao.insertDiary(dto);

        int j = 0;
        for(MultipartFile myFile : dto.getDiary_image()) {

            if(!myFile.isEmpty()) {
                // postServiceImpl
                String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
                
//                		MemberServiceImpl.java  ->	 MemberServiceImpl -> ""  ->	 memberserviceimpl -> 	member
                UtilUpload.uploadPost(myFile, pathModule, dto);
                    
                if(myFile.getOriginalFilename().toUpperCase().contains(".MP4") == true ) {
                    dto.setType(3);
                } else {
                    dto.setType(2);
                }
                dto.setDefaultNy(j == 0 ? 1 : 0);
                dto.setSort(j+1);
                dto.setPseq(dto.getIfmmSeq());

                dao.insertPetUpload(dto);
                j++;
            }
        }
        return insertDiary;
	}
	@Override
	public int diaryDel(Diary dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.diaryDel(dto);
	}

	// 게시물 좋아요
	@Override
	public void addLiked(Diary dto) throws Exception {
		dao.addLiked(dto);
	}

	@Override
	public void removeLiked(Diary dto) throws Exception {
		dao.removeLiked(dto);
	}
	
	@Override
	public List<Diary> mypageImageList(DiaryVo vo) throws Exception {
		return dao.mypageImageList(vo);
	}
	
	@Override
	public List<Diary> mypageDetailList(DiaryVo vo) throws Exception {
		return dao.mypageDetailList(vo);
	}
	
	@Override
	public Diary selectOnePost(Diary dto) throws Exception {
		return dao.selectOnePost(dto);
	}
	
}
