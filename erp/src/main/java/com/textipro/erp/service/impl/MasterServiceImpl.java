package com.textipro.erp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.textipro.erp.dao.BuyerMDao;
import com.textipro.erp.dao.CityMDao;
import com.textipro.erp.dao.CommonSettingsDao;
import com.textipro.erp.dao.CountryMDao;
import com.textipro.erp.dao.StateMDao;
import com.textipro.erp.dao.YarnMasterDao;
import com.textipro.erp.entity.BuyerM;
import com.textipro.erp.entity.CityM;
import com.textipro.erp.entity.CommonSettings;
import com.textipro.erp.entity.CountryM;
import com.textipro.erp.entity.StateM;
import com.textipro.erp.entity.YarnMaster;
import com.textipro.erp.entity.BuyerM.EntityType;
import com.textipro.erp.service.MasterService;

@Service
public class MasterServiceImpl implements MasterService{
	
	@Autowired
	private YarnMasterDao yarnMasterDao;
	
	@Autowired
	private CommonSettingsDao commonSettingsDao;
	
	@Autowired
	private CountryMDao countryMDao;
	
	@Autowired
	private StateMDao stateMDao;
	
	@Autowired
	private CityMDao cityMDao;
	
	@Autowired
	private BuyerMDao buyerMDao;

	@Override
	public List<CommonSettings> getCommonSettingsBasedOnList(String type) {
		return commonSettingsDao.findAll().stream().filter(c->(c.getTypes().name()).equals(type)).toList();
	}

	@Override
	public void saveYarn(YarnMaster yarnMaster) {
		yarnMasterDao.save(yarnMaster);
	}

	@Override
	public Page<YarnMaster> getYarnListPageWise(int pageEnteries,int pageNum) {
		 Pageable pageable = PageRequest.of(pageNum, pageEnteries);
		return yarnMasterDao.findAll(pageable);
	}

	@Override
	public Page<CommonSettings> getCommonSettingListPageWise(int pageEnteries, int pageNum) {
		 Pageable pageable = PageRequest.of(pageNum, pageEnteries);
		return commonSettingsDao.findAll(pageable);
	}

	@Override
	public void saveCommonSetting(CommonSettings commonSettings) {
		commonSettingsDao.save(commonSettings);
	}

	@Override
	public YarnMaster getYarnMasterId(Long yarnMasterId) {
		
		return yarnMasterDao.findById(yarnMasterId).get();
	}

	@Override
	public void deleteYarnMaster(Long yarnMasterId) {
		YarnMaster yarnMaster=getYarnMasterId(yarnMasterId);
		yarnMasterDao.delete(yarnMaster);
	}

	@Override
	public List<CountryM> getCountryList() {
		// TODO Auto-generated method stub
		return countryMDao.findAll();
	}

	@Override
	public List<StateM> getStatesByCountryId(Long countryId) {

		return stateMDao.getStatesByCountryId(countryId);
	}

	@Override
	public List<CityM> getCityByStateId(Long stateId) {
		
		return cityMDao.getCityByStateId(stateId);
	}

	@Override
	public void saveBuyerM(BuyerM buyerM) {
		if (buyerM.getEmail() != null && buyerM.getEmail().isEmpty()) {
		    buyerM.setEmail(null);
		}
		if (buyerM.getMobileNo() != null && buyerM.getMobileNo().isEmpty()) {
		    buyerM.setMobileNo(null);
		}
		buyerMDao.save(buyerM);
	}

	@Override
	public Page<BuyerM> getBuyerMListPage(int pageEnteries, int pageNum,EntityType entityType) {
		Pageable pageable = PageRequest.of(pageNum, pageEnteries);
		return buyerMDao.findByEntityType(entityType,pageable);
	}

	@Override
	public BuyerM getBuyerMgetById(Long buyerMId) {
		return buyerMDao.findById(buyerMId).get();
	}

	@Override
	public List<StateM> getStatesList() {
		return stateMDao.findAll();
	}

	@Override
	public List<CityM> getCityList() {
		return cityMDao.findAll();
	}

	@Override
	public void deleteBuyerM(Long buyerMId) {
		BuyerM buyerM=getBuyerMgetById(buyerMId);
		buyerMDao.delete(buyerM);
	}

	
	

}
