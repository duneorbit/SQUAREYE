package org.kscb.rest.domain;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class HeaderWidget {
	
	private String id = null;
	private String name = null;
	private String type = null;
	private String widgetName = null;
	private String url = null;
	private String errorMsg = null;
	
	public HeaderWidget(){
		
	}

	public String getId() {
		return id;
	}

	@XmlElement
	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	@XmlElement
	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	@XmlElement
	public void setType(String type) {
		this.type = type;
	}

	public String getWidgetName() {
		return widgetName;
	}

	@XmlElement
	public void setWidgetName(String widgetName) {
		this.widgetName = widgetName;
	}

	public String getErrorMsg() {
		return errorMsg;
	}

	public void setErrorMsg(String errorMsg) {
		this.errorMsg = errorMsg;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
	
	

}
