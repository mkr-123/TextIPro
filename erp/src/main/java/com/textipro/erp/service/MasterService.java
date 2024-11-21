package com.textipro.erp.service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.textipro.erp.entity.BuyerM;
import com.textipro.erp.entity.CityM;
import com.textipro.erp.entity.CommonSettings;
import com.textipro.erp.entity.CountryM;
import com.textipro.erp.entity.StateM;
import com.textipro.erp.entity.YarnMaster;

public interface MasterService {
	
	
	
	public List<CommonSettings> getCommonSettingsBasedOnList(String type);

	public void saveYarn(YarnMaster yarnMaster);

	public Page<YarnMaster> getYarnListPageWise(int pageEnteries, int pageNum);

	public Page<CommonSettings> getCommonSettingListPageWise(int pageEnteries, int pageNum);

	public void saveCommonSetting(CommonSettings commonSettings);

	public YarnMaster getYarnMasterId(Long yarnMasterId);

	public void deleteYarnMaster(Long yarnMasterId);

	public List<CountryM> getCountryList();

	public List<StateM> getStatesByCountryId(Long countryId);

	public List<CityM> getCityByStateId(Long stateId);

	public void saveBuyerM(BuyerM buyerM);

	public Page<BuyerM> getBuyerMListPage(int pageEnteries, int pageNum);


}
