package com.gallery.my.user.vo;

public class UserVO {
	
	private String id;
	private String pw;
	private String nm;
	private String useYn;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getNm() {
		return nm;
	}
	public void setNm(String nm) {
		this.nm = nm;
	}
	public String getUseYn() {
		return useYn;
	}
	public void setUseYn(String useYn) {
		this.useYn = useYn;
	}
	@Override
	public String toString() {
		return "UserVO [id=" + id + ", pw=" + pw + ", nm=" + nm + ", useYn=" + useYn + "]";
	}
	
	
}
