package com.textipro.erp.entity;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.Data;
import lombok.NoArgsConstructor;


@Entity
@Data
@NoArgsConstructor
public class YarnMaster {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long yarnMasterId;
	@Column(nullable = false,unique = true)
	private String yarnName;
	@ManyToOne
	@JoinColumn(name = "commonSettingsUnits_id", nullable = false)
	private CommonSettings commonSettingsForUnits;
	@ManyToOne
	@JoinColumn(name = "commonSettingsCounts_id", nullable = false)
	private CommonSettings commonSettingsForCounts;
	@ManyToOne
	@JoinColumn(name = "commonSettingsTypes_id", nullable = false)
	private CommonSettings commonSettingsForTypes;
	@ManyToOne
	@JoinColumn(name = "commonSettingsColors_id", nullable = false)
	private CommonSettings commonSettingsForColors;
	@Column(nullable = false)
	private Double conversion;
}
