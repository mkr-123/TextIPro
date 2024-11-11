package com.textipro.erp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.textipro.erp.entity.Uom;
import com.textipro.erp.entity.YarnMaster;
import com.textipro.erp.service.MasterService;
import com.textipro.erp.service.impl.MasterServiceImpl;

@Controller
@RequestMapping("/master")
public class MasterController {
	@Autowired
	private MasterService masterService;
	
	@GetMapping("/yarnList")
	public String yarnList() {
		return "yarn";
		
	}
	
	@GetMapping("/addYarn")
	public String addYarn(Model model) {
		List<Uom> uomList=masterService.getUomList();
		model.addAttribute("uomList", uomList);
		return "yarnAdd";
	}
	
	@PostMapping("/saveYarn")
	public String saveYarn(YarnMaster yarnMaster) {
	    masterService.saveYarn(yarnMaster);
	    return "redirect:/master/yarnList"; 
	}


}
