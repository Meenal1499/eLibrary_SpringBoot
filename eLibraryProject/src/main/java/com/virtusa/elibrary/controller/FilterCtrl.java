package com.virtusa.elibrary.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.virtusa.elibrary.model.Filter;
import com.virtusa.elibrary.service.FilterService;

@Controller
public class FilterCtrl {
	@Autowired
	private FilterService service;
	
	@RequestMapping("/")
	public String viewHomePage(Model model, @Param("keyword") String keyword) {
		List<Filter> listBooks = service.listAll(keyword);
		model.addAttribute("listBooks", listBooks);
		model.addAttribute("keyword", keyword);
		
		return "index";
	}
	
	@GetMapping("/fltr")
	public String listBooks(Model m) {
		List<Filter> theBooks = service.findAll();
		m.addAttribute("listBooks",theBooks);
		
		return "index";
	}
}
