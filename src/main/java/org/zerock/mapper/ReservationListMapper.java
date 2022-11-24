package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.ReservationListVO;

public interface ReservationListMapper {
	public List<ReservationListVO> getReservationList();
	public void insert(ReservationListVO List);
}
