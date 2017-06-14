package org.kscb.page.impl;

import java.util.Map;

import org.kscb.dao.exception.NewPageNotFoundException;
import org.kscb.entities.Page;
import org.kscb.page.CompositePage;
import org.kscb.page.builder.CompositePageBuilder;
import org.kscb.page.widgets.WebWidget;

public class CompositePageImplFacade extends CompositePageBuilder{
	
	private CompositePageImplFacade(String pageID) throws NewPageNotFoundException{
		super(pageID);
	}
	
	public static CompositePage getInstance(String pageID) throws NewPageNotFoundException{
		CompositePageImplFacade facade = new CompositePageImplFacade(pageID);
		CompositePage compositePage = new CompositePageImpl(facade.getPage(), facade.getWidgets());
		return compositePage;
	}

	
	protected Map<String,WebWidget> getWidgets() {
		// TODO Auto-generated method stub
		return this.pageWidgetsWrapper.getWidgets();
	}

	protected Page getPage() {
		// TODO Auto-generated method stub
		return this.pageWidgetsWrapper.getPage();
	}

}
