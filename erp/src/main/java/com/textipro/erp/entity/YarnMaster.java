package com.textipro.erp.entity;

import org.hibernate.annotations.GenericGenerator;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;
import lombok.Data;
import lombok.NonNull;

@Entity
@Data
public class YarnMaster {
	
	@Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long yarnMasterId;
	@NonNull
	private String yarnName;
	@OneToOne
	@NonNull
	private Unit unit;
	@NonNull
	private Long count;
	@NonNull
	private String types;

}
