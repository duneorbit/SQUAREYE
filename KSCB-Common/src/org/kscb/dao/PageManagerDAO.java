package org.kscb.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.kscb.entities.Page;

public interface PageManagerDAO<T, Id extends Serializable> {
	
	public Session openSession();
	public void closeSession();
	public Page findPageByID(String pageID);
	public Page findPageByInstanceName(String instanceName);
	public List<Page> findUnattachedPages();
	public void persist(T entity);
	public void update(T entity);
	
}
