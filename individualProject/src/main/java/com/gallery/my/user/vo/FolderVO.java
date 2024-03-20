package com.gallery.my.user.vo;

public class FolderVO {
	
	private String id;
	private String foldNo;
	private String foldNm;
	private String galAd;
	private String galNm;
	private String galTn;
	private String exhAd;
	private String exhNm;
	private String exhTn;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFoldNo() {
		return foldNo;
	}
	public void setFoldNo(String foldNo) {
		this.foldNo = foldNo;
	}
	public String getFoldNm() {
		return foldNm;
	}
	public void setFoldNm(String foldNm) {
		this.foldNm = foldNm;
	}
	public String getGalAd() {
		return galAd;
	}
	public void setGalAd(String galAd) {
		this.galAd = galAd;
	}
	public String getGalNm() {
		return galNm;
	}
	public void setGalNm(String galNm) {
		this.galNm = galNm;
	}
	public String getGalTn() {
		return galTn;
	}
	public void setGalTn(String galTn) {
		this.galTn = galTn;
	}
	public String getExhAd() {
		return exhAd;
	}
	public void setExhAd(String exhAd) {
		this.exhAd = exhAd;
	}
	public String getExhNm() {
		return exhNm;
	}
	public void setExhNm(String exhNm) {
		this.exhNm = exhNm;
	}
	public String getExhTn() {
		return exhTn;
	}
	public void setExhTn(String exhTn) {
		this.exhTn = exhTn;
	}
	
	@Override
	public String toString() {
		return "FolderVO [id=" + id + ", foldNo=" + foldNo + ", foldNm=" + foldNm + ", galAd=" + galAd + ", galNm="
				+ galNm + ", galTn=" + galTn + ", exhAd=" + exhAd + ", exhNm=" + exhNm + ", exhTn=" + exhTn + "]";
	}
	
}
