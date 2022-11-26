package com.dailypet.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

public class Code {

	private String ifcdSeq;
	private String ifcdName;
	private String ifcdName_eng;
	private String ifcdModDate;
	private Integer ifcdUseNy;
	private Integer ifcdDelNy;
	private Integer cg_ifcgSeq;
	private Integer ifcgSeq;
	private String ifcgName;
	
//	for cache
	public static List<Code> cachedCodeArrayList = new ArrayList<Code>();
	
	public String getIfcdSeq() {
		return ifcdSeq;
	}
	public void setIfcdSeq(String ifcdSeq) {
		this.ifcdSeq = ifcdSeq;
	}
	public String getIfcdName() {
		return ifcdName;
	}
	public void setIfcdName(String ifcdName) {
		this.ifcdName = ifcdName;
	}
	public String getIfcdName_eng() {
		return ifcdName_eng;
	}
	public void setIfcdName_eng(String ifcdName_eng) {
		this.ifcdName_eng = ifcdName_eng;
	}
	public String getIfcdModDate() {
		return ifcdModDate;
	}
	public void setIfcdModDate(String ifcdModDate) {
		this.ifcdModDate = ifcdModDate;
	}
	public Integer getIfcdUseNy() {
		return ifcdUseNy;
	}
	public void setIfcdUseNy(Integer ifcdUseNy) {
		this.ifcdUseNy = ifcdUseNy;
	}
	public Integer getIfcdDelNy() {
		return ifcdDelNy;
	}
	public void setIfcdDelNy(Integer ifcdDelNy) {
		this.ifcdDelNy = ifcdDelNy;
	}
	public Integer getCg_ifcgSeq() {
		return cg_ifcgSeq;
	}
	public void setCg_ifcgSeq(Integer cg_ifcgSeq) {
		this.cg_ifcgSeq = cg_ifcgSeq;
	}
	public Integer getIfcgSeq() {
		return ifcgSeq;
	}
	public void setIfcgSeq(Integer ifcgSeq) {
		this.ifcgSeq = ifcgSeq;
	}
	public String getIfcgName() {
		return ifcgName;
	}
	public void setIfcgName(String ifcgName) {
		this.ifcgName = ifcgName;
	}
	
}
