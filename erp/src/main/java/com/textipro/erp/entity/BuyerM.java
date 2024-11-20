package com.textipro.erp.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.Lob;
import jakarta.persistence.ManyToOne;
import lombok.Data;

@Entity
@Data
public class BuyerM {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long buyerMId;
	@Column(nullable = false)
	private String buyerName;
	private String gstNo;
	private String panCard;
	@ManyToOne
	@JoinColumn(name = "countryMId")
	private CountryM countryM;
	@ManyToOne
	@JoinColumn(name = "stateMId")
	private StateM stateM;
	@ManyToOne
	@JoinColumn(name = "cityMId")
	private CityM cityM;
	private String address;
	@Lob
	private byte[] image;

}
