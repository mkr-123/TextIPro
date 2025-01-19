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
public class TermMaster {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long termMasterId;
	@Enumerated(EnumType.STRING)
	@Column(nullable = false)
	private TypeOfTerms typeOfTerms;
	
	public enum TypeOfTerms{
		paymentTerms,
		deliveryTerms
	}
	
	private String title;
	private String description;
	private Long noOfDays;
	private Double intrest;

}
