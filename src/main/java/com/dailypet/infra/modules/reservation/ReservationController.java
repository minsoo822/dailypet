package com.dailypet.infra.modules.reservation;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/reservation/")
public class ReservationController {
	
	@Autowired
	ReservationServiceImpl service;
	
	@RequestMapping(value = "reservationPage")
	public String reservationPage(ReservationVo vo, Model model, HttpSession httpSession) throws Exception {
		
		String ifmmSeq = (String) httpSession.getAttribute("sessSeq");
		vo.setIfmmSeq(ifmmSeq);
		
		List<Reservation> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/reservation/user/reservationPage";
	}
	
	@RequestMapping(value = "reservationView")
	public String reservationView(ReservationVo vo, Model model, HttpSession httpSession) throws Exception {
		
		String ifmmSeq = (String) httpSession.getAttribute("sessSeq");
		vo.setIfmmSeq(ifmmSeq);
		
		Reservation info = service.selectOne(vo);
		model.addAttribute("info", info);
		Reservation meInfo = service.selectInfo(vo);
		model.addAttribute("meInfo", meInfo);
		
		return "infra/reservation/user/reservationView";
	}
	
	@RequestMapping(value = "reservationForm")
	public String reservationForm(ReservationVo vo, Reservation dto, Model model, HttpSession httpSession) throws Exception {
		
		String ifmmSeq = (String) httpSession.getAttribute("sessSeq");
		vo.setIfmmSeq(ifmmSeq);
		
		Reservation info = service.selectOne(vo);
		model.addAttribute("info", info);
		
		return "infra/reservation/user/reservationForm";
	}
	
	@RequestMapping(value = "infoInst")
	public String infoInst(Reservation dto) throws Exception {
		
//		String ifmmSeq = (String) httpSession.getAttribute("sessSeq");
//		vo.setIfmmSeq(ifmmSeq);
		
		service.insertRV(dto);
		
//		vo.setIfrsSeq(dto.getIfrsSeq());
		
		return "redirect:/reservation/reservationPage";
	}
	
	@RequestMapping(value = "searchingPlace")
	public String searchingPlace(ReservationVo vo, Model model, HttpSession httpSession) throws Exception {
		
		vo.setIfmmSeq((String) httpSession.getAttribute("sessSeq"));
		
		System.out.println("vo.getIfmmName() : " +vo.getIfmmName());
		System.out.println("vo.getIfmmTel() : " +vo.getIfmmTel());
		
		Reservation result = service.selectOne(vo);
		model.addAttribute("user", result);
		
		return "infra/reservation/user/searchingPlace";
	}
	
	@SuppressWarnings(value = { "all" })
	@RequestMapping(value = "changeInfo")
	public String changeInfo(Reservation dto, @ModelAttribute("vo") ReservationVo vo, HttpSession httpSession, RedirectAttributes redirectAttributes) throws Exception {
		
		String ifmmSeq = (String) httpSession.getAttribute("sessSeq");
		vo.setIfmmSeq(ifmmSeq);
		
		service.changeInfo(dto);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/reservation/reservationView";
	}
	
	@RequestMapping(value = "deleteInfo")
	public String deleteInfo(Reservation dto, @ModelAttribute("vo") ReservationVo vo, HttpSession httpSession, RedirectAttributes redirectAttributes) throws Exception {
		
		String ifmmSeq = (String) httpSession.getAttribute("sessSeq");
		vo.setIfmmSeq(ifmmSeq);
		
		service.deleteInfo(dto);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/reservation/reservationPage";
	}

}
