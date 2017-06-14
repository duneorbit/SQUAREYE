package org.kscb.page.impl;

import java.util.Map;

import org.kscb.entities.Page;
import org.kscb.page.CompositePage;
import org.kscb.page.widgets.WebWidget;

public class CompositePageImpl implements CompositePage{
	
	private Page page = null;
	private Map<String, WebWidget> widgets = null;
	
	public CompositePageImpl(Page page, Map<String, WebWidget> widgets){
		setPage(page);
		setWidgets(widgets);
	}
	
	private void setPage(Page page){
		this.page = page;
	}
	
	private void setWidgets(Map<String, WebWidget> widgets){
		this.widgets = widgets;
	}

	@Override
	public Page getPage() {
		// TODO Auto-generated method stub
		return page;
	}

	@Override
	public WebWidget getWidget(String widgetID) {
		// TODO Auto-generated method stub
		return widgets.get(widgetID);
	}

}
