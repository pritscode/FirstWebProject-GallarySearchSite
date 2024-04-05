package com.gallery.my.search.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gallery.my.search.dao.ISearchDAO;
import com.gallery.my.search.vo.SearchVO;

@Service
public class SearchService {
	@Autowired
	ISearchDAO dao;
	
	public List<SearchVO> exhList(){
		return dao.exhList();
	}
	//전시회 상세 조회
	public SearchVO exhCont(int exhNo){
		return dao.exhCont(exhNo);
	}
}
