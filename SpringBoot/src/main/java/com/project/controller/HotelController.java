package com.project.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
public class HotelController {
	@Autowired
	private CityService cityService;
	
	@Autowired
	private HotelService hotelService;
	
	@GetMapping("admin/loadHotel")
	public ModelAndView loadHotel(){
		
		List<CityVO> cityList=this.cityService.display();
		System.out.println(cityList.size());
		return new ModelAndView("admin/addHotel","cityList",cityList).addObject("HotelVO",new HotelVO()).addObject("pageHader","Add Hotel");
	}
	
	@GetMapping("admin/viewHotel")
	public ModelAndView viewHotel(){
		List<HotelVO> hotelList=this.hotelService.display();
;		return new ModelAndView("admin/viewHotel","hotelList",hotelList);
	}
	
	@PostMapping("admin/saveHotel")
	public ModelAndView saveHotel(@ModelAttribute HotelVO HotelVO,HttpServletRequest request){
		
		/*String []facilities=request.getParameterValues("facilities");
		String basic_facilities="";
		for (int i = 0; i < facilities.length; i++) {
			basic_facilities+=facilities[i]+",";
		}
		HotelVO.setHotelFacilities(basic_facilities);*/
		this.hotelService.insert(HotelVO);
		return new ModelAndView("redirect:/admin/loadHotel");
	}
	
	@GetMapping("admin/deleteHotel")
	public ModelAndView deleteHotel(@ModelAttribute HotelVO hotelVO,@RequestParam int hotelId)
	{
		List<HotelVO> hotelList = this.hotelService.findById(hotelId);
		hotelVO=hotelList.get(0);
		hotelVO.setStatus(false);
		
		this.hotelService.insert(hotelVO);
		return new ModelAndView("redirect:/admin/viewHotel");
	}
	@GetMapping("admin/editHotel")
	public ModelAndView editHotel(@ModelAttribute HotelVO hotelVO,@RequestParam int hotelId)
	{
		List<HotelVO> hotellist=this.hotelService.findById(hotelId);
		hotelVO=hotellist.get(0);
		List<CityVO> cityList=this.cityService.display();
		/*List<HotelVO> hotellist = this.hotelService.display();*/
		System.out.println(hotellist);
		HotelVO hotelvo = hotellist.get(0);
		System.out.println(hotelvo);
		String fac = hotelvo.getHotelFacilities();
		//String[] fc2=fac.split(",");
		System.out.println(">>>>>>>>>>>>>>"+fac.contains("FoodCourt"));
		//System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+fc2[2]);

		return new ModelAndView("admin/addHotel","HotelVO",hotelVO).addObject("cityList",cityList).addObject("pageHader","Edit Hotel").addObject("facilities",fac);
	}

}
