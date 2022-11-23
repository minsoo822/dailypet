package com.dailypet.infra.modules.reservation;

public interface ReservationService {

	//예약자 회원정보
	public int selectDefault(Reservation dto) throws Exception;

	//예약정보 입력
	public int insertRV(Reservation dto) throws Exception;
	
	//예약정보
	public Reservation selectInfo(ReservationVo vo) throws Exception;
	
	//예약정보 수정
	public int changeInfo(Reservation dto) throws Exception;
	
	//예약 취소
	public int deleteInfo(Reservation dto) throws Exception;
	
}
