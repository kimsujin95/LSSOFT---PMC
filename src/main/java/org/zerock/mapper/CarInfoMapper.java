package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.CarInfoVO;


public interface CarInfoMapper {
	
	public List<CarInfoVO> getList(String nowlocation);
	public List<CarInfoVO> read(int carid);

}
