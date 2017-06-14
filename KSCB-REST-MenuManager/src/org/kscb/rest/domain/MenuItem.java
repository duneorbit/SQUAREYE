package org.kscb.rest.domain;

public class MenuItem {
	
	private String widgetID = "-1";
	private String json = null;
	private String error = "false";
	
	public MenuItem(){
		
	}

	public String getJson() {
		return json;
	}

	public void setJson(String json) {
		this.json = json;
	}

	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}

	public String getWidgetID() {
		return widgetID;
	}

	public void setWidgetID(String widgetID) {
		this.widgetID = widgetID;
	}

}
