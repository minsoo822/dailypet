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
	public Findpet selectOne(FindpetVo vo) throws Exception {
		return dao.selectOne(vo);
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
                dto.setPseq(dto.getIffpSeq());

                dao.findPetImgInst(dto);
                j++;
            }
        }
		
		return findPetInst;
	}
	
	@Override
	public int findPetUpdt(Findpet dto) throws Exception {
		int findPetUpdt = dao.findPetUpdt(dto);
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
                dto.setPseq(dto.getIffpSeq());

                dao.findPetImgUpdt(dto);
                j++;
            }
        }
		
		
		
		return findPetUpdt;
	}
	
	//댓글
	@Override
	public int commentInst(Findpet dto) throws Exception {
		return dao.commentInst(dto);
	}
	
	@Override
	public Findpet commentOne(Findpet dto) throws Exception {
		return dao.commentOne(dto);
	}
	
	@Override
	public List<Findpet> commentList(FindpetVo vo) throws Exception {
		return dao.commentList(vo);
	}
	
	// 유기동물 등록 시 품종 추가
	public List<Findpet> BreedAdd(FindpetVo vo) throws Exception{
		return dao.BreedAdd(vo);
	}
	
	//페이징
	@Override
	public int selectOneCount(FindpetVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	
	//지역 탭
	@Override
	public List<Findpet> selectKorea(FindpetVo vo) throws Exception {
		return dao.selectKorea(vo);
	}
	
	//유기동물 찾기 결과
	@Override
	public List<Findpet> findpetResult(FindpetVo vo) throws Exception {
		return dao.findpetResult(vo);
	}
	
}


