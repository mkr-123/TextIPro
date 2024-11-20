package com.textipro.erp.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.textipro.erp.entity.BuyerM;
import com.textipro.erp.entity.CityM;
import com.textipro.erp.entity.CommonSettings;
import com.textipro.erp.entity.CommonTypes;
import com.textipro.erp.entity.CountryM;
import com.textipro.erp.entity.StateM;
import com.textipro.erp.entity.YarnMaster;
import com.textipro.erp.service.MasterService;

@Controller
@RequestMapping("/master")
public class MasterController {
	@Autowired
	private MasterService masterService;
	
	@GetMapping("/yarnList")
	public String yarnList(Model model,@RequestParam(defaultValue ="1")  int pageEnteries,@RequestParam(defaultValue ="0")int pageNum) {
		Page<YarnMaster> yarnMasterListPageWise=masterService.getYarnListPageWise(pageEnteries,pageNum);
		model.addAttribute("yarnList", yarnMasterListPageWise.getContent());
		model.addAttribute("pageEnteries", pageEnteries);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("index", pageNum*pageEnteries);
		model.addAttribute("totalItems", yarnMasterListPageWise.getTotalElements());
		return "yarn";
		
	}
	
	@GetMapping("/addYarn")
	public String addYarn(Model model) {
		List<CommonSettings> uomList=masterService.getCommonSettingsBasedOnList(CommonTypes.Units.name());
		model.addAttribute("uomList", uomList);
		
		List<CommonSettings> countList=masterService.getCommonSettingsBasedOnList(CommonTypes.Counts.name());
		model.addAttribute("countList", countList);
		
		List<CommonSettings> typeList=masterService.getCommonSettingsBasedOnList(CommonTypes.Types.name());
		model.addAttribute("typeList", typeList);
		return "yarnAdd";
	}
	
	@PostMapping("/saveYarn")
	public String saveYarn(YarnMaster yarnMaster) {
	    masterService.saveYarn(yarnMaster);
	    return "redirect:/master/yarnList"; 
	}
	
	
	@GetMapping("/settingList")
	public String settingList(Model model,@RequestParam(defaultValue ="1")  int pageEnteries,@RequestParam(defaultValue ="0")int pageNum) {
		Page<CommonSettings> commonSettings=masterService.getCommonSettingListPageWise(pageEnteries,pageNum);
//		model.addAttribute("yarnList", yarnMasterListPageWise.getContent());
		model.addAttribute("pageEnteries", pageEnteries);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("index", pageNum*pageEnteries);
//		model.addAttribute("totalItems", yarnMasterListPageWise.getTotalElements());
		return "settinglist";
	}
	
	@GetMapping("/addSettings")
	public String addSetting(Model model) {
		model.addAttribute("types", CommonTypes.values());
		return"addSetting";
		
	}
	
	@PostMapping("/saveSettings")
	public String saveSettings(CommonSettings commonSettings) {
	  masterService.saveCommonSetting(commonSettings);
	  return "redirect:/master/settingList";
	}
	
	@GetMapping("/yarnMasterEdit/{yarnMasterId}")
	public String yarnMasterEdit(@PathVariable("yarnMasterId") Long yarnMasterId,Model model) {
		YarnMaster yarnMaster=masterService.getYarnMasterId(yarnMasterId);
		model.addAttribute("yarnMaster", yarnMaster);
		
		List<CommonSettings> uomList=masterService.getCommonSettingsBasedOnList(CommonTypes.Units.name());
		model.addAttribute("uomList", uomList);
		
		List<CommonSettings> countList=masterService.getCommonSettingsBasedOnList(CommonTypes.Counts.name());
		model.addAttribute("countList", countList);
		
		List<CommonSettings> typeList=masterService.getCommonSettingsBasedOnList(CommonTypes.Types.name());
		model.addAttribute("typeList", typeList);
		return "yarnAdd";
	}
	
	@GetMapping("/yarnMasterDelete/{yarnMasterId}")
	public String yarnMasterDelete(@PathVariable("yarnMasterId") Long yarnMasterId) {
		masterService.deleteYarnMaster(yarnMasterId);
		return "redirect:/master/yarnList";
	}
	
	
	@GetMapping("/buyerCustomerList")
	public String buyerCustomerList(Model model) {
		
		return "buyerCustomerList";
	}
	
	
	@GetMapping("/addBuyerCustomer")
	public String addBuyerCustomer(Model model) {
		List<CountryM> countryMlist=masterService.getCountryList();
		  model.addAttribute("countryList", countryMlist);
		return "buyeradd";
	}
	
	@GetMapping("/getStates")
	@ResponseBody
	public Map<String,Object> getStates(@RequestParam("countryId") Long countryId) {
		List<StateM> states=masterService.getStatesByCountryId(countryId);
		Map<String,Object> map=new HashMap<String, Object>();
		map.put("stateList", states);
		map.put("success", true);
		return map;
	}
	
	@GetMapping("/getCities")
	@ResponseBody
	public  Map<String,Object> getCities(@RequestParam("stateId") Long stateId){
		List<CityM> cityMs=masterService.getCityByStateId(stateId);
		Map<String,Object> map=new HashMap<String, Object>();
		map.put("cityList", cityMs);
		map.put("success", true);
		return map;
	}
	
	@PostMapping("/saveBuyerM")
	public String saveBuyerM(BuyerM buyerM) {
		masterService.saveBuyerM(buyerM);
		return "redirect:/master/buyerCustomerList"; 
	}
}
