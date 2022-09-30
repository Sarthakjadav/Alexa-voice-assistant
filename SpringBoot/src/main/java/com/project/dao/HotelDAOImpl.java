package com.project.dao;

import java.util.ArrayList;
import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.hibernate.Transaction;

import com.project.model.CityVO;
import com.project.model.HotelVO;

@Repository
public class HotelDAOImpl implements HotelDAO {

	@Autowired 
	private SessionFactory sessionFactory;
	@Override
	public void insert(HotelVO hotelVO) {
		// TODO Auto-generated method stub
		try
		{
			Session session=sessionFactory.getCurrentSession();
			session.saveOrUpdate(hotelVO);
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		
	}
	@Override
	public List<HotelVO> display() {
		// TODO Auto-generated method stub
		List<HotelVO> hotelList=new ArrayList<HotelVO>();
		try
		{
			Session session=sessionFactory.getCurrentSession();
			Query q=session.createQuery("from HotelVO where status=true");
			hotelList=(List<HotelVO>)q.list();
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return hotelList;
	}
	@Override
	public List<HotelVO> findById(int hotelId) {
		// TODO Auto-generated method stub
		List<HotelVO> hotelList=new ArrayList<HotelVO>();
		try
		{
			Session session=sessionFactory.getCurrentSession();
			Query q=session.createQuery("from HotelVO where status=true and id="+hotelId);
			hotelList=(List<HotelVO>)q.list();
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return hotelList;
	}
	@Override
	public List<HotelVO> delete(int cityId) {
		// TODO Auto-generated method stub
		List<HotelVO> hotelList=new ArrayList<HotelVO>();
		try{
			
			Session session = sessionFactory.getCurrentSession();
			System.out.println("Query ::: from HotelVO where cityId="+cityId);
			Query q = session.createQuery("from HotelVO where cityId="+cityId);
			hotelList=(List<HotelVO>)q.list();
			System.out.println(hotelList);
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return hotelList;
		
	}

}
