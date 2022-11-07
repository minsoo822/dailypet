package com.dailypet.infra.modules.diary;

import org.springframework.web.multipart.MultipartFile;

import com.dailypet.infra.common.base.Base;

public class Diary extends Base{
	
	private String ifdaSeq;
	private String ifmmSeq;
	private String member_seq;
	private String ifdaContents;
	private Integer ifdaDelNy;
	private String ifdaRegDate;
	private String ifdaModDate;
	private String ifmmID;
	
	 private MultipartFile[] diary_image;
	
	
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
	public String getMember_seq() {
		return member_seq;
	}
	public void setMember_seq(String member_seq) {
		this.member_seq = member_seq;
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
	
	
	
}
