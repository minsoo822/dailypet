package com.dailypet.infra.modules.animal;


import org.springframework.web.multipart.MultipartFile;

import com.dailypet.infra.common.base.Base;

public class Animal extends Base{
	
	private String ifmmSeq;
	public String ifmmName;
	public String mm_ifmmSeq;
	
	public String ifamSeq;
	public Integer ifamGender;
	public String ifamName;
	public Integer ifamAge;
	public String ifamKind;
	public Integer ifamChipNY;
	public Integer ifamVaccinateNY;
//-----------------------------------------------------
	public MultipartFile[] pet_image;
	
	
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
	public MultipartFile[] getPet_image() {
		return pet_image;
	}
	public void setPet_image(MultipartFile[] pet_image) {
		this.pet_image = pet_image;
	}
	public String getIfmmSeq() {
		return ifmmSeq;
	}
	public void setIfmmSeq(String ifmmSeq) {
		this.ifmmSeq = ifmmSeq;
	}
	public String getIfmmName() {
		return ifmmName;
	}
	public void setIfmmName(String ifmmName) {
		this.ifmmName = ifmmName;
	}
	public String getMm_ifmmSeq() {
		return mm_ifmmSeq;
	}
	public void setMm_ifmmSeq(String mm_ifmmSeq) {
		this.mm_ifmmSeq = mm_ifmmSeq;
	}
	
	
}
