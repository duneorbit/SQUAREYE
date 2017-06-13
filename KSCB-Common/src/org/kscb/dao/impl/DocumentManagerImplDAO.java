package org.kscb.dao.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.Blob;
import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.kscb.dao.DocumentManagerDAO;
import org.kscb.entities.Document;

public class DocumentManagerImplDAO implements DocumentManagerDAO<Document, String>{

	private Session currentSession;
	
	private Transaction currentTransaction;
	
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
	
	public Session openCurrentSessionwithTransaction() {
		currentSession = getSessionFactory().openSession();
		currentTransaction = currentSession.beginTransaction();
		return currentSession;
	}
	
	public void closeCurrentSessionwithTransaction() {
		currentTransaction.commit();
		currentSession.close();
	}
	
	public Document persist(Document entity, File file) throws FileNotFoundException {
		FileInputStream inputStream = new FileInputStream(file);
        Blob blob = Hibernate.getLobCreator(getCurrentSession()).createBlob(inputStream, file.length());
        entity.setBinaryDocument(blob);
		getCurrentSession().save(entity);
		return entity;
	}
	
	public Session openSession() {
		currentSession = getSessionFactory().openSession();
		return currentSession;
	}
	
	public void closeSession() {
		currentSession.close();
	}
	
	public Document findDocumentByID(String documentID) {
		Query q = getCurrentSession().createQuery("from Document WHERE id = :did");
		q.setParameter("did", documentID);
		List<Document> document = q.list();
		if(document!=null && document.size()>0){
			return document.get(0);
		}
		return null;
	}
	
	public List<Document> getAllDocuments(){
		Query q = getCurrentSession().createQuery("from Document");
		return  q.list();
	}

}
