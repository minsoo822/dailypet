package com.dailypet.infra.modules.comment;

import com.dailypet.infra.common.base.Base;

public class Comment extends Base{

	private Integer ifcmSeq;
	private Integer type;
	private String ifcmContent;
	private String ifcmRegDate;
	private Integer ifcmDelNy;
	private Integer da_ifdaSeq;
	private Integer mm_ifmmSeq;
	
	public Integer getIfcmSeq() {
		return ifcmSeq;
	}
	public void setIfcmSeq(Integer ifcmSeq) {
		this.ifcmSeq = ifcmSeq;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public String getIfcmContent() {
		return ifcmContent;
	}
	public void setIfcmContent(String ifcmContent) {
		this.ifcmContent = ifcmContent;
	}
	public String getIfcmRegDate() {
		return ifcmRegDate;
	}
	public void setIfcmRegDate(String ifcmRegDate) {
		this.ifcmRegDate = ifcmRegDate;
	}
	public Integer getIfcmDelNy() {
		return ifcmDelNy;
	}
	public void setIfcmDelNy(Integer ifcmDelNy) {
		this.ifcmDelNy = ifcmDelNy;
	}
	public Integer getDa_ifdaSeq() {
		return da_ifdaSeq;
	}
	public void setDa_ifdaSeq(Integer da_ifdaSeq) {
		this.da_ifdaSeq = da_ifdaSeq;
	}
	public Integer getMm_ifmmSeq() {
		return mm_ifmmSeq;
	}
	public void setMm_ifmmSeq(Integer mm_ifmmSeq) {
		this.mm_ifmmSeq = mm_ifmmSeq;
	}
	
}
