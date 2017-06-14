package org.kscb.filters;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kscb.filters.wrappers.CacheResponseWrapper;
import org.kscb.page.cache.CacheManager;

public class PageCacheFilter implements Filter{
	
	
	public void destroy() {
		System.out.println("stop thread");
		CacheManager.destroy();
	}

	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		HttpServletResponse httpServletResponse = (HttpServletResponse)response;
		HttpServletRequest httpServletRequest = (HttpServletRequest)request;
		
		String pageID = httpServletRequest.getParameter("pageID");
		
		if(pageID==null){
			chain.doFilter(request, response);
			return;
		}
		
		httpServletResponse.addHeader("Content-Encoding", "gzip");
		
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		
        CacheResponseWrapper wrappedResponse = new CacheResponseWrapper(httpServletResponse, baos);
        
        chain.doFilter(request, wrappedResponse);
        
        if(!CacheManager.isCached(pageID)){
        	CacheManager.put(pageID, baos);
        }
        
        ServletOutputStream sos = response.getOutputStream();
        sos.write(CacheManager.get(pageID).toByteArray());
	}

	public void init(FilterConfig filterConfig) throws ServletException {
		CacheManager.getInstance(filterConfig.getServletContext());
	}

}
