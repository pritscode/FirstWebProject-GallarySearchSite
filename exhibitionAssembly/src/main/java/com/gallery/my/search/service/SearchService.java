package com.gallery.my.search.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gallery.my.search.dao.ISearchDAO;
import com.gallery.my.search.vo.exhibitVO;
import com.gallery.my.search.vo.galleryVO;

@Service
public class SearchService {
	
	@Autowired
	ISearchDAO dao;
	
	public List<galleryVO> popGal(galleryVO vo) {
		return dao.popGal(vo);
	}
	
	public List<exhibitVO> popExh(exhibitVO vo) {
		return dao.popExh(vo);
	}
	
	public List<exhibitVO> newExh(exhibitVO vo) {
		return dao.newExh(vo);
	}
	
	public List<galleryVO> seoulGal(galleryVO vo) {
		return dao.seoulGal(vo);
	}
	
	public List<exhibitVO> seoulExh(exhibitVO vo) {
		return dao.seoulExh(vo);
	}

}
