package com.textipro.erp.entity;

import org.hibernate.annotations.GenericGenerator;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
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
	@JoinColumn(name = "uom_id", nullable = false)
	private Uom uom;
	@Column(nullable = false)
	private Long count;
	@Column(nullable = false)
	private String types;
	@Column(nullable = false)
	private Double conversion;
}
