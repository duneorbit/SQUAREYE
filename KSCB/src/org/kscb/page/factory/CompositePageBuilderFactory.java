package org.kscb.page.factory;

import org.kscb.dao.exception.NewPageNotFoundException;
import org.kscb.page.CompositePage;
import org.kscb.page.cache.Cache;
import org.kscb.page.impl.CompositePageImplFacade;

public class CompositePageBuilderFactory {
	
	public static CompositePage getCompositePage(String pageID) throws NewPageNotFoundException{
		CompositePage page = null;
		String cachedPage = null;//Cache.getPage(pageID);
		if(cachedPage==null){
			page = CompositePageImplFacade.getInstance(pageID);
		}
		return page;
	}

}
