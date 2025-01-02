package com.textipro.util;

import java.util.List;

import org.springframework.ui.Model;

public class CommonUtils {
	
	public static void paginationUtil(List dataList,int pageEntries,int pageNum,long totalItems,Model model) {
		model.addAttribute("datalist", dataList);
		model.addAttribute("pageEnteries", pageEntries);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("index", pageNum*pageEntries);
		model.addAttribute("totalItems", totalItems);
		
	}

}
