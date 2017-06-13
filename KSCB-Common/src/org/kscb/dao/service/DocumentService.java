package org.kscb.dao.service;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.List;

import org.kscb.dao.impl.DocumentManagerImplDAO;
import org.kscb.entities.Document;

public class DocumentService {
	
	private DocumentManagerImplDAO documentManager = null;
	
	public DocumentService(){
		this.documentManager = new DocumentManagerImplDAO();
	}
	
	public List<Document> getAllDocuments(){
		documentManager.openSession();
		List<Document> documents = documentManager.getAllDocuments();
		documentManager.closeSession();
		return documents;
	}
	
	public Document persist(Document document, File file) throws FileNotFoundException{
		documentManager.openCurrentSessionwithTransaction();
		Document documentBack = documentManager.persist(document, file);
		documentManager.closeCurrentSessionwithTransaction();
		return documentBack;
	}
	
	public Document findDocumentByID(String documentID){
		documentManager.openSession();
		Document document = documentManager.findDocumentByID(documentID);
		documentManager.closeSession();
		return document;
	}

}
