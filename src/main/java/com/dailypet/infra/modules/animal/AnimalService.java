package com.dailypet.infra.modules.animal;

public interface AnimalService {

	public int animalInsert(Animal dto) throws Exception;
	public int petimgInsert(Animal dto) throws Exception;
	//펫정보수정
	public int petUpdate(Animal dto) throws Exception;
}