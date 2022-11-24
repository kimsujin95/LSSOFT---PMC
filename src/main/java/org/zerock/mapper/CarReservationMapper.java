package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.CarReservationVO;



public interface CarReservationMapper {

	public List<CarReservationVO> getReservationList();
	public List<CarReservationVO> read(int carid);
	public List<CarReservationVO> reservation(int carid);
	public List<CarReservationVO> rtimetable(int carid,String rdate);
	public int update(CarReservationVO CarReservation);
	public int rcount(int carid);
	
	
	
}
