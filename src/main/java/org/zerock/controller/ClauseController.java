package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/clause/*")
@AllArgsConstructor
public class ClauseController {

	@GetMapping("/clause")
	public void clause() {
		
	}
	@GetMapping("/memberUse")
	public void memberUse() {
		
	}
	@GetMapping("/information")
	public void information() {
		
	}
	@GetMapping("/carUse")
	public void carUse() {
		
	}
	@GetMapping("/location")
	public void location() {
		
	}
	
}
