package com.textipro.erp.entity;

import org.hibernate.annotations.GenericGenerator;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class Uom {
	@Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long uomId;
	private String unitName;
}
