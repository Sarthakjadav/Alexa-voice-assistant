package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.HotelDAO;
import com.project.model.HotelVO;

@Service
@Transactional

public class HotelServiceImpl implements HotelService {

	@Autowired
	private HotelDAO hotelDAO;

	@Override
	public void insert(HotelVO hotelVO) {
		// TODO Auto-generated method stub
		this.hotelDAO.insert(hotelVO);

	}

	@Override
	public List<HotelVO> display() {
		// TODO Auto-generated method stub
		List<HotelVO> hotellist = this.hotelDAO.display();
		System.out.println(hotellist);
		HotelVO hotelvo = hotellist.get(0);
		System.out.println(hotelvo);
		String fac = hotelvo.getHotelFacilities();
		String[] fac2 = fac.split(",");
		System.out.println(fac.contains("Parking"));
		System.out.println(fac2.length);

		// return this.hotelDAO.display();
		return hotellist;
	}

	@Override
	public List<HotelVO> findById(int hotelId) {
		// TODO Auto-generated method stub
		return this.hotelDAO.findById(hotelId);
	}

	@Override
	public List<HotelVO> delete(int cityId) {
		// TODO Auto-generated method stub
		return this.hotelDAO.delete(cityId);

	}

}
