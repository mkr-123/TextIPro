package com.textipro.erp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.textipro.erp.dao.UomDAO;
import com.textipro.erp.dao.YarnMasterDao;
import com.textipro.erp.entity.Uom;
import com.textipro.erp.entity.YarnMaster;
import com.textipro.erp.service.MasterService;

@Service
public class MasterServiceImpl implements MasterService{
	@Autowired
	private UomDAO uomDao;
	
	@Autowired
	private YarnMasterDao yarnMasterDao;

	@Override
	public List<Uom> getUomList() {
		// TODO Auto-generated method stub
		return uomDao.findAll();
	}

	@Override
	public void saveYarn(YarnMaster yarnMaster) {
		// TODO Auto-generated method stub
		yarnMasterDao.save(yarnMaster);
	}
	
	

}
