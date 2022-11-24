package org.zerock.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.AuthVO;
import org.zerock.domain.joinMemberVO;
import org.zerock.mapper.JoinMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class JoinServiceImpl implements JoinService {
	
	

	@Setter(onMethod_=@Autowired)
	private JoinMapper mapper;
		
	
	@Override
	public void insert(joinMemberVO jmember) {
		// TODO Auto-generated method stub
		mapper.insert(jmember);
	}


}
