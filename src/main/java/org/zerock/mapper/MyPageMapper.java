package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.joinMemberVO;


public interface MyPageMapper {

	public List<joinMemberVO> getlist();
	public List<joinMemberVO> mypage(String userid);

}
