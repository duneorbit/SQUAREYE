package org.kscb.page.builder;

import org.kscb.dao.exception.NewPageNotFoundException;
import org.kscb.page.widgets.PageWidgetsWrapper;
import org.kscb.page.widgets.adapter.PageWidgetWrapperAdapter;

public abstract class CompositePageBuilder {
	
	protected PageWidgetsWrapper pageWidgetsWrapper = null;

	public CompositePageBuilder(String pageID) throws NewPageNotFoundException {
		//using page ID get the widgets for this page:
		/*
		 * header
		 * navigation
		 * carousel
		 * layout
		 * footer
		 */
		//using this adapter, this will contain DAO work to populate 
		//widgets and return WidgetWrapper
		pageWidgetsWrapper = PageWidgetWrapperAdapter.createPageWidgetWrapper(pageID);
	}

}
