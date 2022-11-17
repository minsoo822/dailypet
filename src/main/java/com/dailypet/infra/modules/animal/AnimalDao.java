package com.dailypet.infra.modules.animal;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class AnimalDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.dailypet.infra.modules.animal.AnimalMapper";

	public int animalInsert(Animal dto) {
		return sqlSession.insert(namespace + ".animalInsert", dto);
	}
	
	public int petimgInsert(Animal dto) {
		return sqlSession.insert(namespace + ".petimgInsert", dto);
	}
}
