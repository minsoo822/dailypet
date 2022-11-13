package com.dailypet.infra.modules.reservation;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/reservation/")
public class ReservationController {
	
	@RequestMapping(value = "reservationPage")
	public String reservationPage() throws Exception {
		
		return "infra/reservation/user/reservationPage";
	}
	
	@RequestMapping(value = "reservationForm")
	public String reservationForm() throws Exception {
		
		return "infra/reservation/user/reservationForm";
	}
	
	@RequestMapping(value = "searchingPlace")
	public String searchingPlace() throws Exception {
		
		return "infra/reservation/user/searchingPlace";
	}

}
