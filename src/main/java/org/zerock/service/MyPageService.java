package org.zerock.service;

import java.util.List;

import org.zerock.domain.joinMemberVO;

public interface MyPageService {

	public List<joinMemberVO> getlist();
	public List<joinMemberVO> mypage(String userid);
}
