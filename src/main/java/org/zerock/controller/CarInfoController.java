package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.CarReservationVO;
import org.zerock.domain.ReservationListVO;
import org.zerock.service.CarInfoService;
import org.zerock.service.CarReservationService;
import org.zerock.service.ReservationListService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/car/*")
@AllArgsConstructor
public class CarInfoController {
	private CarInfoService carinfoservice;
	private CarReservationService reservationservice;
	private ReservationListService reservationlistservice;
	
	@GetMapping("/carlist")
	public void list(@RequestParam("nowlocation")String nowlocation,Model model) {
		log.info("list" );
		model.addAttribute("list",carinfoservice.getList(nowlocation));

	}

	@GetMapping("/carreservation")
	public void reservation(@RequestParam("carid") int carid,Model model) {
		log.info("carreservation" );
		model.addAttribute("reservation",reservationservice.read(carid));
		model.addAttribute("carinfo",carinfoservice.read(carid));

	}
	@RequestMapping(value="/carinfo" ,  method = RequestMethod.GET)
	public void carinfo(@RequestParam("carid") int carid,@RequestParam("rdate") String rdate,@RequestParam("rtime") String rtime,Model model) {
		/*public void carinfo(@PathVariable("carid") int carid , @PathVariable("rdate") String rdate ,Model model) {	*/
		log.info("carinfo" );
		log.info(rdate);
		model.addAttribute("reservation",reservationservice.read(carid));
		model.addAttribute("carinfo",carinfoservice.read(carid));
		model.addAttribute("rtimetable",reservationservice.rtimetable(carid, rdate));

	}
	
	
	  @GetMapping("/reservationlist")
	  public void reservatinlist(Model model) {
	  log.info("reservationlist");
	  model.addAttribute("reservationlist",reservationlistservice. getReservationList());
	  
	  }
	  
	  @RequestMapping(value="/reservationlist", method = RequestMethod.POST)
	  public String register(ReservationListVO reservationlist, CarReservationVO CarReservation, RedirectAttributes rttr) {

			log.info("======================================");
			log.info("register : ");
			log.info("======================================");
			
			reservationlistservice.insert(reservationlist);
			reservationservice.update(CarReservation);
			return "redirect:/car/reservationlist";
		}
	  
}
