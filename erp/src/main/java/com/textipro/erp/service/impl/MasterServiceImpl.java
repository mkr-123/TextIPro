package com.textipro.erp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.textipro.erp.dao.CommonSettingsDao;
import com.textipro.erp.dao.YarnMasterDao;
import com.textipro.erp.entity.CommonSettings;
import com.textipro.erp.entity.YarnMaster;
import com.textipro.erp.service.MasterService;

@Service
public class MasterServiceImpl implements MasterService{
	
	@Autowired
	private YarnMasterDao yarnMasterDao;
	
	@Autowired
	private CommonSettingsDao commonSettingsDao;

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

	
	

}
