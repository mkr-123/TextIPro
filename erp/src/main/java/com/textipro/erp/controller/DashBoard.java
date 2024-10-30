package com.textipro.erp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/dashBoard")
public class DashBoard {
	
	@GetMapping("/getDetails")
	public String getCompleteDetails(Model model) {
		return "dash";
	}

}
