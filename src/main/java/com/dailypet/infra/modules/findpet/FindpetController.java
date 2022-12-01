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
		
		List<Code> codeList = serviceCode.selectList(cdvo);
		model.addAttribute("codeList", codeList);
		
		List<Findpet> selectList = service.selectList(vo);
		model.addAttribute("list", selectList);
		
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
	
	@RequestMapping(value = "findpetSearchForm")
	public String findpetSearchForm(FindpetVo vo, Model model) throws Exception {

		setSearchAndPaging(vo);
		
		//가져온 클래스 명을 ifcdSeq로 변환
		vo.setIffpBreed("");
		if(vo.getIffpBreed() != null) {
			for(Code item : CodeServiceImpl.selectListCachedCode(5)) {
				if(item.getIfcdName().equals(vo.getIffpBreed())) {
					vo.setIffpBreed(item.getIfcdSeq()); 
					break; 
				}
			}
		}
		System.err.println(vo.getIffpBreed());
		
		List<Findpet> selectList = service.selectList(vo);
		model.addAttribute("list", selectList);
		 
		/*
		List<Findpet> selectSeoul = service.selectSeoul(vo); 
		model.addAttribute("selectSeoul", selectSeoul);
		List<Findpet> selectGyeonggi = service.selectGyeonggi(vo); 
		model.addAttribute("selectGyeonggi", selectGyeonggi);
		List<Findpet> selectIncheon = service.selectIncheon(vo); 
		model.addAttribute("selectIncheon", selectIncheon);
		List<Findpet> selectGangwon = service.selectGangwon(vo); 
		model.addAttribute("selectGangwon", selectGangwon);
		List<Findpet> selectBusan = service.selectBusan(vo); 
		model.addAttribute("selectBusan", selectBusan);
		List<Findpet> selectDaegu = service.selectDaegu(vo); 
		model.addAttribute("selectDaegu", selectDaegu);
		List<Findpet> selectDaejeon = service.selectDaejeon(vo); 
		model.addAttribute("selectDaejeon", selectDaejeon);
		List<Findpet> selectGwangju = service.selectGwangju(vo); 
		model.addAttribute("selectGwangju", selectGwangju);
		List<Findpet> selectUlsan = service.selectUlsan(vo); 
		model.addAttribute("selectUlsan", selectUlsan);
		List<Findpet> selectSejong = service.selectSejong(vo); 
		model.addAttribute("selectSejong", selectSejong);
		List<Findpet> selectChungbuk = service.selectChungbuk(vo); 
		model.addAttribute("selectChungbuk", selectChungbuk);
		List<Findpet> selectChungnam = service.selectChungnam(vo); 
		model.addAttribute("selectChungnam", selectChungnam);
		List<Findpet> selectGyeongbuk = service.selectGyeongbuk(vo); 
		model.addAttribute("selectGyeongbuk", selectGyeongbuk);
		List<Findpet> selectGyeongnam = service.selectGyeongnam(vo); 
		model.addAttribute("selectGyeongnam", selectGyeongnam);
		List<Findpet> selectJeonbuk = service.selectJeonbuk(vo); 
		model.addAttribute("selectJeonbuk", selectJeonbuk);
		List<Findpet> selectJeonnam = service.selectJeonnam(vo); 
		model.addAttribute("selectJeonnam", selectJeonnam);
		List<Findpet> selectJeju = service.selectJeju(vo); 
		model.addAttribute("selectJeju", selectJeju);
		김재이 사형
		*/
		
		return "infra/findpet/user/findpetSearchForm";
	}
//-------------------------------------------------------------------------------------------


}
