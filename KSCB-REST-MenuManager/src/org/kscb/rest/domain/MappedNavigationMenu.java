package org.kscb.rest.domain;

import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class MappedNavigationMenu {
	
	private String pageID = null;
	private String menuItemTitle = null;
	private List<MappedNavigationMenu> menuItemChildren = new ArrayList<MappedNavigationMenu>();
	
	public MappedNavigationMenu(){
		
	}

	public String getPageID() {
		return pageID;
	}

	@XmlElement
	public void setPageID(String pageID) {
		this.pageID = pageID;
	}

	public String getMenuItemTitle() {
		return menuItemTitle;
	}

	@XmlElement
	public void setMenuItemTitle(String menuItemTitle) {
		this.menuItemTitle = menuItemTitle;
	}

	public List<MappedNavigationMenu> getMenuItemChildren() {
		return menuItemChildren;
	}

	@XmlElementWrapper
	@XmlElement
	public void setMenuItemChildren(List<MappedNavigationMenu> menuItemChildren) {
		this.menuItemChildren = menuItemChildren;
	}
	
	

}
