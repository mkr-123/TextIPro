package com.textipro.erp.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.Data;

@Entity
@Data
public class StateM {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long stateMId;
	@Column(nullable = false,unique = true)
	private String stateName;
	@ManyToOne
	@JoinColumn(name = "countryMId", nullable = false)
	private CountryM countryM;

}
