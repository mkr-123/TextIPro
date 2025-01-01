package com.textipro.erp.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.Data;

@Entity
@Data
public class WarpDetails {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long warpId;
	@ManyToOne
	@JoinColumn(name = "yarnMasterId")
	private YarnMaster yarnMaster;
//	need calrity for color
	private Double shrinkagePer;
	private Double meters;
	@ManyToOne
	@JoinColumn(name="fabricId")
	private Fabric fabric;

}
