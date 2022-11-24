package com.dailypet.infra.modules.reservation;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ReservationDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.dailypet.infra.modules.reservation.ReservationMapper";
	
	public Reservation selectOne(ReservationVo vo) throws Exception {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	
	public int insertRV(Reservation dto) throws Exception {
		return sqlSession.insert(namespace + ".insertRV", dto);
	}
	
	public Reservation selectInfo(ReservationVo vo) {
		return sqlSession.selectOne(namespace + ".selectInfo", vo);
	}
	
	public int changeInfo(Reservation dto) throws Exception {
		return sqlSession.update(namespace + ".changeInfo", dto);
	}
	
	public int deleteInfo(Reservation dto) throws Exception {
		return sqlSession.delete(namespace + ".deleteInfo", dto);
	}
	
}
