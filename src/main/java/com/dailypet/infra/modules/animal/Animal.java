package com.dailypet.infra.modules.animal;

import org.springframework.web.multipart.MultipartFile;

import com.dailypet.infra.common.base.Base;

public class Animal extends Base{

	private String ifamSeq;
	private Integer ifamGender;
	private String ifamName;
	private Integer ifamAge;
	private String ifamKind;
	private Integer ifamChipNY;
	private Integer ifamVaccinateNY;
//-----------------------------------------------------
	//이미지등록
	public MultipartFile[] pet_image;
//-----------------------------------------------------	
	
	private Integer mm_ifmmSeq;
	public String getIfamSeq() {
		return ifamSeq;
	}
	public void setIfamSeq(String ifamSeq) {
		this.ifamSeq = ifamSeq;
	}
	public Integer getIfamGender() {
		return ifamGender;
	}
	public void setIfamGender(Integer ifamGender) {
		this.ifamGender = ifamGender;
	}
	public String getIfamName() {
		return ifamName;
	}
	public void setIfamName(String ifamName) {
		this.ifamName = ifamName;
	}
	public Integer getIfamAge() {
		return ifamAge;
	}
	public void setIfamAge(Integer ifamAge) {
		this.ifamAge = ifamAge;
	}
	public String getIfamKind() {
		return ifamKind;
	}
	public void setIfamKind(String ifamKind) {
		this.ifamKind = ifamKind;
	}
	public Integer getIfamChipNY() {
		return ifamChipNY;
	}
	public void setIfamChipNY(Integer ifamChipNY) {
		this.ifamChipNY = ifamChipNY;
	}
	public Integer getIfamVaccinateNY() {
		return ifamVaccinateNY;
	}
	public void setIfamVaccinateNY(Integer ifamVaccinateNY) {
		this.ifamVaccinateNY = ifamVaccinateNY;
	}
	public Integer getMm_ifmmSeq() {
		return mm_ifmmSeq;
	}
	public void setMm_ifmmSeq(Integer mm_ifmmSeq) {
		this.mm_ifmmSeq = mm_ifmmSeq;
	}
	public MultipartFile[] getPet_image() {
		return pet_image;
	}
	public void setPet_image(MultipartFile[] pet_image) {
		this.pet_image = pet_image;
	}
	
	
	
}
