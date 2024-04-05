package com.gallery.my.search.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gallery.my.search.service.SearchService;
import com.gallery.my.search.vo.SearchVO;

@Controller
public class SearchController {

	@Autowired
	SearchService searchservice;

	@RequestMapping("/seoul")
	public String seoul(Model model) {

		List<SearchVO> exhList = searchservice.exhList();
		model.addAttribute("exhList", exhList);

		return "search/seoul";
	}

	@RequestMapping("/nation")
	public String nation() {
		return "search/nation";
	}

	@RequestMapping("/seoulMuseumofArt")
	public String seoulMuseumofArt() {
		return "search/seoulMuseumofArt";
	}

	@RequestMapping("/eContentView")
	public String eContentView(Model model, int exhNo) {
		System.out.println(exhNo);
		SearchVO exhVO = searchservice.exhCont(exhNo);
		model.addAttribute("exhVO", exhVO);

		return "search/eContentView";
	}

}
