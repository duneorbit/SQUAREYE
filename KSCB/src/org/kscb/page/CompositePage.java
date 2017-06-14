package org.kscb.page;

import org.kscb.entities.Page;
import org.kscb.page.widgets.WebWidget;

public interface CompositePage{
	
	public Page getPage();
	public WebWidget getWidget(String widgetID);

}
