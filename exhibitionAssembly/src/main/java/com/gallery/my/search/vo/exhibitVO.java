package com.gallery.my.search.vo;

import java.util.Date;

import lombok.Data;

@Data
public class exhibitVO {
	
	private String exhId;
	private String exhNm;
	private String exhAdr;
	private String exhTel;
	private Date eDy;
	private int exhViews;
	private int exhMarks;
	private String useYn;
	
}
