package org.kscb.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.kscb.entities.Widget;

public interface WidgetManagerDAO<T, Id extends Serializable> {
	
	public Session openSession();
	public void closeSession();
	public T findByPageIDAndType(Id id, String type);
	public T findByType(String type);
	public T findByDisplayName(String name);
	public List<Widget> findAllByType(String type);
	public T findWidgetByID(Id id);
	public void persist(T entity);
	public void update(T entity);
}
