package com.textipro.erp.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.textipro.erp.entity.StateM;

public interface StateMDao extends JpaRepository<StateM,Long>{

	@Query("SELECT s FROM StateM s WHERE s.countryM.countryMId=:countryId")
	List<StateM> getStatesByCountryId(Long countryId);

}
