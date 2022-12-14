package org.zerock.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.zerock.domain.joinMemberVO;
import org.zerock.mapper.JoinMapper;
import org.zerock.security.domain.CustomUser;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailsService implements UserDetailsService{

	@Setter(onMethod_ = { @Autowired})
	private JoinMapper memberMapper;
	
	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException{
		
		log.warn("Load User By UserName : " + userName);
		joinMemberVO vo = memberMapper.read(userName);
		
		log.warn("quiered by member mapper:" + vo);
		
		return vo == null ? null : new CustomUser(vo);
		
	}
}
