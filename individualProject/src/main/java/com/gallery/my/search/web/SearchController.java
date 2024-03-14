package com.gallery.my.search.web;

import org.springframework.web.bind.annotation.RequestMapping;

public class SearchController {

	
	@RequestMapping("/seoul")
	public String seoul() {
		return "/search/seoul";
	}
	
}
