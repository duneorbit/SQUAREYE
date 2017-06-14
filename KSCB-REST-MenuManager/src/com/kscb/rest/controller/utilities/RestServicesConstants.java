package com.kscb.rest.controller.utilities;

public class RestServicesConstants {
	
	public static final String ERROR_MENU_HTML = "Error Transforming menu to html widget";
	public static final String ERROR_FAILED_INCOMING_MENU_JSON = "Menu JSON structure was invalid";
	public static final String ERROR_FAILED_INCOMING_MENU_JSON_TO_XML = "JSON Menu to xml conversion failed";

	//TEMPLATES
	public static final String GET_TEMPLATE = "/rest/templates/new/{templateID}";
	public static final String CREATE_TEMPLATE = "/rest/templates/create";
	public static final String UPDATE_TEMPLATE = "/rest/templates/update";
	public static final String PREVIEW_TEMPLATE = "/rest/templates/preview";
	//MENU MANAGEMENT
	public static final String GET_MENU_ITEMS = "/rest/menuItems";
	public static final String UPDATE_MENU = "/rest/updateMenu";
	public static final String PREVIEW_MENU = "/rest/previewMenu";
	
	//WIDGETS MANAGEMENT
	public static final String GET_WIDGETS_OF_TYPE = "/rest/widgets/{type}";
	public static final String GET_WIDGET_FOR_ID = "/rest/widget/{widgetID}";
	public static final String GET_THUMBNAILS_WIDGET = "/rest/widget/thumbnails";
	public static final String SAVE_HEADER_WIDGET = "/rest/widgets/saveHeaderWidget";
	public static final String GET_CAROUSEL_THUMBNAILS_WIDGET = "/rest/widget/carousel";
	public static final String SAVE_CAROUSEL_WIDGET = "/rest/widgets/saveCarouselWidget";
	//PAGE MANAGEMENT
	public static final String GET_ALL_PAGES = "/rest/pages";
	public static final String SAVE_PAGE = "/rest/page/save";
	public static final String GET_HOME_PAGE = "/rest/page/home";
	public static final String GET_PAGE = "/rest/page/{pageID}";
	public static final String CREATE_PAGE = "/rest/page/create";
	public static final String UPDATE_PAGE = "/rest/page/update";
	//DOCUMENT MANAGEMENT
	public static final String UPLOAD = "/upload";
	public static final String GET_DOCUMENT_BY_ID = "/thumbnail/{id}";
	public static final String GET_DOCUMENT_PREVIEW = "/preview/{id}";
	public static final String GET_ALL_DOCUMENTS = "/rest/documents";
	
	public static final String HOME_PAGE = "HOME_PAGE";
}
