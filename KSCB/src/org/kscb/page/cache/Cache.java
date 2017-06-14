package org.kscb.page.cache;

import java.io.ByteArrayOutputStream;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.ArrayList;
import java.util.zip.GZIPOutputStream;

import javax.servlet.ServletContext;

import org.apache.commons.collections.MapIterator;
import org.apache.commons.collections.map.LRUMap;

public class Cache<K, T> {
	
	private final static String CACHE_ENTRY_TIME_TO_LIVE = "cacheEntryTimeToLive";
	private final static String CACHE_TIMER_INTERVAL = "cacheTimerInterval";
	private final static String CACHE_MAX_ITEMS = "cacheMaxItems";
	 
    private long timeToLive;
    private LRUMap crunchifyCacheMap;
    
    private Thread t = null;
    
    private static Cache<String, ByteArrayOutputStream> CACHE = null;
 
    protected class CrunchifyCacheObject {
        public long lastAccessed = System.currentTimeMillis();
        public T value;
 
        protected CrunchifyCacheObject(T value) {
            this.value = value;
        }
    }
    
    public static synchronized Cache<String, ByteArrayOutputStream> getInstance(ServletContext servletContext){
    	if(CACHE==null){
    		CACHE = new Cache<String, ByteArrayOutputStream>(
    				200/*Long.valueOf(servletContext.getInitParameter(CACHE_ENTRY_TIME_TO_LIVE))*/, 
    				500/*Long.valueOf(servletContext.getInitParameter(CACHE_TIMER_INTERVAL))*/, 
    				100/*Integer.valueOf(CACHE_MAX_ITEMS)*/);
    	}
    	return CACHE;
    }
 
    private Cache(long crunchifyTimeToLive, final long crunchifyTimerInterval, int maxItems){
        this.timeToLive = crunchifyTimeToLive * 1000;
 
        crunchifyCacheMap = new LRUMap(maxItems);
 
        if (timeToLive > 0 && crunchifyTimerInterval > 0){
 
            t = new Thread(new Runnable(){
                public void run(){
                    while (true){
                        try{
                            Thread.sleep(crunchifyTimerInterval * 1000);
                        }catch(InterruptedException ex){
                        	Thread.currentThread().interrupt();
                        }
                        cleanup();
                    }
                }
            });
 
            t.setDaemon(true);
            t.start();
        }
    }
 
    public void put(K key, T value){
        synchronized (crunchifyCacheMap){
            crunchifyCacheMap.put(key, new CrunchifyCacheObject(compress(value)));
        }
    }
 
    @SuppressWarnings("unchecked")
    public T get(K key){
        synchronized (crunchifyCacheMap){
            CrunchifyCacheObject c = (CrunchifyCacheObject) crunchifyCacheMap.get(key);
 
            if(c == null){
                return null;
            }else{
                c.lastAccessed = System.currentTimeMillis();
                return c.value;
            }
        }
    }
 
    public void remove(K key){
        synchronized(crunchifyCacheMap) {
            crunchifyCacheMap.remove(key);
        }
    }
 
    public int size(){
        synchronized (crunchifyCacheMap){
            return crunchifyCacheMap.size();
        }
    }
 
    @SuppressWarnings("unchecked")
    public void cleanup(){
    	
        long now = System.currentTimeMillis();
        ArrayList<K> deleteKey = null;
 
        synchronized (crunchifyCacheMap){
            MapIterator itr = crunchifyCacheMap.mapIterator();
 
            deleteKey = new ArrayList<K>((crunchifyCacheMap.size() / 2) + 1);
            K key = null;
            CrunchifyCacheObject c = null;
 
            while(itr.hasNext()){
                key = (K) itr.next();
                c = (CrunchifyCacheObject) itr.getValue();
 
                if(c != null && (now > (timeToLive + c.lastAccessed))){
                	System.out.println("------------removing from cache");
                    deleteKey.add(key);
                }
            }
        }
 
        for(K key : deleteKey){
            synchronized (crunchifyCacheMap){
                crunchifyCacheMap.remove(key);
            }
            Thread.yield();
        }
    }
    
    private T compress(T value){
    	try{
	    	ByteArrayOutputStream baos = new ByteArrayOutputStream();
	    	GZIPOutputStream gzipstream = new GZIPOutputStream(baos);
	    	gzipstream.write(((ByteArrayOutputStream)value).toByteArray());
	    	gzipstream.close();
	    	return (T)baos;
    	}catch(Exception e){
    		return null;
    	}
    }
    
    private void printClassPath(){
    	
	     StringBuffer classpath = new StringBuffer();
	     ClassLoader applicationClassLoader = this.getClass().getClassLoader();
	     if (applicationClassLoader == null) {
	         applicationClassLoader = ClassLoader.getSystemClassLoader();
	     }
	     URL[] urls = ((URLClassLoader)applicationClassLoader).getURLs();
	      for(int i=0; i < urls.length; i++) {
	          classpath.append(urls[i].getFile()).append("\r\n");
	      }    
	     
	      System.out.println(classpath.toString());
    	  
    }
    
    protected void shutDown(){
    	t.interrupt();
    }
}

