package com.dailypet.infra.modules.reservation;

import java.util.List;

public interface ReservationService {

	public List<Reservation> selectList(ReservationVo vo) throws Exception;
	
	public Reservation selectOne(ReservationVo vo) throws Exception;
	
	public Reservation selectDefault(ReservationVo vo) throws Exception;
	
	//예약정보 입력
	public int insertRV(Reservation dto) throws Exception;
	
	//예약정보
	public Reservation selectInfo(ReservationVo vo) throws Exception;
	
	//예약정보 수정
	public int changeInfo(Reservation dto) throws Exception;
	
	//예약 취소
	public int deleteInfo(Reservation dto) throws Exception;
	
}
