package org.zerock.service;

import org.zerock.domain.joinMemberVO;

public interface LoginService {
	public void modifyinfo(joinMemberVO jmember);

	public void removeinfo(String userid);
}
