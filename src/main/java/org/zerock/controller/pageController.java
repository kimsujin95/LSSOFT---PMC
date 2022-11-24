package org.zerock.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.domain.AttachFileDTO;
import org.zerock.service.ParkService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Controller
@Log4j
@RequestMapping("/*")
@AllArgsConstructor
public class pageController {
	
	private ParkService service;

	@GetMapping("/customLogout")
	public void customlogout() {
		log.info("로그아웃페이지입니다.");
	}
	@GetMapping("/introduce")
	public void introduce() {
		
	}
	@GetMapping("/exam")
	public void exam() {
		
	}
	@GetMapping("/use")
	public void use() {
		
	}
	@GetMapping("/rate")
	public void rate() {
		
	}
	@GetMapping("/attraction")
	public void attraction() {
		
	}

	@GetMapping("/mapReservation")
	public void mapReservation() {
		
	}
	@GetMapping("/play")
	public void play() {
		
	}
	@GetMapping("/post")
	public void post() {
		
	}
	@GetMapping("/usePost")
	public void usePost(Model model) {
		ArrayList<AttachFileDTO> imageList = new ArrayList<AttachFileDTO>();
		
		for(int i=1; i<=21; i++) {
			imageList.add(new AttachFileDTO("name1","/resources/img/carUse/"+i+".jpg",null,false));
		}
		model.addAttribute("imageList", imageList);
	}

	   @GetMapping("/listReservation") // table �뀒�뒪�듃�럹�씠吏�
	   public void listReservation(Model model) {
	      model.addAttribute("listReservation", service.getList());
	      
	   }

	
}
