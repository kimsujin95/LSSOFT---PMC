package org.zerock.service;

import java.util.List;

import org.zerock.domain.ReservationListVO;

public interface ReservationListService {

	public List<ReservationListVO> getReservationList();
	public void insert(ReservationListVO List);

}
