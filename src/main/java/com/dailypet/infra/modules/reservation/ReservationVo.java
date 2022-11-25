package com.dailypet.infra.modules.reservation;

public class ReservationVo {
	
	private String ifmmSeq;
	private String ifrsSeq;
	private String member_seq;
	private String ifmmName;
	private String ifmmTel;
	
	public String getIfmmSeq() {
		return ifmmSeq;
	}

	public void setIfmmSeq(String ifmmSeq) {
		this.ifmmSeq = ifmmSeq;
	}

	public String getIfrsSeq() {
		return ifrsSeq;
	}

	public void setIfrsSeq(String ifrsSeq) {
		this.ifrsSeq = ifrsSeq;
	}

	public String getMember_seq() {
		return member_seq;
	}

	public void setMember_seq(String member_seq) {
		this.member_seq = member_seq;
	}

	public String getIfmmName() {
		return ifmmName;
	}

	public void setIfmmName(String ifmmName) {
		this.ifmmName = ifmmName;
	}

	public String getIfmmTel() {
		return ifmmTel;
	}

	public void setIfmmTel(String ifmmTel) {
		this.ifmmTel = ifmmTel;
	}
	
}
