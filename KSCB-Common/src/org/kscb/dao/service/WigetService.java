package org.kscb.dao.service;

import java.util.List;

import org.kscb.dao.impl.WigetManagerImplDAO;
import org.kscb.entities.Widget;

public class WigetService {
	
	private static WigetManagerImplDAO widgetServiceDAO = null;
	
	public WigetService(){
		widgetServiceDAO = new WigetManagerImplDAO();
	}
	
	public Widget findWidgetByIDAndPageID(String pageID, String type){
		widgetServiceDAO.openSession();
		Widget widget = widgetServiceDAO.findByPageIDAndType(pageID, type);
		widgetServiceDAO.closeSession();
		return widget;
	}
	
	public List<Widget> findAllByType(String type){
		widgetServiceDAO.openSession();
		List<Widget> widgets = widgetServiceDAO.findAllByType(type);
		widgetServiceDAO.closeSession();
		return widgets;
	}
	
	public Widget findByType(String type){
		widgetServiceDAO.openSession();
		Widget widget = widgetServiceDAO.findByType(type);
		widgetServiceDAO.closeSession();
		return widget;
	}
	
	public Widget findByDisplayName(String name){
		widgetServiceDAO.openSession();
		Widget widget = widgetServiceDAO.findByDisplayName(name);
		widgetServiceDAO.closeSession();
		return widget;
	}
	
	public Widget findByID(String id){
		widgetServiceDAO.openSession();
		Widget widget = widgetServiceDAO.findWidgetByID(id);
		widgetServiceDAO.closeSession();
		return widget;
	}
	
	public void persist(Widget widget){
		widgetServiceDAO.openCurrentSessionwithTransaction();
		widgetServiceDAO.persist(widget);
		widgetServiceDAO.closeCurrentSessionwithTransaction();
	}
	
	public void update(Widget widget){
		widgetServiceDAO.openCurrentSessionwithTransaction();
		widgetServiceDAO.update(widget);
		widgetServiceDAO.closeCurrentSessionwithTransaction();
	}

}
