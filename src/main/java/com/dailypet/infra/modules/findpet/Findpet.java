package com.dailypet.infra.modules.findpet;

import org.springframework.web.multipart.MultipartFile;

import com.dailypet.infra.common.base.Base;

public class Findpet extends Base{
	
	private String ifmmSeq;
	
	private String iffpName;
	private String iffpBrred;
	private Integer iffpGender;
	private String iffpAnimalShelter;
	private String iffpSpotPlace;
	private String iffpSpotDate;
	private String iffpCharacteristic;
	private Integer iffpDelNY;
	private String iffpRegDate;
	
	private MultipartFile[] findpet_img;
	
	
	
	public String getIfmmSeq() {
		return ifmmSeq;
	}
	public void setIfmmSeq(String ifmmSeq) {
		this.ifmmSeq = ifmmSeq;
	}
	public String getIffpName() {
		return iffpName;
	}
	public void setIffpName(String iffpName) {
		this.iffpName = iffpName;
	}
	public String getIffpBrred() {
		return iffpBrred;
	}
	public void setIffpBrred(String iffpBrred) {
		this.iffpBrred = iffpBrred;
	}
	public Integer getIffpGender() {
		return iffpGender;
	}
	public void setIffpGender(Integer iffpGender) {
		this.iffpGender = iffpGender;
	}
	public String getIffpAnimalShelter() {
		return iffpAnimalShelter;
	}
	public void setIffpAnimalShelter(String iffpAnimalShelter) {
		this.iffpAnimalShelter = iffpAnimalShelter;
	}
	public String getIffpSpotPlace() {
		return iffpSpotPlace;
	}
	public void setIffpSpotPlace(String iffpSpotPlace) {
		this.iffpSpotPlace = iffpSpotPlace;
	}
	public String getIffpSpotDate() {
		return iffpSpotDate;
	}
	public void setIffpSpotDate(String iffpSpotDate) {
		this.iffpSpotDate = iffpSpotDate;
	}
	public String getIffpCharacteristic() {
		return iffpCharacteristic;
	}
	public void setIffpCharacteristic(String iffpCharacteristic) {
		this.iffpCharacteristic = iffpCharacteristic;
	}
	public Integer getIffpDelNY() {
		return iffpDelNY;
	}
	public void setIffpDelNY(Integer iffpDelNY) {
		this.iffpDelNY = iffpDelNY;
	}
	public String getIffpRegDate() {
		return iffpRegDate;
	}
	public void setIffpRegDate(String iffpRegDate) {
		this.iffpRegDate = iffpRegDate;
	}
	public MultipartFile[] getFindpet_img() {
		return findpet_img;
	}
	public void setFindpet_img(MultipartFile[] findpet_img) {
		this.findpet_img = findpet_img;
	}
	
	
	

}
