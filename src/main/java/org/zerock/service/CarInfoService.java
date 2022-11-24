package org.zerock.service;

import java.util.List;

import org.zerock.domain.CarInfoVO;


public interface CarInfoService {
	
	//public List<BoardVO> getList();
	public List<CarInfoVO> getList(String nowlocation);
	public List<CarInfoVO> read(int carid);
}
