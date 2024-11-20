package com.textipro.erp.entity;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class CountryM {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long countryMId;
	@Column(nullable = false,unique = true)
	private String countryName;

}
