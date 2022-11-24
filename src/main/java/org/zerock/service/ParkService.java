package org.zerock.service;

import java.util.List;


import org.zerock.domain.ParkDataVO;

public interface ParkService {


	
	public ParkDataVO get(String lat);
	
	
	//public List<BoardVO> getList();
	
	public List<ParkDataVO> getList();
	

}
