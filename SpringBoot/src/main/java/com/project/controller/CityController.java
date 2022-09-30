package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.CityVO;
import com.project.model.HotelVO;
import com.project.service.CityService;
import com.project.service.HotelService;

@Controller
public class CityController {

	@Autowired
	private CityService cityService;

	@Autowired
	private HotelService hotelService;

	@GetMapping("admin/home")
	public ModelAndView home() {
		return new ModelAndView("admin/index");
	}

	
	@GetMapping("admin/loadCity")
	public ModelAndView loadCity() {
		return new ModelAndView("admin/addCity", "CityVO", new CityVO()).addObject("pageHader","Add city");
	}

	@GetMapping("admin/viewCity")
	public ModelAndView viewCity() {
		List<CityVO> cityList = this.cityService.display();
		return new ModelAndView("admin/viewCity", "cityList", cityList);
	}

	@PostMapping("admin/saveCity")
	public ModelAndView saveCity(@ModelAttribute CityVO cityVO) {
		this.cityService.insert(cityVO);
		return new ModelAndView("redirect:/admin/viewCity");

	}

	@GetMapping("admin/deleteCity")
	public ModelAndView deleteCity(@RequestParam("cityId") int cityId) {
		System.out.println("cityId " + cityId);

		/*
		 * cityVO.setCityId(cityId); hotelVO.setCityId(cityVO);
		 */

		List<HotelVO> hotelList = this.hotelService.delete(cityId);
		System.out.println(hotelList.size());

		if (hotelList.size() > 0) {

			for (int i = 0; i < hotelList.size(); i++) {
				HotelVO hotelVO = hotelList.get(i);
				hotelVO.setStatus(false);
				this.hotelService.insert(hotelVO);
			}

			
		}
		List<CityVO> cityList = this.cityService.findById(cityId);
		CityVO cityVO = cityList.get(0);
		cityVO.setStatus(false);

		this.cityService.insert(cityVO);
		return new ModelAndView("redirect:/admin/viewCity");
	}

	@GetMapping("admin/editCity")
	public ModelAndView editCity(@ModelAttribute CityVO cityVO, @RequestParam int cityId) {
		List<CityVO> cityList = this.cityService.findById(cityId);
		cityVO = cityList.get(0);
		return new ModelAndView("admin/addCity", "CityVO", cityVO).addObject("pageHader","Edit city");
	}

}
