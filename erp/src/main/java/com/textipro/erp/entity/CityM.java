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
public class CityM {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long cityMId;
	@Column(nullable = false)
	private String cityName;
	@ManyToOne
	@JoinColumn(name = "stateMId", nullable = false)
	private StateM stateM;


}
