package org.zerock.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.zerock.domain.joinMemberVO;
import org.zerock.service.JoinService;
import org.zerock.service.LoginService;
import org.zerock.service.MyPageService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/login/*")
@AllArgsConstructor
public class LoginController {

	private JoinService JoinService;
	private LoginService loginservice;
	private MyPageService mypageservice;

	@GetMapping("/all")
	public void doAll() {
		log.info("do all can access everybody");
	}

	@GetMapping("/member")
	public void doMember() {
		log.info("logined member");
	}

	@GetMapping("/admin")
	public void doAdmin() {
		log.info("admin only");
	}
	
	  @GetMapping("/joinform") 
	  public void list() { 
		  log.info("list" );
	  //model.addAttribute("list",carinfoservice.getList(nowlocation));
	  
	  }
	  
	  @RequestMapping(value="/joinform", method = RequestMethod.POST) 
	  public String join(joinMemberVO jmember) {
	  
		  log.info("join success"); 
		  JoinService.insert(jmember); 
		  
		  return "redirect:/menu/index"; 
	  }
	 
	/*
	 * @GetMapping("/memberForm2") public void list() { log.info("list");
	 * //model.addAttribute("list",carinfoservice.getList(nowlocation));
	 * 
	 * }
	 * 
	 * @RequestMapping(value = "/memberForm2", method = RequestMethod.POST) public
	 * String join(joinMemberVO jmember) {
	 * 
	 * log.info("join success"); JoinService.insert(jmember); return
	 * "redirect:/menu/index"; }
	 */
	 
	 

	@GetMapping("/accessError")
	public void accessDenied(Authentication auth, Model model) {
		log.info("access Denied : " + auth);

		model.addAttribute("msg", "Access Denied");

	}

	@GetMapping("/customLogin")
	public void csLogin(String error, String logout, Model model) {
		
		log.info("에러: " + error);
		log.info("로그아웃: " + logout);

		if (error != null) {
			model.addAttribute("error", "로그인 에러! 아이디와 비밀번호를 확인해주세요");
		}

		if (logout != null) {
			model.addAttribute("logout", "로그아웃이 완료되었습니다.");
		}

	}

	@GetMapping({ "/mypage", "/modifyinfo" })
	public void mypage(@RequestParam("userid") String userid, joinMemberVO jmember, Model model) {

		log.info("mypage or modify");
		model.addAttribute("userinfo", mypageservice.mypage(userid));
	}

	@RequestMapping(value = "/modifyinfo", method = RequestMethod.POST)
	public String modify(joinMemberVO jmember) {
		loginservice.modifyinfo(jmember);
		return "redirect:/login/mypage?userid=" + jmember.getUserid();

	}

	@RequestMapping(value = "/removeinfo", method = RequestMethod.POST)
	public String removeinfo(String userid) {
		loginservice.removeinfo(userid);
		return "redirect:/login/customlogin";

	}

	@RequestMapping(value = "/mypage", method = RequestMethod.POST)
	public String mypage(String userid) {

		return "redirect:/login/mypage?userid=" + userid;

	}

}
