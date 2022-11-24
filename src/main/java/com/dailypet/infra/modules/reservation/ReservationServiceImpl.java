package com.dailypet.infra.modules.reservation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReservationServiceImpl implements ReservationService {

	@Autowired
	ReservationDao dao;
	
	@Override
	public Reservation selectOne(ReservationVo vo) throws Exception {
		return dao.selectOne(vo);
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
