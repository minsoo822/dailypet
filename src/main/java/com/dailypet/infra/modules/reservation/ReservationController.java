package com.dailypet.infra.modules.reservation;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/reservation/")
public class ReservationController {
	
	@Autowired
	ReservationServiceImpl service;
	
	@RequestMapping(value = "reservationPage")
	public String reservationPage(ReservationVo vo, Model model, RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception {
		
		String ifmmSeq = (String) httpSession.getAttribute("sessSeq");
		vo.setIfmmSeq(ifmmSeq);
		
		Reservation selectInfo = service.selectInfo(vo);
		model.addAttribute("info", selectInfo);
		
		return "infra/reservation/user/reservationPage";
	}
	
	@RequestMapping(value = "reservationForm")
	public String reservationForm(ReservationVo vo, Reservation dto, Model model, RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception {
		
		String ifmmSeq = (String) httpSession.getAttribute("sessSeq");
		vo.setIfmmSeq(ifmmSeq);
		
		Reservation selectInfo = service.selectInfo(vo);
		model.addAttribute("info", selectInfo);
		
		service.changeInfo(dto);
		vo.setIfrsSeq(dto.getIfrsSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "infra/reservation/user/reservationForm";
	}
	
	@RequestMapping(value = "searchingPlace")
	public String searchingPlace(Reservation dto, ReservationVo vo, Model model, HttpSession httpSession) throws Exception {
		
		String ifmmSeq = (String) httpSession.getAttribute("sessSeq");
		vo.setIfmmSeq(ifmmSeq);
		
		int selectDefault = service.selectDefault(dto);
		model.addAttribute("user", selectDefault);
		
		return "infra/reservation/user/searchingPlace";
	}

}
