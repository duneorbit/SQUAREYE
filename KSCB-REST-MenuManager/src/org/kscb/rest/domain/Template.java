package org.kscb.rest.domain;

import java.util.Map;

public class Template {
	
	private int widgetID = -1;
	private int layoutID = -1;
	private String layoutName = null;
	private Map<String,Object> editors;
	
	public Template(){
		
	}

	public int getLayoutID() {
		return layoutID;
	}

	public void setLayoutID(int layoutID) {
		this.layoutID = layoutID;
	}

	public String getLayoutName() {
		return layoutName;
	}

	public void setLayoutName(String layoutName) {
		this.layoutName = layoutName;
	}

	public Map<String, Object> getEditors() {
		return editors;
	}

	public void setEditors(Map<String, Object> editors) {
		this.editors = editors;
	}

	public int getWidgetID() {
		return widgetID;
	}

	public void setWidgetID(int widgetID) {
		this.widgetID = widgetID;
	}

}
