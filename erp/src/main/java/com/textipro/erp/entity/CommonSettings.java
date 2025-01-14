package com.textipro.erp.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class CommonSettings {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long commonSettingsId;
	
	@Enumerated(EnumType.STRING)
	@Column(nullable = false)
	private CommonTypes types;
	@Column(nullable = false)
	private String settingsName;
	private Boolean weaveType;

}
