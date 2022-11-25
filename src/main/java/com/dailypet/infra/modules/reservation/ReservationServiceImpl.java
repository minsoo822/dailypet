package com.dailypet.infra.modules.reservation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReservationServiceImpl implements ReservationService {

	@Autowired
	ReservationDao dao;
	
	@Override
	public List<Reservation> selectList(ReservationVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override
	public Reservation selectOne(ReservationVo vo) throws Exception {
		return dao.selectOne(vo);
	}
	
	@Override
	public Reservation selectDefault(ReservationVo vo) throws Exception {
		return dao.selectDefault(vo);
	}
	
	@Override
	public int insertRV(Reservation dto) throws Exception {
		return dao.insertRV(dto);
	}
	
	@Override
	public Reservation selectInfo(ReservationVo vo) throws Exception {
		return dao.selectInfo(vo);
	}
	
	@Override
	public int changeInfo(Reservation dto) throws Exception {
		return dao.changeInfo(dto);
	}
	
	@Override
	public int deleteInfo(Reservation dto) throws Exception {
		return dao.deleteInfo(dto);
	}
}
