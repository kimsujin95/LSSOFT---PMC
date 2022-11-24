package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.CarReservationVO;
import org.zerock.mapper.CarInfoMapper;
import org.zerock.mapper.CarReservationMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class CarReservationServiceImpl implements CarReservationService  {
	

	@Setter(onMethod_=@Autowired)
	private CarReservationMapper mapper;
	
	@Override
	public List<CarReservationVO> getReservationList() {
		// TODO Auto-generated method stub
		return mapper.getReservationList();
	}

	@Override
	public List<CarReservationVO> read(int carid) {
		// TODO Auto-generated method stub
		return mapper.read(carid);
	}

	@Override
	public List<CarReservationVO> reservation(int carid) {
		// TODO Auto-generated method stub
		return mapper.reservation(carid);
	}

	@Override
	public List<CarReservationVO> rtimetable(int carid, String rdate) {
		// TODO Auto-generated method stub
		return mapper.rtimetable(carid, rdate);
	}

	@Override
	public int rcount(int carid) {
		// TODO Auto-generated method stub
		return mapper.rcount(carid);
	}

	@Override
	public int update(CarReservationVO CarReservation) {
		// TODO Auto-generated method stub
		return mapper.update(CarReservation);
	}
	
	

}
