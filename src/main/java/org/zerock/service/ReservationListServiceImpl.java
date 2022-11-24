package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.ReservationListVO;
import org.zerock.mapper.CarReservationMapper;
import org.zerock.mapper.ReservationListMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class ReservationListServiceImpl implements ReservationListService {

	@Setter(onMethod_=@Autowired)
	private ReservationListMapper mapper;
	@Override
	public List<ReservationListVO> getReservationList() {
		// TODO Auto-generated method stub
		return mapper.getReservationList();
	}

	@Override
	public void insert(ReservationListVO List) {
		// TODO Auto-generated method stub
		mapper.insert(List);
	}

}
