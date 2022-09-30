package com.project.dao;

import java.util.List;

import com.project.model.CityVO;

public interface CityDAO {

	void insert(CityVO cityVO);

	List<CityVO> display();

	List<CityVO> findById(int cityId);

}
