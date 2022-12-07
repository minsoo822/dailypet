package com.dailypet.infra.modules.animal;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/animal/")
public class AnimalController {
	
	@Autowired
	AnimalServiceImpl service;
	
	public void setSearchAndPaging(AnimalVo vo) throws Exception {
		vo.setParamsPaging(service.selectOneCount(vo));
	}
	
	@RequestMapping(value = "index")
	public String index() throws Exception {
		return "infra/animal/user/index";
	}
	
	@RequestMapping(value = "home")
	public String home() throws Exception {
		return "infra/animal/user/home";
	}
	
	@RequestMapping(value = "animalList")
	public String animalList(@ModelAttribute("vo") AnimalVo vo, Model model) throws Exception {
		
		setSearchAndPaging(vo);
		
		if(vo.getTotalRows() > 0) {
			List<Animal> list = service.selectList(vo);
			model.addAttribute("list", list);
		}
		
		return "infra/animal/xdmin/animalList";
	}
	
	@RequestMapping(value = "animalForm")
	public String animalForm(@ModelAttribute("vo") AnimalVo vo, Animal dto, Model model) throws Exception {
		
		Animal result = service.selectOne(vo);
		model.addAttribute("item", result);
		
		List<Animal> with = service.selectWith(vo);
		model.addAttribute("with", with);
		
		//이미지 가져오기
		dto.setPseq(vo.getIfamSeq()+"");
				
		List<Animal> listimg = service.selectPhoto(vo);
		model.addAttribute("listimg", listimg);
		
		return "infra/animal/xdmin/animalForm";
	}
	
	@RequestMapping(value = "animalInst")
	public String animalInst(AnimalVo vo, Animal dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.xdminInsert(dto);
		service.petimgInsert(dto);
		
		vo.setIfamSeq(dto.getIfamSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/animal/animalForm";
	}
	
	@SuppressWarnings(value = { "all" })
	@RequestMapping(value = "animalUpdt")
	public String animalUpdt(AnimalVo vo, Animal dto, RedirectAttributes redirectAttributes) throws Exception {
		
		dto.setPseq(vo.getIfamSeq());
		
		service.xdminUpdate(dto);
		service.petImgUpdate(dto);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/animal/animalForm";
	}
	
}
