package com.gallery.my.search.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gallery.my.search.service.SearchService;
import com.gallery.my.search.vo.exhibitVO;
import com.gallery.my.search.vo.galleryVO;

@Controller
public class SearchController {

	@Autowired
	SearchService searchService;
	
	@RequestMapping("/seoulView")
	public String seoulView(galleryVO galvo, exhibitVO exhvo, HttpSession session) {
		
		List<galleryVO> seoulGal = searchService.seoulGal(galvo);
		session.setAttribute("seoulGal", seoulGal);
		System.out.println(seoulGal);
		
		List<exhibitVO> seoulExh = searchService.seoulExh(exhvo);
		session.setAttribute("seoulExh", seoulExh);
		System.out.println(seoulExh);
		
		return "search/seoulView";
	}
	
	
}
