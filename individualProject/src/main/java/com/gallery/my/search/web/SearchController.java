package com.gallery.my.search.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SearchController {

	
	@RequestMapping("/seoul")
	public String seoul() {
		return "search/seoul";
	}
	
	@RequestMapping("/nation")
	public String nation() {
		return "search/nation";
	}
}
