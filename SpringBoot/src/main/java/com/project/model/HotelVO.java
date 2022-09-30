package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Hotel_table")
public class HotelVO {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="hotel_id")
	private int hotelId;
	
	@Column(name="hotel_name")
	private String hotelName;
	
	@Column(name="hotel_category")
	private String hotelCategory;
	
	@Column(name="hotel_facilities")
	private String hotelFacilities;
	
	@Column(name="hotel_price")
	private String hotelPrice;
	
	@Column(name="hotel_checkin_time")
	private String hotelCheckInTime;
	
	@Column(name="hotel_checkout_time")
	private String hotelCheckOutTime;
	
	@ManyToOne
	@JoinColumn(name="cityId")
	private CityVO cityId;
	
	@Column(name="hotel_address")
	private String hotelAddress;
	
	@Column(name="hotel_emailaddress")
	private String hotelEmailAddress;
	
	@Column(name="hotel_contact_number")
	private String hotelContactNumber;
	
	@Column(name="hotel_terms_and_conditions")
	private String hotelTermsAndConditions;
	
	@Column(name="status")
	private boolean status=true;

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public int getHotelId() {
		return hotelId;
	}

	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}

	public String getHotelName() {
		return hotelName;
	}

	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}

	public String getHotelCategory() {
		return hotelCategory;
	}

	public void setHotelCategory(String hotelCategory) {
		this.hotelCategory = hotelCategory;
	}

	public String getHotelFacilities() {
		return hotelFacilities;
	}

	public void setHotelFacilities(String hotelFacilities) {
		this.hotelFacilities = hotelFacilities;
	}

	public String getHotelPrice() {
		return hotelPrice;
	}

	public void setHotelPrice(String hotelPrice) {
		this.hotelPrice = hotelPrice;
	}

	public String getHotelCheckInTime() {
		return hotelCheckInTime;
	}

	public void setHotelCheckInTime(String hotelCheckInTime) {
		this.hotelCheckInTime = hotelCheckInTime;
	}

	public String getHotelCheckOutTime() {
		return hotelCheckOutTime;
	}

	public void setHotelCheckOutTime(String hotelCheckOutTime) {
		this.hotelCheckOutTime = hotelCheckOutTime;
	}

	public CityVO getCityId() {
		return cityId;
	}

	public void setCityId(CityVO cityId) {
		this.cityId = cityId;
	}

	public String getHotelAddress() {
		return hotelAddress;
	}

	public void setHotelAddress(String hotelAddress) {
		this.hotelAddress = hotelAddress;
	}

	public String getHotelEmailAddress() {
		return hotelEmailAddress;
	}

	public void setHotelEmailAddress(String hotelEmailAddress) {
		this.hotelEmailAddress = hotelEmailAddress;
	}

	public String getHotelContactNumber() {
		return hotelContactNumber;
	}

	public void setHotelContactNumber(String hotelContactNumber) {
		this.hotelContactNumber = hotelContactNumber;
	}

	public String getHotelTermsAndConditions() {
		return hotelTermsAndConditions;
	}

	public void setHotelTermsAndConditions(String hotelTermsAndConditions) {
		this.hotelTermsAndConditions = hotelTermsAndConditions;
	}
	
}
