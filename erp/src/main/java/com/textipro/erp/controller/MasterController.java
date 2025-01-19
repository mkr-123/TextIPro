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
import com.textipro.erp.entity.BuyerM.EntityType;
import com.textipro.erp.entity.CityM;
import com.textipro.erp.entity.CommonSettings;
import com.textipro.erp.entity.CommonTypes;
import com.textipro.erp.entity.CountryM;
import com.textipro.erp.entity.Fabric;
import com.textipro.erp.entity.StateM;
import com.textipro.erp.entity.TermMaster;
import com.textipro.erp.entity.YarnMaster;
import com.textipro.erp.service.MasterService;
import com.textipro.util.CommonUtils;
import com.textipro.util.TextIProConstants;

@Controller
@RequestMapping("/master")
public class MasterController {
	@Autowired
	private MasterService masterService;
	
	@GetMapping("/yarnList")
	public String yarnList(Model model,@RequestParam(defaultValue =TextIProConstants.pageLimit)  int pageEnteries,@RequestParam(defaultValue ="0")int pageNum) {
		Page<YarnMaster> yarnMasterListPageWise=masterService.getYarnListPageWise(pageEnteries,pageNum);
		CommonUtils.paginationUtil(yarnMasterListPageWise.getContent(), pageEnteries, pageNum, yarnMasterListPageWise.getTotalElements(), model);
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
		
		List<CommonSettings> colorList=masterService.getCommonSettingsBasedOnList(CommonTypes.Colours.name());
		model.addAttribute("colorList", colorList);
		return "yarnAdd";
	}
	
	@PostMapping("/saveYarn")
	public String saveYarn(YarnMaster yarnMaster) {
	    masterService.saveYarn(yarnMaster);
	    return "redirect:/master/yarnList"; 
	}
	
	
	@GetMapping("/settingList")
	public String settingList(Model model,@RequestParam(defaultValue =TextIProConstants.pageLimit)  int pageEnteries,@RequestParam(defaultValue ="0")int pageNum) {
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
		
		List<CommonSettings> colorList=masterService.getCommonSettingsBasedOnList(CommonTypes.Colours.name());
		model.addAttribute("colorList", colorList);
		return "yarnAdd";
	}
	
	@GetMapping("/yarnMasterDelete/{yarnMasterId}")
	public String yarnMasterDelete(@PathVariable("yarnMasterId") Long yarnMasterId) {
		masterService.deleteYarnMaster(yarnMasterId);
		return "redirect:/master/yarnList";
	}
	
	
	@GetMapping("/buyerCustomerList")
	public String buyerCustomerList(Model model,@RequestParam(defaultValue =TextIProConstants.pageLimit)  int pageEnteries,@RequestParam(defaultValue ="0")int pageNum,@RequestParam("entityTypeString") String entityTypeString) {
		EntityType entityType = getEntityType(entityTypeString);
		Page<BuyerM> buyerMList=masterService.getBuyerMListPage(pageEnteries,pageNum,entityType);
		CommonUtils.paginationUtil(buyerMList.getContent(), pageEnteries, pageNum, buyerMList.getTotalElements(), model);
		model.addAttribute("entityTypeString", entityTypeString);
		return "buyerCustomerList";
	}
	
	
	@GetMapping("/addBuyerCustomer")
	public String addBuyerCustomer(Model model,@RequestParam("entityTypeString") String entityTypeString) {
		EntityType entityType = getEntityType(entityTypeString);
		List<CountryM> countryMlist=masterService.getCountryList();
		  model.addAttribute("countryList", countryMlist);
		  model.addAttribute("entityType", entityType);
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
		return "redirect:/master/buyerCustomerList?entityTypeString="+buyerM.getEntityType().name(); 
	}
	
