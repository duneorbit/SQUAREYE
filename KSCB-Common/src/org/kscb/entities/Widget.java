package org.kscb.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.kscb.dao.utils.Utilities;
import org.kscb.page.widgets.WebWidget;

@Entity
@Table(name = "WidgetManagerTBL")
public class Widget extends Utilities implements WebWidget{
	
	
	private static final long serialVersionUID = 8917039565784714942L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="widgetID", unique=true, nullable=false)
	private String id;
	
	
	@Column(name="templateID")
	private String templateID;
	
	@Column(name="widgetName")
	private String widgetName;
	
	@Column(name="snippet")
	private String snippet;
	
	@Transient
	private String transientSnippet;
	
	@Column(name="rawFormat")
	private String rawFormat;
	
	@Column(name="widgetDisplayName")
	private String widgetDisplayName;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTemplateID() {
		return templateID;
	}

	public void setTemplateID(String templateID) {
		this.templateID = templateID;
	}

	public String getWidgetName() {
		return widgetName;
	}

	public void setWidgetName(String widgetName) {
		this.widgetName = widgetName;
	}

	public String getSnippet() {
		return snippet;
	}

	public void setSnippet(String snippet) {
		this.snippet = encode(snippet);
	}
	
	public String getTransientSnippet() {
		return transientSnippet;
	}

	public void setTransientSnippet(String transientSnippet) {
		this.transientSnippet = encode(transientSnippet);
	}

	public String getRawFormat() {
		return rawFormat;
	}
	
	public String getDecodedRawFormat(){
		return decode(rawFormat);
	}

	public void setRawFormat(String rawFormat) {
		this.rawFormat = encode(rawFormat);
	}

	public String getWidgetDisplayName() {
		return widgetDisplayName;
	}

	public void setWidgetDisplayName(String widgetDisplayName) {
		this.widgetDisplayName = widgetDisplayName;
	}

	public String execute() {
		return decode(getSnippet());
	}
	
	
	
}
