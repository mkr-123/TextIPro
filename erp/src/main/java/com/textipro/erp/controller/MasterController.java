package com.textipro.erp.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/master")
public class MasterController {
	
	@GetMapping("/yarnList")
	public String yarnList() {
		return "yarn";
		
	}
	
	@GetMapping("/addYarn")
	public String addYarn(Model model) {
		model.addAttribute("headers", "Yarn Master");
		model.addAttribute("dynamiclink","${pageContext.request.contextPath}/master/yarnList");
		return "yarnAdd";
	}

}
