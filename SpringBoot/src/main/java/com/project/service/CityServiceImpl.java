package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.CityDAO;
import com.project.model.CityVO;

@Service
@Transactional
public class CityServiceImpl implements CityService {

	@Autowired
	private CityDAO cityDAO;

	@Override
	public void insert(CityVO cityVO) {
		// TODO Auto-generated method stub
		this.cityDAO.insert(cityVO);
	}

	@Override
	public List<CityVO> display() {
		// TODO Auto-generated method stub
		return this.cityDAO.display();
	}

	@Override
	public List<CityVO> findById(int cityId) {
		// TODO Auto-generated method stub
		return this.cityDAO.findById(cityId);
	}

}
