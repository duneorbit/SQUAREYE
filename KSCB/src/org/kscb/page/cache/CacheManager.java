package org.kscb.page.cache;

import java.io.ByteArrayOutputStream;

import javax.servlet.ServletContext;

public final class CacheManager {
	
	private static CacheManager INSTANCE = null;
	private static Cache<String, ByteArrayOutputStream> cache = null;
	
	private CacheManager(ServletContext servletContext){
		cache = Cache.getInstance(servletContext);
	}
	
	public static synchronized CacheManager getInstance(ServletContext servletContext){
		if(INSTANCE==null){
			INSTANCE = new CacheManager(servletContext);
		}
		return INSTANCE;
	}
	
	public static boolean isCached(String key){
		return (cache.get(key)!=null);
	}
	
	public static void put(String key, ByteArrayOutputStream stream){
		cache.put(key, stream);
	}
	
	public static ByteArrayOutputStream get(String key){
		return cache.get(key);
	}
	
	public static void destroy(){
		cache.shutDown();
	}

}
