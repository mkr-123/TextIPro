package com.textipro.erp.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.textipro.erp.entity.BuyerM;

public interface BuyerMDao extends JpaRepository<BuyerM,Long>{

	 @Query("SELECT b FROM BuyerM b WHERE b.entityType = :entityType")
	    Page<BuyerM> findByEntityType(@Param("entityType") BuyerM.EntityType entityType, Pageable pageable);
}
