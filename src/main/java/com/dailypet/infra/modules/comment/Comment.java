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
	private String writer;
	private String path;
	private String uuidName;
	
	private Integer ifdaSeq;
	private Integer sessSeq;
	private String mmPath;
	private String mmuuidName;
	private String ifmmID;
	
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
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Integer getIfdaSeq() {
		return ifdaSeq;
	}
	public void setIfdaSeq(Integer ifdaSeq) {
		this.ifdaSeq = ifdaSeq;
	}
	public Integer getSessSeq() {
		return sessSeq;
	}
	public void setSessSeq(Integer sessSeq) {
		this.sessSeq = sessSeq;
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
	public String getIfmmID() {
		return ifmmID;
	}
	public void setIfmmID(String ifmmID) {
		this.ifmmID = ifmmID;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getUuidName() {
		return uuidName;
	}
	public void setUuidName(String uuidName) {
		this.uuidName = uuidName;
	}
	
}
