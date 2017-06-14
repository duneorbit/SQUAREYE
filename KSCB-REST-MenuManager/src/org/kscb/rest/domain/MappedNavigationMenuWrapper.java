package org.kscb.rest.domain;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class MappedNavigationMenuWrapper {
	
	
	List<MappedNavigationMenu> mappedNavigationMenu = null;
	
	public MappedNavigationMenuWrapper(){
		
	}

	public List<MappedNavigationMenu> getMappedNavigationMenu() {
		return mappedNavigationMenu;
	}

	@XmlElementWrapper
	@XmlElement(name="mappedNavigationMenuItem")
	public void setMappedNavigationMenu(List<MappedNavigationMenu> mappedNavigationMenu) {
		this.mappedNavigationMenu = mappedNavigationMenu;
	}
	
	
	
}
