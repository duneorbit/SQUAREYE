package org.kscb.page.widgets.adapter;

import org.kscb.dao.exception.NewPageNotFoundException;
import org.kscb.page.widgets.PageWidgetsWrapper;

public class PageWidgetWrapperAdapter {
	
	public static PageWidgetsWrapper createPageWidgetWrapper(String pageID) throws NewPageNotFoundException{
		PageWidgetsWrapper w = new PageWidgetsWrapper(pageID);
		return w;
	}

}
