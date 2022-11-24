package org.zerock.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.joinMemberVO;
import org.zerock.mapper.LoginMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class LoginServiceImpl implements LoginService{
	@Setter(onMethod_=@Autowired)
	private LoginMapper mapper;
	

	@Override
	public void modifyinfo(joinMemberVO jmember) {
		// TODO Auto-generated method stub
		mapper.modifyinfo(jmember);
	}


	@Override
	public void removeinfo(String userid) {
		// TODO Auto-generated method stub
		mapper.removeinfo(userid);
	}
	

}
