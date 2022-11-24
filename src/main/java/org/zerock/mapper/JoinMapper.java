package org.zerock.mapper;


import org.zerock.domain.joinMemberVO;

public interface JoinMapper {
	public void insert(joinMemberVO jmember);
	
	
	public joinMemberVO read(String userid);

	
}
