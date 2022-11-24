package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.CarInfoVO;
import org.zerock.mapper.CarInfoMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class CarInfoServiceImpl implements CarInfoService {

	@Setter(onMethod_=@Autowired)
	private CarInfoMapper mapper;

	
	@Override
	public List<CarInfoVO> getList(String nowlocation) {
		
		// TODO Auto-generated method stub
		log.info("getList.......................");
		return mapper.getList(nowlocation);
	}


	@Override
	public List<CarInfoVO> read(int carid) {
		// TODO Auto-generated method stub
		return mapper.read(carid);
	}

}
