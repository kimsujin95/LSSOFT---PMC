package org.zerock.domain;

import java.util.List;

import lombok.Data;

@Data
public class joinMemberVO {
	  private String userid;
	   private String userpw;
	   private String username;
	   private String phoneno;
	   private String email;
	   private String gender;
	   private String birthday;
	   private String auth;
	   
	 private List<joinMemberVO> authList; 
	 private boolean enabled;
}
