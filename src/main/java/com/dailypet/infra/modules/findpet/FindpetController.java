package com.dailypet.infra.modules.findpet;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dailypet.infra.modules.code.Code;
import com.dailypet.infra.modules.code.CodeServiceImpl;
import com.dailypet.infra.modules.code.CodeVo;

@Controller
@RequestMapping(value = "/findpet/")
public class FindpetController {
	
	@Autowired
	FindpetServiceImpl service;
	
	@Autowired
	CodeServiceImpl serviceCode;
	
	public void setSearchAndPaging(FindpetVo vo) throws Exception {
		vo.setParamsPaging(service.selectOneCount(vo));
	}
	
	@RequestMapping(value = "findpetList")
	public String findpetList(@ModelAttribute("vo") FindpetVo vo, CodeVo cdvo , Model model) throws Exception {
		
		setSearchAndPaging(vo);
		
		List<Code> codeList = serviceCode.categoriList(cdvo);
		model.addAttribute("codeList", codeList);
		
		List<Findpet> categorylist = service.selectKorea(vo);
		model.addAttribute("categorylist", categorylist);
		
		return "infra/findpet/user/findpetList";
	}
	
	@RequestMapping(value = "findpetView")
	public String findpetView(FindpetVo vo, Model model) throws Exception {
		Findpet item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		List<Findpet> commentlist = service.commentList(vo);
		model.addAttribute("commentList", commentlist);
		
		return "infra/findpet/user/findpetView";
	}
	
	@ResponseBody
	@RequestMapping(value = "commentInst")
	public Map<String, Object> commentInst(Findpet dto) throws Exception {
		Map<String, Object> result = new HashMap<String, Object>();
		
		service.commentInst(dto);
		
		Findpet commentItem = service.commentOne(dto);
		
		result.put("img", commentItem.getPath() + commentItem.getUuidName());
		result.put("writer", commentItem.getWriter());
		result.put("comment", dto.getIfcmContent());
		return result;
	}
	
	@RequestMapping(value = "findpetMod")
	public String findpetMod(FindpetVo vo, Model model) throws Exception {
		
		Findpet item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		List<Findpet> listB = service.BreedAdd(vo);
		model.addAttribute("listB", listB);
		
		return "infra/findpet/user/findpetMod";
	}
	
	@RequestMapping(value = "findpetInst")
	public String findpetInst(Findpet dto, HttpSession httpSession) throws Exception {
		
		dto.setIfmmSeq((String)httpSession.getAttribute("sessSeq"));
		service.findPetInst(dto);
		
		return "redirect:/findpet/findpetList";
	}
	
	@RequestMapping(value = "findpetUpdt")
	public String findpetUpdt(Findpet dto, HttpSession httpSession) throws Exception {
		
		dto.setIfmmSeq((String)httpSession.getAttribute("sessSeq"));
		service.findPetUpdt(dto);
		
		return "redirect:/findpet/findpetList";
	}
	
	//유기동물 찾기 결과
	@ResponseBody
	@RequestMapping(value = "findpetResult")
	public Map<String, Object> findpetResult(FindpetVo vo) throws Exception{
		
		
		Map<String, Object> result = new HashMap<String, Object>(); 
		
		//가져온 클래스 명을 ifcdSeq로 변환 s
		vo.setIffpBreed(vo.getIffpBreed());
		if(vo.getIffpBreed() != null) {
			for(Code item : CodeServiceImpl.selectListCachedCode(5)) {
				if(item.getIfcdName().equals(vo.getIffpBreed())) {
					vo.setIffpBreed(item.getIfcdSeq()); 
					break; 
				}
			}
			vo.setParamsPaging(service.searchCount(vo));
		}
		System.err.println(vo.getIffpBreed());
		//e
		
		List<Findpet> listFindPet = service.findpetResult(vo);
		result.put("petList", listFindPet); 
		//petList라는 이름으로 불러옴 -> jsp에서 사용 
		
		return result;
	}
	
	@RequestMapping(value = "findpetSearchForm")
	public String findpetSearchForm(@ModelAttribute("vo") FindpetVo vo, CodeVo cdvo , Model model) throws Exception {

		setSearchAndPaging(vo);
		
		List<Code> codeList = serviceCode.categoriList(cdvo);
		model.addAttribute("codeList", codeList);
		
		List<Findpet> categorylist = service.selectKorea(vo);
		model.addAttribute("categorylist", categorylist);
		 
		return "infra/findpet/user/findpetSearchForm";
	}
	
	@RequestMapping(value = "findpetxdList")
	public String findpetxdList(@ModelAttribute("vo") FindpetVo vo, Model model) throws Exception {
		
		setSearchAndPaging(vo);
		
		if(vo.getTotalRows() > 0) {
			List<Findpet> list = service.xdminList(vo);
			model.addAttribute("list", list);
		}
		
		List<Findpet> listA = service.AreaAdd(vo);
		model.addAttribute("listA", listA);
		
		List<Findpet> listB = service.BreedAdd(vo);
		model.addAttribute("listB", listB);
		
		return "infra/findpet/xdmin/findpetxdList";
	}
	
	@RequestMapping(value = "findpetForm")
	public String findpetForm(@ModelAttribute("vo") FindpetVo vo, Findpet dto, Model model) throws Exception {
		
		Findpet result = service.selectOne(vo);
		model.addAttribute("item", result);
		
		List<Findpet> listA = service.AreaAdd(vo);
		model.addAttribute("listA", listA);
		
		List<Findpet> listB = service.BreedAdd(vo);
		model.addAttribute("listB", listB);
		
		//이미지 가져오기
		dto.setPseq(vo.getIffpSeq());
				
		List<Findpet> listimg = service.findpetOne(vo);
		model.addAttribute("listimg", listimg);
		
		return "infra/findpet/xdmin/findpetForm";
	}
	
	@RequestMapping(value = "findpetxdInst")
	public String findpetxdInst(FindpetVo vo, Findpet dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.findPetInst(dto);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/findpet/findpetForm";
	}
	
	@SuppressWarnings(value = { "all" })
	@RequestMapping(value = "findpetxdUpdt")
	public String findpetxdUpdt(FindpetVo vo, Findpet dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.findPetUpdt(dto);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/findpet/findpetForm";
	}
	
	@RequestMapping(value = "findpetUele")
	public String findpetUele(FindpetVo vo, Findpet dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.uelete(dto);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/findpet/findpetxdList";
	}
	
	@RequestMapping(value = "findpetDele")
	public String findpetDele(@ModelAttribute("vo") FindpetVo vo, Findpet dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.delete(vo);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/findpet/findpetxdList";
	}

}
