package com.textipro.erp.entity;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.Lob;
import jakarta.persistence.ManyToOne;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Pattern;
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
//	@Pattern(regexp = "^[0-9]{10}$", message = "Mobile number must be exactly 10 digits")
	@Column(unique = true)
	private String mobileNo;
	@Email(message = "Invalid email format")
	@Column(unique = true)
	private String email;
	@Enumerated(EnumType.STRING)
	@Column(nullable = false)
	private EntityType entityType;
	
	public enum EntityType{
		buyer,
		vendor,
		agent,
		consignee,
		transportation
	}

}
