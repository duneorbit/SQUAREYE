package org.kscb.page.widgets;

import java.util.HashMap;
import java.util.Map;

import org.kscb.dao.exception.NewPageNotFoundException;
import org.kscb.dao.service.PageService;
import org.kscb.dao.service.WigetService;
import org.kscb.entities.Page;
import org.kscb.page.widgets.utils.WigetUtils;

public class PageWidgetsWrapper{
	
	private String pageID = null;
	
	private Page page = null;
	
	private Map<String, WebWidget> widgets = new HashMap<String, WebWidget>();
	
	private PageService pageService = null;
	private WigetService widgetService = null;
	
	public PageWidgetsWrapper(String pageID) throws NewPageNotFoundException{
		this.pageService = new PageService();
		this.widgetService = new WigetService();
		this.page = pageService.findPageByID(pageID);
		if(page==null){
			throw new NewPageNotFoundException("This page has been removed or does not exist");
		}
		setHeaderWidget();
		setMenuWidget();
		setCarouselWidget();
		setLayoutWidget();
		setFooterWidget();
	}
	
	private void setHeaderWidget(){
		widgets.put(WigetUtils.HEADER, widgetService.findWidgetByIDAndPageID(page.getId(), WigetUtils.HEADER));
	}
	
	private void setMenuWidget(){
		widgets.put(WigetUtils.MENU, widgetService.findWidgetByIDAndPageID(page.getId(), WigetUtils.MENU));
	}
	
	private void setCarouselWidget(){
		widgets.put(WigetUtils.CAROUSEL, widgetService.findWidgetByIDAndPageID(page.getId(), WigetUtils.CAROUSEL));
	}
	
	private void setLayoutWidget(){
		widgets.put(WigetUtils.LAYOUT, widgetService.findWidgetByIDAndPageID(page.getId(), WigetUtils.LAYOUT));
	}
	
	private void setFooterWidget(){
		widgets.put(WigetUtils.FOOTER, widgetService.findWidgetByIDAndPageID(page.getId(), WigetUtils.FOOTER));
	}
	
	public Map<String, WebWidget> getWidgets(){
		return widgets;
	}

	public Page getPage() {
		return page;
	}
	
	
	
}
