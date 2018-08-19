package Model;


import java.util.List;
import java.util.ArrayList;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import View.VO;
import View.VO1;

public class DAO {
	public void insert(VO vo)
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session s=sf.openSession();
		Transaction tr=s.beginTransaction();
		s.save(vo);
		tr.commit();
		s.close();
	}
	public List<VO> search(VO vo)
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session s=sf.openSession();
		Transaction tr=s.beginTransaction();
		Query query=s.createQuery("from VO where firstName='"+vo.getFirstName()+"'");
		List<VO> entries=new ArrayList<VO>();
		entries=query.list();
		entries.get(0).getUser_id();
		tr.commit();
		s.close();
		return entries;
	}
	public void insertinsearch(VO1 vo1)
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session s=sf.openSession();
		Transaction tr=s.beginTransaction();
		s.save(vo1);
		tr.commit();
		s.close();
	}
	public void delete(VO vo)
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session s=sf.openSession();
		Transaction tr=s.beginTransaction();
		s.delete(vo);
		tr.commit();
		s.close();
	}
	public List<VO> view() 
	{
		List<VO> ls=new ArrayList<VO>();
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session s=sf.openSession();
		Transaction tr=s.beginTransaction();
		Query query=s.createQuery("from VO");
		ls=query.list();
		
		tr.commit();
		s.close();
		return ls;
	}
}
