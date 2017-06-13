package org.kscb.entities;

import java.io.Serializable;
import java.sql.Blob;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

/**
 *
 * @author jdmr
 */
@Entity
@Table(name = "DocumentManagerTBL")
@NamedQueries({
    @NamedQuery(name = "DocumentManagerTBL", query = "select i from Document i order by i.id")
})
@JsonIgnoreProperties({"id","thumbnailFilename","newFilename","contentType","dateCreated","lastUpdated"})
public class Document implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String id;
    @Column(name = "documentName")
    private String name;
    @Column(name = "docThumbnailName")
    private String thumbnailFilename;
    @Column(name = "docFileName")
    private String newFilename;
    @Column(name = "docContentType")
    private String contentType;
    @Column(name = "size")
    private Long size;
    
    private Long thumbnailSize;
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateCreated;
    @Temporal(TemporalType.TIMESTAMP)
    private Date lastUpdated;
    
    @Lob
    private Blob binaryDocument;
    
    @Transient
    private String url;
    @Transient
    private String thumbnailUrl;
    @Transient
    private String deleteUrl;
    @Transient
    private String deleteType;
    
    @Transient
    private String video;
    @Transient
    private String image;
    @Transient
    private String word;
    @Transient
    private String pdf;
    
    public Document() {}

    /**
     * @return the id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the thumbnailFilename
     */
    public String getThumbnailFilename() {
        return thumbnailFilename;
    }

    /**
     * @param thumbnailFilename the thumbnailFilename to set
     */
    public void setThumbnailFilename(String thumbnailFilename) {
        this.thumbnailFilename = thumbnailFilename;
    }

    /**
     * @return the newFilename
     */
    public String getNewFilename() {
        return newFilename;
    }

    /**
     * @param newFilename the newFilename to set
     */
    public void setNewFilename(String newFilename) {
        this.newFilename = newFilename;
    }

    /**
     * @return the contentType
     */
    public String getContentType() {
        return contentType;
    }

    /**
     * @param contentType the contentType to set
     */
    public void setContentType(String contentType) {
        this.contentType = contentType;
        notifyClientDocumentType();
    }

    /**
     * @return the size
     */
    public Long getSize() {
        return size;
    }

    /**
     * @param size the size to set
     */
    public void setSize(Long size) {
        this.size = size;
    }

    /**
     * @return the thumbnailSize
     */
    public Long getThumbnailSize() {
        return thumbnailSize;
    }

    /**
     * @param thumbnailSize the thumbnailSize to set
     */
    public void setThumbnailSize(Long thumbnailSize) {
        this.thumbnailSize = thumbnailSize;
    }

    /**
     * @return the dateCreated
     */
    public Date getDateCreated() {
        return dateCreated;
    }

    /**
     * @param dateCreated the dateCreated to set
     */
    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    /**
     * @return the lastUpdated
     */
    public Date getLastUpdated() {
        return lastUpdated;
    }

    /**
     * @param lastUpdated the lastUpdated to set
     */
    public void setLastUpdated(Date lastUpdated) {
        this.lastUpdated = lastUpdated;
    }

    /**
     * @return the url
     */
    public String getUrl() {
    	if(url==null){
    		this.url = "/KSCB-REST-MenuManager/preview/"+getId();
    	}
        return url;
    }

    /**
     * @param url the url to set
     */
    public void setUrl(String url) {
        this.url = url;
    }

    /**
     * @return the thumbnailUrl
     */
    public String getThumbnailUrl() {
        return thumbnailUrl;
    }

    /**
     * @param thumbnailUrl the thumbnailUrl to set
     */
    public void setThumbnailUrl(String thumbnailUrl) {
        this.thumbnailUrl = thumbnailUrl;
    }

    /**
     * @return the deleteUrl
     */
    public String getDeleteUrl() {
        return deleteUrl;
    }

    /**
     * @param deleteUrl the deleteUrl to set
     */
    public void setDeleteUrl(String deleteUrl) {
        this.deleteUrl = deleteUrl;
    }

    /**
     * @return the deleteType
     */
    public String getDeleteType() {
        return deleteType;
    }

    /**
     * @param deleteType the deleteType to set
     */
    public void setDeleteType(String deleteType) {
        this.deleteType = deleteType;
    }
    
    

    public Blob getBinaryDocument() {
		return binaryDocument;
	}

	public void setBinaryDocument(Blob binaryDocument) {
		this.binaryDocument = binaryDocument;
	}
	
	private void notifyClientDocumentType(){
		if(this.contentType!=null){
			if(this.contentType.equals("image/jpeg")){
				this.image = this.contentType;
			}else if(this.contentType.equals("video/mp4")){
				this.video = this.contentType;
			}else if(this.contentType.contains("officedocument.wordprocessingml")){
				this.word = this.contentType;
			}else if(this.contentType.equals("application/pdf")){
				this.pdf = this.contentType;
			}
		}
	}

	public String getVideo() {
		return video;
	}

	public String getImage() {
		return image;
	}

	public String getWord() {
		return word;
	}

	public String getPdf() {
		return pdf;
	}
	
	public String getSimpleContentType(){
		notifyClientDocumentType();
		if(this.image!=null){
			return "Image";
		}else if(this.video!=null){
			return "Video";
		}else if(this.word!=null){
			return "Word Document";
		}else if(this.pdf!=null){
			return "PDF Document";
		}
		return "Unknown";
	}

	
}

