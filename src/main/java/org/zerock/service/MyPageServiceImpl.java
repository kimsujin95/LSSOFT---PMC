package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.joinMemberVO;
import org.zerock.mapper.MyPageMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class MyPageServiceImpl implements MyPageService{

	@Setter(onMethod_=@Autowired)
	private MyPageMapper mapper;

	@Override
	public List<joinMemberVO> mypage(String userid) {
		// TODO Auto-generated method stub
		return mapper.mypage(userid);
	}

	@Override
	public List<joinMemberVO> getlist() {
		// TODO Auto-generated method stub
		return null;
	}


}
