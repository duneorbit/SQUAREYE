package org.kscb.dao.service;

import java.util.List;

import org.kscb.dao.impl.PageManagerImplDAO;
import org.kscb.entities.Page;
import org.kscb.entities.Widget;

public class PageService {
	
	private PageManagerImplDAO pageManager = null;
	
	public PageService(){
		this.pageManager = new PageManagerImplDAO();
	}
	
	public Page findPageByID(String pageID){
		pageManager.openSession();
		Page page = pageManager.findPageByID(pageID);
		pageManager.closeSession();
		return page;
	}
	
	public Page findPageByInstanceName(String instanceName){
		pageManager.openSession();
		Page page = pageManager.findPageByInstanceName(instanceName);
		pageManager.closeSession();
		return page;
	}
	
	public Page findPageAndWidgetsByInstanceName(String instanceName){
		pageManager.openSession();
		Page page = pageManager.findPageByInstanceName(instanceName);
		pageManager.closeSession();
		return page;
	}
	
	public Page findOrCreatePage(String instanceName, String pageName){
		Page page = findPageByInstanceName(instanceName);
		if(page!=null){
			return page;
		}else{
			page = new Page();
			page.setInstanceName(instanceName);
			page.setPageName(pageName);
			persist(page);
			return findPageByInstanceName(instanceName);
		}
	}
	
	public List<Page> findUnattachedPages(){
		pageManager.openSession();
		List<Page> unattachedPages = pageManager.findUnattachedPages();
		pageManager.closeSession();
		return unattachedPages;
	}
	
	public void persist(Page page){
		pageManager.openCurrentSessionwithTransaction();
		pageManager.persist(page);
		pageManager.closeCurrentSessionwithTransaction();
	}
	
	public void update(Page page){
		pageManager.openCurrentSessionwithTransaction();
		pageManager.update(page);
		pageManager.closeCurrentSessionwithTransaction();
	}

}
