package com.gallery.my.search.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SearchController {

	@RequestMapping("/seoulView")
	public String seoulView() {
		return "search/seoulView";
	}
	
}
