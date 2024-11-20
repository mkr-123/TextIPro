package com.textipro.erp.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.textipro.erp.entity.CityM;

public interface CityMDao extends JpaRepository<CityM,Long> {
	
	@Query("SELECT c FROM CityM c WHERE c.stateM.stateMId=:stateId")
	List<CityM> getCityByStateId(Long stateId);

}
