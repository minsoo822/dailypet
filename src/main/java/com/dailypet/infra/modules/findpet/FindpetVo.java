package com.dailypet.infra.modules.findpet;

import com.dailypet.infra.common.constants.Constants;

public class FindpetVo {
	
	private String iffpSeq;
	
	private Integer ifcdSeq;
	private Integer ifcgSeq;
	private String ifcdName;
	private Integer iffpSpotLocation;
	private String iffpBreed;
	
	private String shOption;
	private String shValue;
	private Integer shDelNy;
	private String shstartDate;
	private String shendDate;
	private Integer shOptionDate;
	private Integer shOptionBreed;
	
//	paging
	private int thisPage = 1;									// 현재 페이지
	private int rowNumToShow = 12;								// 화면에 보여줄 데이터 줄 갯수
	private int pageNumToShow = Constants.PAGE_NUM_TO_SHOW;		// 화면에 보여줄 페이징 번호 갯수

	private int totalRows;										// 전체 데이터 갯수
	private int totalPages;										// 전체 페이지 번호

	private int startPage;										// 시작 페이지 번호
	private int endPage;										// 마지막 페이지 번호
	
	private int startRnumForOracle = 1;							// 쿼리 시작 row					//oracleDB 때 사용
	private int endRnumForOracle;								// 쿼리 끝 row
	private Integer RNUM;

	private int startRnumForMysql = 0;							// 쿼리 시작 row
	
	public void setParamsPaging(int totalRows) {
		
//		setThisPage(3);

		setTotalRows(totalRows);

		if (getTotalRows() == 0) {
			setTotalPages(1);
		} else {
			setTotalPages(getTotalRows() / getRowNumToShow());
		}

		if (getTotalRows() % getRowNumToShow() > 0) {
			setTotalPages(getTotalPages() + 1);
		}

		if (getTotalPages() < getThisPage()) {
			setThisPage(getTotalPages());
		}
		
		setStartPage(((getThisPage() - 1) / getPageNumToShow()) * getPageNumToShow() + 1);

		setEndPage(getStartPage() + getPageNumToShow() - 1);

		if (getEndPage() > getTotalPages()) {
			setEndPage(getTotalPages());
		}
		
		setEndRnumForOracle((getRowNumToShow() * getThisPage()));
		setStartRnumForOracle((getEndRnumForOracle() - getRowNumToShow()) + 1);
		if (getStartRnumForOracle() < 1) setStartRnumForOracle(1);
		
		if (thisPage == 1) {
			setStartRnumForMysql(0);
		} else {
			setStartRnumForMysql((getRowNumToShow() * (getThisPage()-1)));
		}
		
	}

	public String getIffpSeq() {
		return iffpSeq;
	}

	public void setIffpSeq(String iffpSeq) {
		this.iffpSeq = iffpSeq;
	}

	public Integer getIfcdSeq() {
		return ifcdSeq;
	}

	public void setIfcdSeq(Integer ifcdSeq) {
		this.ifcdSeq = ifcdSeq;
	}

	public Integer getIfcgSeq() {
		return ifcgSeq;
	}

	public void setIfcgSeq(Integer ifcgSeq) {
		this.ifcgSeq = ifcgSeq;
	}

	public String getIfcdName() {
		return ifcdName;
	}

	public void setIfcdName(String ifcdName) {
		this.ifcdName = ifcdName;
	}

	public Integer getIffpSpotLocation() {
		return iffpSpotLocation;
	}

	public void setIffpSpotLocation(Integer iffpSpotLocation) {
		this.iffpSpotLocation = iffpSpotLocation;
	}

	public String getIffpBreed() {
		return iffpBreed;
	}

	public void setIffpBreed(String iffpBreed) {
		this.iffpBreed = iffpBreed;
	}

	public String getShOption() {
		return shOption;
	}

	public void setShOption(String shOption) {
		this.shOption = shOption;
	}

	public String getShValue() {
		return shValue;
	}

	public void setShValue(String shValue) {
		this.shValue = shValue;
	}

	public Integer getShDelNy() {
		return shDelNy;
	}

	public void setShDelNy(Integer shDelNy) {
		this.shDelNy = shDelNy;
	}

	public String getShstartDate() {
		return shstartDate;
	}

	public void setShstartDate(String shstartDate) {
		this.shstartDate = shstartDate;
	}

	public String getShendDate() {
		return shendDate;
	}

	public void setShendDate(String shendDate) {
		this.shendDate = shendDate;
	}

	public Integer getShOptionDate() {
		return shOptionDate;
	}

	public void setShOptionDate(Integer shOptionDate) {
		this.shOptionDate = shOptionDate;
	}

	public Integer getShOptionBreed() {
		return shOptionBreed;
	}

	public void setShOptionBreed(Integer shOptionBreed) {
		this.shOptionBreed = shOptionBreed;
	}

	public int getThisPage() {
		return thisPage;
	}

	public void setThisPage(int thisPage) {
		this.thisPage = thisPage;
	}

	public int getRowNumToShow() {
		return rowNumToShow;
	}

	public void setRowNumToShow(int rowNumToShow) {
		this.rowNumToShow = rowNumToShow;
	}

	public int getPageNumToShow() {
		return pageNumToShow;
	}

	public void setPageNumToShow(int pageNumToShow) {
		this.pageNumToShow = pageNumToShow;
	}

	public int getTotalRows() {
		return totalRows;
	}

	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}

	public int getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getStartRnumForOracle() {
		return startRnumForOracle;
	}

	public void setStartRnumForOracle(int startRnumForOracle) {
		this.startRnumForOracle = startRnumForOracle;
	}

	public int getEndRnumForOracle() {
		return endRnumForOracle;
	}

	public void setEndRnumForOracle(int endRnumForOracle) {
		this.endRnumForOracle = endRnumForOracle;
	}

	public Integer getRNUM() {
		return RNUM;
	}

	public void setRNUM(Integer rNUM) {
		RNUM = rNUM;
	}

	public int getStartRnumForMysql() {
		return startRnumForMysql;
	}

	public void setStartRnumForMysql(int startRnumForMysql) {
		this.startRnumForMysql = startRnumForMysql;
	}
	
}