	@GetMapping("/buyerMasterEdit/{buyerMasterId}/{entityTypeString}")
	public String buyerMasterEdit(@PathVariable("buyerMasterId")Long buyerMId,Model model,@PathVariable("entityTypeString")String entityTypeString) {
		BuyerM buyerM=masterService.getBuyerMgetById(buyerMId);
		model.addAttribute("buyerM", buyerM);
		
		List<CountryM> countryMlist=masterService.getCountryList();
		model.addAttribute("countryList", countryMlist);
		
		List<StateM> states=null;
		if(buyerM.getCountryM()!=null) {
		 states=masterService.getStatesByCountryId(buyerM.getCountryM().getCountryMId());
		}else {
		 states=masterService.getStatesList();
		}
		model.addAttribute("states", states);
		
		List<CityM> cityMs=null;
		if(buyerM.getStateM()!=null) {
			cityMs=masterService.getCityByStateId(buyerM.getStateM().getStateMId());
		}else {
			cityMs=masterService.getCityList();
		}
		model.addAttribute("cityMs", cityMs);
		model.addAttribute("entityType", entityTypeString);
		  
		return "buyeradd";
	}
	
	@GetMapping("/buyerMasterDelete/{buyerMasterId}/{entityTypeString}")
	public String deleteBuyerByBuyerId(@PathVariable("buyerMasterId")Long buyerMId,@PathVariable("entityTypeString") String entityTypeString) {
		masterService.deleteBuyerM(buyerMId);
		return "redirect:/master/buyerCustomerList?entityTypeString="+entityTypeString; 
	}
	
	public EntityType getEntityType(String entityTypeString) {
		EntityType entityType = null;
		if(entityTypeString.equals("buyer")) {
			entityType=BuyerM.EntityType.buyer;
		}else if(entityTypeString.equals("vendor")) {
			entityType=BuyerM.EntityType.vendor;
		}else if(entityTypeString.equals("agent")) {
			entityType=BuyerM.EntityType.agent;
		}else if(entityTypeString.equals("consignee")) {
			entityType=BuyerM.EntityType.consignee;
		}else {
			entityType=BuyerM.EntityType.transportation;
		}
		return entityType;
	}
	@GetMapping("/termsList")
	public String getTermsList(Model model,@RequestParam(defaultValue =TextIProConstants.pageLimit)  int pageEnteries,@RequestParam(defaultValue ="0")int pageNum) {
		Page<TermMaster> termMlist=masterService.getTermMListPage(pageEnteries,pageNum);
		CommonUtils.paginationUtil(termMlist.getContent(), pageEnteries, pageNum, termMlist.getTotalElements(), model);
		return "termsList";
	}
	@GetMapping("/addTerm")
	public String addTrem() {
		return "addTerm";
	}
	
	@PostMapping("/saveTerm")
	public String saveTerm(TermMaster termMaster) {
		masterService.saveTermMaster(termMaster);
		return"redirect:/master/termsList";
	}
	
	@GetMapping("/termMasterEdit/{termId}")
	public String termMasterEdit(@PathVariable("termId") Long termMasterId,Model model) {
		TermMaster termMaster=masterService.getTermMasterId(termMasterId);
		model.addAttribute("termMaster", termMaster);
		return "addTerm";
	}
	
	@GetMapping("/termMasterDelete/{termDelete}")
	public String termMasterDelete(@PathVariable("termDelete") Long termDeleteId) {
		masterService.deleteTermMasterId(termDeleteId);
		return "redirect:/master/termsList";
	}
	
	@GetMapping("/fabricList")
	public String fabricList() {
		return "fabriclist";
	}
	
	@GetMapping("/addFabric")
	public String fabricAdd(Model model) {
		List<CommonSettings> weaveList=masterService.getCommonSettingsForWeave(true);
		model.addAttribute("weaveList", weaveList);
		
		List<CommonSettings> uomList=masterService.getCommonSettingsBasedOnList(CommonTypes.Units.name());
		model.addAttribute("uomList", uomList);
		
		List<YarnMaster> yarnMasterList=masterService.getYarnMasters();
		model.addAttribute("yarnMasterList", yarnMasterList);
		return "fabricadd";
	}
	
	@PostMapping("/saveFabric")
	public String saveFabric(Fabric fabric) {
		masterService.saveFabric(fabric);
		return "redirect:/master/fabricList";
	}
	
	
	

}
