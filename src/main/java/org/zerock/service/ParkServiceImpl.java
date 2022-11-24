package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.ParkDataVO;

import org.zerock.mapper.ParkMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class ParkServiceImpl implements ParkService {

	@Setter(onMethod_ = @Autowired)
	private ParkMapper mapper;
	
	
	@Override
	public ParkDataVO get(String lat) {
		// TODO Auto-generated method stub
		log.info("get....."+lat);
		return mapper.read(lat);
	}

	@Override
	public List<ParkDataVO> getList() {
		// TODO Auto-generated method stub
		return mapper.getList();
	}

}
