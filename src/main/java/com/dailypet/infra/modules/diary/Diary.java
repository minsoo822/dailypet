package com.dailypet.infra.modules.diary;

import org.springframework.web.multipart.MultipartFile;

import com.dailypet.infra.common.base.Base;

public class Diary extends Base{
	
	private String ifdaSeq;
	private String ifmmSeq;
	private String mm_ifmmSeq;
	private String ifdaContents;
	private Integer ifdaDelNy;
	private String ifdaRegDate;
	private String ifdaModDate;
	private String ifmmID;
	private Integer diaryPostCount;
	private String ifmmIntrodution;
	
	private MultipartFile[] diary_image;
	
	private String diPath;
	private String diuuidName;
	private String mmPath;
	private String mmuuidName;
	
//------------------------------------------------------
	 
	private String ifmmName;
	private String ifmmZipcode;
	private String ifmmAddr1;
	private String ifmmAddr2;
	private String ifmmAddr3;
	private String ifmmPW;
	private String ifmmNickname;
	private Integer ifmmTelecom;
	private String ifmmTel;
	private String ifmmEmail;
	private String ifmmEmailID;
	private Integer ifmmEmailDomain;
	private String ifmmIntroduction;
	private String ifmmRegDate;
	private String ifmmModDate;
	private Integer ifmmDelNy;
	 
//------------------------------------------------------	 
	 
	private String ifcmContent;
	
//------------------------------------------------------	
	 
	public String getIfdaSeq() {
		return ifdaSeq;
	}
	public void setIfdaSeq(String ifdaSeq) {
		this.ifdaSeq = ifdaSeq;
	}
	public String getIfmmSeq() {
		return ifmmSeq;
	}
	public void setIfmmSeq(String ifmmSeq) {
		this.ifmmSeq = ifmmSeq;
	}
	public String getIfdaContents() {
		return ifdaContents;
	}
	public void setIfdaContents(String ifdaContents) {
		this.ifdaContents = ifdaContents;
	}
	public Integer getIfdaDelNy() {
		return ifdaDelNy;
	}
	public void setIfdaDelNy(Integer ifdaDelNy) {
		this.ifdaDelNy = ifdaDelNy;
	}
	public String getIfdaRegDate() {
		return ifdaRegDate;
	}
	public void setIfdaRegDate(String ifdaRegDate) {
		this.ifdaRegDate = ifdaRegDate;
	}
	public String getIfdaModDate() {
		return ifdaModDate;
	}
	public void setIfdaModDate(String ifdaModDate) {
		this.ifdaModDate = ifdaModDate;
	}
	public String getIfmmID() {
		return ifmmID;
	}
	public void setIfmmID(String ifmmID) {
		this.ifmmID = ifmmID;
	}
	public MultipartFile[] getDiary_image() {
		return diary_image;
	}
	public void setDiary_image(MultipartFile[] diary_image) {
		this.diary_image = diary_image;
	}
	public String getMm_ifmmSeq() {
		return mm_ifmmSeq;
	}
	public void setMm_ifmmSeq(String mm_ifmmSeq) {
		this.mm_ifmmSeq = mm_ifmmSeq;
	}
	//---------------------------------------------------------------------------------
	
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
	public Integer getIfmmEmailDomain() {
		return ifmmEmailDomain;
	}
	public void setIfmmEmailDomain(Integer ifmmEmailDomain) {
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
	public String getDiPath() {
		return diPath;
	}
	public void setDiPath(String diPath) {
		this.diPath = diPath;
	}
	public String getDiuuidName() {
		return diuuidName;
	}
	public void setDiuuidName(String diuuidName) {
		this.diuuidName = diuuidName;
	}
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
	public Integer getDiaryPostCount() {
		return diaryPostCount;
	}
	public void setDiaryPostCount(Integer diaryPostCount) {
		this.diaryPostCount = diaryPostCount;
	}
	public String getIfmmIntrodution() {
		return ifmmIntrodution;
	}
	public void setIfmmIntrodution(String ifmmIntrodution) {
		this.ifmmIntrodution = ifmmIntrodution;
	}
	public String getIfcmContent() {
		return ifcmContent;
	}
	public void setIfcmContent(String ifcmContent) {
		this.ifcmContent = ifcmContent;
	}
}
