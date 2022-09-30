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
@Table(name="booking_table")
public class BookingVO {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="booking_id")
	private int id;
	
	@Column(name="booking_date")
	private String bookingdate;
	
	@ManyToOne
	@JoinColumn(name="loginid")
	private LoginVO loginVO;
	
	@ManyToOne
	@JoinColumn(name="hotelid")
	private HotelVO hotelVO;
	
	private boolean status=true;

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBookingdate() {
		return bookingdate;
	}

	public void setBookingdate(String bookingdate) {
		this.bookingdate = bookingdate;
	}

	public LoginVO getLoginVO() {
		return loginVO;
	}

	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}

	public HotelVO getHotelVO() {
		return hotelVO;
	}

	public void setHotelVO(HotelVO hotelVO) {
		this.hotelVO = hotelVO;
	}

}
