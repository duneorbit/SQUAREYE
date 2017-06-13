package org.kscb.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.kscb.dao.WidgetManagerDAO;
import org.kscb.dao.utils.Utilities;
import org.kscb.entities.Widget;

public class WigetManagerImplDAO extends Utilities implements WidgetManagerDAO<Widget, String>{
	
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
	
	public Session openSession() {
		currentSession = getSessionFactory().openSession();
		return currentSession;
	}
	
	public void closeSession() {
		currentSession.close();
	}
	
	private static SessionFactory getSessionFactory() {
		Configuration configuration = new Configuration().configure();
		StandardServiceRegistryBuilder builder = 
				new StandardServiceRegistryBuilder().applySettings(configuration.getProperties());
		SessionFactory sessionFactory = configuration.buildSessionFactory(builder.build());
		return sessionFactory;
	}
	
	public Session getCurrentSession() {
		return currentSession;
	}
	
	public Widget findByPageIDAndType(String id, String type) {
		Query q = getCurrentSession().createQuery("from Widget WHERE pageID = :pageID AND widgetName = :type");
		q.setParameter("pageID", id);
		q.setParameter("type", type);
		List<Widget> widget = q.list();
		if(widget!= null && widget.size()>0){
			return widget.get(0);
		}
		return null;
	}

	public Widget findWidgetByID(String id) {
		Widget widget = (Widget)getCurrentSession().get(Widget.class, id);
		return widget;
	}

	public void persist(Widget entity) {
		getCurrentSession().save(entity);
	}

	public void update(Widget entity) {
		getCurrentSession().update(entity);
	}

	public Widget findByType(String type) {
		Query q = getCurrentSession().createQuery("from Widget WHERE widgetName = :type");
		q.setParameter("type", type);
		List<Widget> widget = q.list();
		if(widget!= null && widget.size()>0){
			return widget.get(0);
		}
		return null;
	}
	
	public List<Widget> findAllByType(String type) {
		Query q = getCurrentSession().createQuery("from Widget WHERE widgetName = :type");
		q.setParameter("type", type);
		List<Widget> widget = q.list();
		return widget;
	}

	@Override
	public Widget findByDisplayName(String name) {
		Query q = getCurrentSession().createQuery("from Widget WHERE widgetDisplayName = :name");
		q.setParameter("name", name);
		List<Widget> widget = q.list();
		if(widget!= null && widget.size()>0){
			return widget.get(0);
		}
		return null;
	}

}
