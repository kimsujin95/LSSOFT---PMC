package org.zerock.mapper;

import org.zerock.domain.joinMemberVO;

public interface LoginMapper {
	public void modifyinfo(joinMemberVO jmember);
	public void removeinfo(String userid);
}
