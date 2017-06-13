package org.kscb.dto;

import java.util.Date;

import org.kscb.entities.Document;

public class DocumentDTO {
	
	private String id;
    private String name;
    private String thumbnailFilename;
    private String newFilename;
    private String contentType;
    private Long size;
    
    private Long thumbnailSize;
    private Date dateCreated;
    private Date lastUpdated;
    
    private String url;
    private String thumbnailUrl;
    private String deleteUrl;
    private String deleteType;
    
    private String video;
    private String image;
    private String word;
    private String pdf;
    
    private String simpleContentType;
    
    public DocumentDTO(){
    	
    }

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getThumbnailFilename() {
		return thumbnailFilename;
	}

	public void setThumbnailFilename(String thumbnailFilename) {
		this.thumbnailFilename = thumbnailFilename;
	}

	public String getNewFilename() {
		return newFilename;
	}

	public void setNewFilename(String newFilename) {
		this.newFilename = newFilename;
	}

	public String getContentType() {
		return contentType;
	}

	public void setContentType(String contentType) {
		this.contentType = contentType;
	}

	public Long getSize() {
		return size;
	}

	public void setSize(Long size) {
		this.size = size;
	}

	public Long getThumbnailSize() {
		return thumbnailSize;
	}

	public void setThumbnailSize(Long thumbnailSize) {
		this.thumbnailSize = thumbnailSize;
	}

	public Date getDateCreated() {
		return dateCreated;
	}

	public void setDateCreated(Date dateCreated) {
		this.dateCreated = dateCreated;
	}

	public Date getLastUpdated() {
		return lastUpdated;
	}

	public void setLastUpdated(Date lastUpdated) {
		this.lastUpdated = lastUpdated;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getThumbnailUrl() {
		return thumbnailUrl;
	}

	public void setThumbnailUrl(String thumbnailUrl) {
		this.thumbnailUrl = thumbnailUrl;
	}

	public String getDeleteUrl() {
		return deleteUrl;
	}

	public void setDeleteUrl(String deleteUrl) {
		this.deleteUrl = deleteUrl;
	}

	public String getDeleteType() {
		return deleteType;
	}

	public void setDeleteType(String deleteType) {
		this.deleteType = deleteType;
	}

	public String getVideo() {
		return video;
	}

	public void setVideo(String video) {
		this.video = video;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getWord() {
		return word;
	}

	public void setWord(String word) {
		this.word = word;
	}

	public String getPdf() {
		return pdf;
	}

	public void setPdf(String pdf) {
		this.pdf = pdf;
	}
    
    public String getSimpleContentType() {
		return simpleContentType;
	}

	public void setSimpleContentType(String simpleContentType) {
		this.simpleContentType = simpleContentType;
	}

	public DocumentDTO clone(Document document){
		/**
		 * 
    
    
    private String word;
    private String pdf;
		 */
    	this.setId(document.getId());
    	this.setName(document.getName());
    	this.setThumbnailFilename(document.getThumbnailFilename());
    	this.setNewFilename(document.getNewFilename());
    	this.setContentType(document.getContentType());
    	this.setSize(document.getSize());
    	this.setThumbnailSize(document.getThumbnailSize());
    	this.setDateCreated(document.getDateCreated());
    	this.setLastUpdated(document.getLastUpdated());
    	this.setUrl(document.getUrl());
    	this.setThumbnailUrl(document.getThumbnailUrl());
    	this.setDeleteUrl(document.getDeleteUrl());
    	this.setDeleteType(document.getDeleteType());
    	this.setSimpleContentType(document.getSimpleContentType());
    	this.setVideo(document.getVideo());
    	this.setImage(document.getImage());
    	this.setWord(document.getWord());
    	this.setPdf(document.getPdf());
    	return this;
    }

}
