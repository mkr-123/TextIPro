package com.textipro.erp.service;

import java.util.List;

import com.textipro.erp.entity.Uom;
import com.textipro.erp.entity.YarnMaster;

public interface MasterService {
	
	
	
	public List<Uom> getUomList();

	public void saveYarn(YarnMaster yarnMaster);

}
