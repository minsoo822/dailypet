package com.dailypet.infra.modules.member;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.dailypet.infra.common.base.Base;

public class Member extends Base{
	
	//주인 등록
	public String ifmmSeq;
	public String ifmmName;
	public String ifmmZipcode;
	public String ifmmAddr1;
	public String ifmmAddr2;
	public String ifmmAddr3;
	public String ifmmID;
	public String ifmmPW;
	public String ifmmNickname;
	public Integer ifmmTelecom;
	public String ifmmTel;
	public String ifmmEmail;
	public String ifmmEmailID;
	public String ifmmEmailDomain;
	public String ifmmIntroduction;
	public String ifmmRegDate;
	public String ifmmModDate;
	public Integer ifmmDelNy;
	
	private String mmPath;
	private String mmuuidName;
	private String petPath;
	private String petuuidName;
	
	
//	동물 등록
	private String ifamSeq;
	public String mm_ifmmSeq;
	public String ifamName;
	public Integer ifamAge;
	public String ifamKind;
	public Integer ifamGender;
	public Integer ifamChipNY;
	public Integer ifamVaccinateNY;

	//이미지등록
	public MultipartFile[] user_image;

	
	public static List<Member> cachedCodeArrayList = new ArrayList<Member>();

	
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
	public String getIfmmZipcode() {
		return ifmmZipcode;
	}
	public void setIfmmZipcode(String ifmmZipcode) {
		this.ifmmZipcode = ifmmZipcode;
	}
	public String getIfmmAddr1() {
		return ifmmAddr1;
	}
	public void setIfmmAddr1(String ifmmAddr1) {
		this.ifmmAddr1 = ifmmAddr1;
	}
	public String getIfmmAddr2() {
		return ifmmAddr2;
	}
	public void setIfmmAddr2(String ifmmAddr2) {
		this.ifmmAddr2 = ifmmAddr2;
	}
	public String getIfmmAddr3() {
		return ifmmAddr3;
	}
	public void setIfmmAddr3(String ifmmAddr3) {
		this.ifmmAddr3 = ifmmAddr3;
	}
	public String getIfmmID() {
		return ifmmID;
	}
	public void setIfmmID(String ifmmID) {
		this.ifmmID = ifmmID;
	}
	public String getIfmmPW() {
		return ifmmPW;
	}
	public void setIfmmPW(String ifmmPW) {
		this.ifmmPW = ifmmPW;
	}
	public String getIfmmNickname() {
		return ifmmNickname;
	}
	public void setIfmmNickname(String ifmmNickname) {
		this.ifmmNickname = ifmmNickname;
	}
	public Integer getIfmmTelecom() {
		return ifmmTelecom;
	}
	public void setIfmmTelecom(Integer ifmmTelecom) {
		this.ifmmTelecom = ifmmTelecom;
	}
	public String getIfmmTel() {
		return ifmmTel;
	}
	public void setIfmmTel(String ifmmTel) {
		this.ifmmTel = ifmmTel;
	}
	public String getIfmmEmail() {
		return ifmmEmail;
	}
	public void setIfmmEmail(String ifmmEmail) {
		this.ifmmEmail = ifmmEmail;
	}
	public String getIfmmEmailID() {
		return ifmmEmailID;
	}
	public void setIfmmEmailID(String ifmmEmailID) {
		this.ifmmEmailID = ifmmEmailID;
	}
	public String getIfmmEmailDomain() {
		return ifmmEmailDomain;
	}
	public void setIfmmEmailDomain(String ifmmEmailDomain) {
		this.ifmmEmailDomain = ifmmEmailDomain;
	}
	public String getIfmmIntroduction() {
		return ifmmIntroduction;
	}
	public void setIfmmIntroduction(String ifmmIntroduction) {
		this.ifmmIntroduction = ifmmIntroduction;
	}
	public String getIfmmRegDate() {
		return ifmmRegDate;
	}
	public void setIfmmRegDate(String ifmmRegDate) {
		this.ifmmRegDate = ifmmRegDate;
	}
	public String getIfmmModDate() {
		return ifmmModDate;
	}
	public void setIfmmModDate(String ifmmModDate) {
		this.ifmmModDate = ifmmModDate;
	}
	public Integer getIfmmDelNy() {
		return ifmmDelNy;
	}
	public void setIfmmDelNy(Integer ifmmDelNy) {
		this.ifmmDelNy = ifmmDelNy;
	}
	public String getMm_ifmmSeq() {
		return mm_ifmmSeq;
	}
	public void setMm_ifmmSeq(String mm_ifmmSeq) {
		this.mm_ifmmSeq = mm_ifmmSeq;
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
	public Integer getIfamGender() {
		return ifamGender;
	}
	public void setIfamGender(Integer ifamGender) {
		this.ifamGender = ifamGender;
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
	public MultipartFile[] getUser_image() {
		return user_image;
	}
	public void setUser_image(MultipartFile[] user_image) {
		this.user_image = user_image;
	}
//	public MultipartFile[] getPet_image() {
//		return pet_image;
//	}
//	public void setPet_image(MultipartFile[] pet_image) {
//		this.pet_image = pet_image;
//	}
	public String getMmPath() {
		return mmPath;
	}
	public void setMmPath(String mmPath) {
		this.mmPath = mmPath;
	}
	public String getMmuuidName() {
		return mmuuidName;
	}
	public void setMmuuidName(String mmuuidName) {
		this.mmuuidName = mmuuidName;
	}
	public String getPetPath() {
		return petPath;
	}
	public void setPetPath(String petPath) {
		this.petPath = petPath;
	}
	public String getPetuuidName() {
		return petuuidName;
	}
	public void setPetuuidName(String petuuidName) {
		this.petuuidName = petuuidName;
	}
	public String getIfamSeq() {
		return ifamSeq;
	}
	public void setIfamSeq(String ifamSeq) {
		this.ifamSeq = ifamSeq;
	}
	

}
