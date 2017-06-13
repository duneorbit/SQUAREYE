package org.kscb.dao;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.Serializable;
import java.util.List;

import org.kscb.entities.Document;

public interface DocumentManagerDAO<T, Id extends Serializable> {
	
	public Document persist(T entity, File file) throws FileNotFoundException;
	public List<Document> getAllDocuments();
	
}
