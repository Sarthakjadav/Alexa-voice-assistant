package com.project.service;

import java.util.List;

import com.project.model.HotelVO;

public interface HotelService {

	void insert(HotelVO hotelVO);

	List<HotelVO> display();
	
	List<HotelVO> findById(int hotelId);
	
	List<HotelVO> delete(int cityId);

}
