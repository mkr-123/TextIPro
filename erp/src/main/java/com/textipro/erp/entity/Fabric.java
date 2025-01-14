package com.textipro.erp.entity;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.Lob;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import lombok.Data;

@Entity
@Data
public class Fabric {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long fabricId;
	private FabricType fabricType;
	private enum FabricType{
		GREGIE,
		FINISHED,
		FINISHED_SHADE
	}
	private Double fabricCode;
	private String fabricName;
	@ManyToOne
	@JoinColumn(name = "commonSettingsWeave_id")
	private CommonSettings commonSettingsForWeave;
	private Double fabricQuality;
	@ManyToOne
	@JoinColumn(name = "commonSettingsUnits_id")
	private CommonSettings commonSettingsForUnits;
	private Double epi;
	private Double ppi;
	private Double greigeCode;
	private Double totalEnds;
	private Double gsm;
	private Double glm;
	private Double igst;
	private Double cgst;
	private Double sgst;
	@Lob
	private byte[] image;
	@OneToMany(mappedBy = "fabric")
	private List<WarpDetails> warpDetails;
	@OneToMany(mappedBy = "fabric")
	private List<WeftDetails> weftDetails;
}
