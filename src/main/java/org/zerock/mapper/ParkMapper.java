package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.ParkDataVO;


public interface ParkMapper {
	//@Select("select*from tbl_board where bno>0")
	public List<ParkDataVO> getList();
	

	
	public ParkDataVO read(String lat);
	

}
