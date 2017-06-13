package org.kscb.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.kscb.dao.PageManagerDAO;
import org.kscb.entities.Page;

public class PageManagerImplDAO implements PageManagerDAO<Page, String>{
	
	private Session currentSession;
	
	private Transaction currentTransaction;
	
	public Session openCurrentSessionwithTransaction() {
		currentSession = getSessionFactory().openSession();
		currentTransaction = currentSession.beginTransaction();
		return currentSession;
	}
	
	public void closeCurrentSessionwithTransaction() {
		currentTransaction.commit();
		currentSession.close();
	}
	
	public Session getCurrentSession() {
		return currentSession;
	}
	
	private static SessionFactory getSessionFactory() {
		Configuration configuration = new Configuration().configure();
		StandardServiceRegistryBuilder builder = 
				new StandardServiceRegistryBuilder().applySettings(configuration.getProperties());
		SessionFactory sessionFactory = configuration.buildSessionFactory(builder.build());
		return sessionFactory;
	}
	
	public Session openSession() {
		currentSession = getSessionFactory().openSession();
		return currentSession;
	}
	
	public void closeSession() {
		currentSession.close();
	}

	@Override
	public Page findPageByID(String pageID) {
		Query q = getCurrentSession().createQuery("from Page WHERE id = :pid");
		q.setParameter("pid", pageID);
		List<Page> page = q.list();
		if(page!=null && page.size()>0){
			return page.get(0);
		}
		return null;
	}

	@Override
	public Page findPageByInstanceName(String instanceName) {
		Query q = getCurrentSession().createQuery("from Page WHERE instanceName = :instance");
		q.setParameter("instance", instanceName);
		List<Page> page = q.list();
		if(page!=null && page.size()>0){
			return page.get(0);
		}
		return null;
	}

	public void persist(Page entity) {
		getCurrentSession().save(entity);
	}
	
	public void update(Page entity) {
		getCurrentSession().update(entity);
	}

	@Override
	public List<Page> findUnattachedPages() {
		Query q = getCurrentSession().createQuery("from Page WHERE isAttached = :isa AND instanceName != 'HOME_PAGE'");
		q.setParameter("isa", "0");
		List<Page> page = q.list();
		return page;
	}


}
