package com.dailypet.infra.modules.animal;

import java.util.List;

public interface AnimalService {

	public List<Animal> selectList(AnimalVo vo) throws Exception;
	public Animal selectOne(AnimalVo vo) throws Exception;
	public int selectOneCount(AnimalVo vo) throws Exception;
	
	public int animalInsert(Animal dto) throws Exception;
	public int petimgInsert(Animal dto) throws Exception;
	//펫정보수정
	public int petUpdate(Animal dto) throws Exception;
	public int petImgUpdate(Animal dto) throws Exception;
	
	public List<Animal> selectPhoto(AnimalVo vo) throws Exception;
	public List<Animal> selectWith(AnimalVo vo) throws Exception;
	
	//관리자
	public int xdminInsert(Animal dto) throws Exception;
	public int xdminUpdate(Animal dto) throws Exception;
}