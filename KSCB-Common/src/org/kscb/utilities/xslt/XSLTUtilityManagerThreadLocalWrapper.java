package org.kscb.utilities.xslt;

public class XSLTUtilityManagerThreadLocalWrapper {
	
	private static final ThreadLocal<XSLTUtilityManager> LOCAL = new ThreadLocal<XSLTUtilityManager>();
	
	public static void setXSLTUtilityManager(XSLTUtilityManager manager){
		LOCAL.set(manager);
	}
	
	public static String buildCarouselIndicatorsXML(){
		return LOCAL.get().buildCarouselIndicatorsXML();
	}
	
	public static String buildCarouselItemsXML(){
		return LOCAL.get().buildCarouselItemsXML();
	}
	
	public static String buildStandardCarousel(){
		return LOCAL.get().buildStandardCarousel();
	}
	
	public static void destroy(){
		LOCAL.remove();
	}
}
