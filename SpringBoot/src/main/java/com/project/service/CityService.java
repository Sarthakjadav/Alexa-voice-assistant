package com.project.service;

import java.util.List;

import com.project.model.CityVO;

public interface CityService {

	void insert(CityVO cityVO);

	List<CityVO> display();

	List<CityVO> findById(int cityId);

}
