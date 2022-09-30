package com.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.CityVO;

@Repository
public class CityDAOImpl implements CityDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void insert(CityVO cityVO) {
		// TODO Auto-generated method stub
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(cityVO);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	@Override
	public List<CityVO> display() {
		List<CityVO> cityList=new ArrayList<CityVO>();
		// TODO Auto-generated method stub
		try
		{
			Session session = sessionFactory.getCurrentSession();
			Query q = session.createQuery("from CityVO where status=true");
			cityList = (List<CityVO>)q.list();
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		System.out.println(cityList);
		return cityList;
	}

	@Override
	public List<CityVO> findById(int cityId) {
		// TODO Auto-generated method stub
		List<CityVO> cityList=new ArrayList<CityVO>();
		try
		{
			Session session=sessionFactory.getCurrentSession();
			Query q=session.createQuery("from CityVO where status=true and id="+cityId);
			cityList=(List<CityVO>)q.list();
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return cityList;
	}

}
