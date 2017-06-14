package org.kscb.servlets.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kscb.dao.service.PageService;
import org.kscb.entities.Page;
import org.kscb.page.CompositePage;
import org.kscb.page.factory.CompositePageBuilderFactory;

public class PageController extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = -537006536966719917L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String pageID = req.getParameter("pageID");
		if(pageID==null){
			//get homepage instance name
			PageService pageService = new PageService();
			Page page = pageService.findPageByInstanceName(Page.HOME_PAGE_INSTANCE_NAME);
			if(page!=null){
				pageID = page.getId();
			}else{
				//let it continue and fail gracefully
				pageID = Page.NO_PAGE_AVAILABLE;
			}
		}
		
		CompositePage page = null;
		try{
			page = CompositePageBuilderFactory.getCompositePage(pageID);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		if(page!=null){
			req.setAttribute("page", page);
		}
		
		req.getRequestDispatcher("./PageController.jsp").forward(req, resp);
		
	}
	
	

}
