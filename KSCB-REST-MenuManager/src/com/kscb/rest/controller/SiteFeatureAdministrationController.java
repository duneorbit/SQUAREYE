package com.kscb.rest.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.imgscalr.Scalr;
import org.kscb.dao.service.DocumentService;
import org.kscb.dao.service.PageService;
import org.kscb.dao.service.WigetService;
import org.kscb.dao.utils.Utilities;
import org.kscb.dto.DocumentDTO;
import org.kscb.entities.Document;
import org.kscb.entities.Page;
import org.kscb.entities.Widget;
import org.kscb.io.FileUtility;
import org.kscb.page.widgets.utils.WigetUtils;
import org.kscb.rest.domain.HeaderWidget;
import org.kscb.rest.domain.MenuItem;
import org.kscb.rest.domain.Pages;
import org.kscb.rest.domain.Template;
import org.kscb.utilities.xslt.XSLTUtilityManager;
import org.kscb.utilities.xslt.XSLTUtilityManagerThreadLocalWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.kscb.rest.controller.utilities.RestServicesConstants;
import com.kscb.rest.utilities.JsonXMLConverter;
import com.kscb.rest.utilities.json.converters.EntityJSONConverterFacade;
import com.kscb.rest.utilities.json.converters.EntityUtility;
import com.kscb.rest.utilities.json.converters.JSONSyndicate;
import com.kscb.xslt.transformer.utilities.XSLTTransformUtility;

/**
 * Handles requests for the Employee service.
 */
@Controller
public class SiteFeatureAdministrationController {
	
	private static final String WORD_DOC = ".doc";
	private static final String WORD_DOCX = ".docx";
	private static final String MP3 = ".mp3";
	private static final String MP4 = ".mp4";
	private static final String PDF = ".pdf";
	private static final String PNG = ".png";
	private static final String GIF = ".gif";
	private static final String JPEG = ".jpeg";
	private static final String JPG = ".jpg";
	
	private static List<String> imageLookUp = new ArrayList<String>();
	private static List<String> validDocList = new ArrayList<String>();
	
	static{
		imageLookUp.add(PNG);
		imageLookUp.add(GIF);
		imageLookUp.add(JPEG);
		imageLookUp.add(JPG);
		
		validDocList.addAll(imageLookUp);
		validDocList.add(WORD_DOC);
		validDocList.add(WORD_DOCX);
		validDocList.add(MP3);
		validDocList.add(MP4);
		validDocList.add(PDF);
	}
	
	@Autowired
	private ServletContext context; 
	
	public void setServletContext(ServletContext servletContext) {
	    this.context = servletContext;
	}
	
	@RequestMapping(value = RestServicesConstants.GET_CAROUSEL_THUMBNAILS_WIDGET, method = RequestMethod.GET)
	public @ResponseBody JSONSyndicate getcAROUSELThumbnailsWidget() {
		DocumentService documentService = new DocumentService();
		List<Document> imageDocuments = new ArrayList<Document>();
		Iterator<Document> documentsItr = documentService.getAllDocuments().iterator();
		while(documentsItr.hasNext()){
			Document document = documentsItr.next();
			if(document.getSimpleContentType().equals("Image")){
				imageDocuments.add(document);
			}
		}
		XSLTUtilityManager xsltUtility = new XSLTUtilityManager(imageDocuments);
		XSLTUtilityManagerThreadLocalWrapper.setXSLTUtilityManager(xsltUtility);
		
		JSONSyndicate syndicate = new JSONSyndicate();
		syndicate.setJson(Utilities.encode(XSLTTransformUtility.getCarouselThumbnailsXMLSnippet()));
		XSLTUtilityManagerThreadLocalWrapper.destroy();
		return syndicate;
	}
	
	@RequestMapping(value = RestServicesConstants.SAVE_HEADER_WIDGET, method = RequestMethod.POST)
    public @ResponseBody HeaderWidget saveHeaderWidget(@RequestBody HeaderWidget headerWidget) {
		WigetService widgetServive = new WigetService();
		Widget widget = widgetServive.findByDisplayName(headerWidget.getWidgetName());
		if(widget==null){
			try{
				widget = new Widget();
				widget.setRawFormat(JsonXMLConverter.convertHeaderWidgetToJSONString(headerWidget));
				String xml = JsonXMLConverter.converHeaderWidgetToXML(headerWidget);
				String xmlSnippet = XSLTTransformUtility.getHeaderWidgetXMLSnippet(xml);
				widget.setSnippet(xmlSnippet);
				widget.setWidgetName("HEADER");
				widget.setWidgetDisplayName(headerWidget.getWidgetName());
				
				widgetServive.persist(widget);
				
				headerWidget.setErrorMsg("success");
				headerWidget.setId(widget.getId());
			}catch(Exception e){
				e.printStackTrace();
				headerWidget.setErrorMsg(e.getMessage());
			}
		}else{
			headerWidget.setErrorMsg("Widget of same name already exists!");
		}
		return headerWidget;
	}
	
	@SuppressWarnings({ "static-access", "rawtypes" })
	@RequestMapping(value = RestServicesConstants.GET_THUMBNAILS_WIDGET, method = RequestMethod.GET)
	public @ResponseBody JSONSyndicate getThumbnailsWidget() {
		DocumentService documentService = new DocumentService();
		List<Document> imageDocuments = new ArrayList<Document>();
		Iterator<Document> documentsItr = documentService.getAllDocuments().iterator();
		while(documentsItr.hasNext()){
			Document document = documentsItr.next();
			if(document.getSimpleContentType().equals("Image")){
				imageDocuments.add(document);
			}
		}
		XSLTUtilityManager xsltUtility = new XSLTUtilityManager(imageDocuments);
		XSLTUtilityManagerThreadLocalWrapper.setXSLTUtilityManager(xsltUtility);
		
		JSONSyndicate syndicate = new JSONSyndicate();
		syndicate.setJson(Utilities.encode(XSLTTransformUtility.getThumbnailsXMLSnippet()));
		XSLTUtilityManagerThreadLocalWrapper.destroy();
		return syndicate;
	}
	
	@RequestMapping(value = RestServicesConstants.GET_ALL_DOCUMENTS, method = RequestMethod.GET)
	public @ResponseBody ObjectNode getDocuments() {
		DocumentService documentService = new DocumentService();
		
		ObjectNode syndicate = EntityJSONConverterFacade.unMarshallDocumentList(documentService.getAllDocuments(), 
				EntityJSONConverterFacade.CONVERTER_TYPE_DOCUMENT, true);
		return syndicate;
	}
	
	private String getThumbnail(String originalFileExtension, String uniqueFilenameBase){
		String thumbnailFilename = null;
		if(originalFileExtension.equalsIgnoreCase(WORD_DOC)){
			thumbnailFilename = "word.png";
		}else if(originalFileExtension.equalsIgnoreCase(WORD_DOCX)){
			thumbnailFilename = "word.png";
		}else if(originalFileExtension.equalsIgnoreCase(MP3)){
			thumbnailFilename = "video.png";
		}else if(originalFileExtension.equalsIgnoreCase(MP4)){
			thumbnailFilename = "video.png";
		}else if(originalFileExtension.equalsIgnoreCase(PDF)){
			thumbnailFilename = "pdf.png";
		}else{
			thumbnailFilename = uniqueFilenameBase + "-thumbnail.png";
		}
		return thumbnailFilename;
	}
	
	private File doCreateThumbnail(File actualFile, String fileExtension, String thumbnailFilename){
		File thumbnailFile = null;
		try{
			if(imageLookUp.contains(fileExtension)){
				BufferedImage thumbnail = Scalr.resize(ImageIO.read(actualFile), 290);
		        thumbnailFile = new File(System.getProperty("java.io.tmpdir")  + thumbnailFilename);
		        ImageIO.write(thumbnail, "png", thumbnailFile);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return thumbnailFile;
	}
	
	@RequestMapping(value = RestServicesConstants.UPLOAD, method = RequestMethod.POST)
    public @ResponseBody Map uploadDocument(MultipartHttpServletRequest request, HttpServletResponse response) {
		System.out.println(System.getProperty("user.dir"));
		Iterator<String> itr = request.getFileNames();
	    MultipartFile mpf;
	    List<DocumentDTO> list = new LinkedList<>();
	    while(itr.hasNext()) {
	    	mpf = request.getFile(itr.next());
	    	
	    	String originalFileName = mpf.getOriginalFilename();
	    	String uniqueFilenameBase = UUID.randomUUID().toString();
	        String originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
	        if(validDocList.contains(originalFileExtension)){
		        String newFilename = uniqueFilenameBase + originalFileExtension;
		        
		        String thumbnailFilename = getThumbnail(originalFileExtension, uniqueFilenameBase);
		        
		        String storageDirectory = "/tmp";
		        String contentType = mpf.getContentType();
		        
		        File actualFile = new File(System.getProperty("java.io.tmpdir") + newFilename);
		       
		        try {
	                mpf.transferTo(actualFile);
	                
	                File thumbnailFile = doCreateThumbnail(actualFile, originalFileExtension, thumbnailFilename);
	               
	                
	                Document document = new Document();
	                document.setName(originalFileName);
	                document.setThumbnailFilename(thumbnailFilename);
	                document.setNewFilename(newFilename);
	                document.setContentType(contentType);
	                document.setSize(mpf.getSize());
	                
	                if(thumbnailFile!=null){
	                	document.setThumbnailSize(thumbnailFile.length());
	                }
	                
	                document.setDateCreated(new Date());
	                document.setLastUpdated(document.getDateCreated());
	                //document.setBinaryDocument(FileUtility.readFileToByteArray(actualFile));
	                
	                DocumentService documentService = new DocumentService();
	                document = documentService.persist(document, actualFile);
	                
	                document.setUrl("/KSCB-REST-MenuManager/preview/"+document.getId());
	                document.setThumbnailUrl("/KSCB-REST-MenuManager/thumbnail/"+document.getId());
	                document.setDeleteUrl("/KSCB-REST-MenuManager/delete/"+document.getId());
	                document.setDeleteType("DELETE");
	               
	                list.add(Utilities.asDto(document));
	                
	            } catch(IOException e) {
	            	e.printStackTrace();
	                //log.error("Could not upload file "+mpf.getOriginalFilename(), e);
	            }
	        }
	     }
	     Map<String, Object> files = new HashMap<>();
	     files.put("files", list);
	     return files;
	}
	
	
	@RequestMapping(value = RestServicesConstants.GET_DOCUMENT_BY_ID, method = RequestMethod.GET)
    public void documentThumbnail(HttpServletResponse response, @PathVariable Long id) {
	 	DocumentService documentService = new DocumentService();
	 	Document document = documentService.findDocumentByID(String.valueOf(id));
	 	if(imageLookUp.contains(document.getName().substring(document.getName().lastIndexOf(".")))){
	        File imageFile = new File(System.getProperty("java.io.tmpdir")+document.getThumbnailFilename());
	        response.setContentType(document.getContentType());
	        response.setContentLength(document.getThumbnailSize().intValue());
	        try {
	            InputStream is = new FileInputStream(imageFile);
	            IOUtils.copy(is, response.getOutputStream());
	        } catch(IOException e) {
	        	e.printStackTrace();
	        }
	 	}else{
	 		String path = "";
	 		if(document.getName().endsWith(WORD_DOC)){
	 			path = "/images/word.png";
	 		}else if(document.getName().endsWith(WORD_DOCX)){
	 			path = "/images/word.png";
	 		}else if(document.getName().endsWith(MP3)){
	 			path = "/images/video.png";
	 		}else if(document.getName().endsWith(MP4)){
	 			path = "/images/video.png";
	 		}else{
	 			path = "/images/pdf.png";
	 		}
	 		try {
	 			System.out.println(context.getContextPath());
	 			
	 			response.setContentType("image/png");
	 			InputStream is = context.getResourceAsStream(path);
		 		IOUtils.copy(is, response.getOutputStream());
	 		}catch(Exception e){
	 			e.printStackTrace();
	 		}
	 	}
        
    }
	
	@RequestMapping(value = RestServicesConstants.GET_DOCUMENT_PREVIEW, method = RequestMethod.GET)
    public void documentPreview(HttpServletResponse response, @PathVariable Long id) {
	 	DocumentService documentService = new DocumentService();
	 	Document document = documentService.findDocumentByID(String.valueOf(id));
	 	
        File imageFile = new File(System.getProperty("java.io.tmpdir")+document.getNewFilename());
        boolean fileExists = true;
        try {
        	 if(!imageFile.exists()){
        		 fileExists = imageFile.createNewFile();
        		 if(fileExists){
        			 FileOutputStream fos = new FileOutputStream(imageFile);
        			 fos.write(FileUtility.convertBlobToBytes(document.getBinaryDocument()));
        			 fos.close();
        		 }
             }
        	
             response.setContentType(document.getContentType());
             response.setContentLength(document.getSize().intValue());
             InputStream is = new FileInputStream(imageFile);
             IOUtils.copy(is, response.getOutputStream());
        	 
        } catch(Exception e) {
        	e.printStackTrace();
        }
    }
	
	@RequestMapping(value = RestServicesConstants.GET_HOME_PAGE, method = RequestMethod.GET)
	public @ResponseBody JSONSyndicate getHomePage() {
		Page page = null;
		PageService pageService = new PageService();
		page = pageService.findPageAndWidgetsByInstanceName(RestServicesConstants.HOME_PAGE);
		JSONSyndicate syndicate = EntityJSONConverterFacade.unMarshall(page, EntityJSONConverterFacade.CONVERTER_TYPE_GENERIC, true);
		return syndicate;
	}
	
	@RequestMapping(value = RestServicesConstants.GET_PAGE, method = RequestMethod.GET)
	public @ResponseBody JSONSyndicate gePage(@PathVariable("pageID") String pageID) {
		PageService pageService = new PageService();
		Page page = pageService.findPageByID(pageID);
		JSONSyndicate syndicate = null;
		if(page!=null){
			syndicate = EntityJSONConverterFacade.unMarshall(page, EntityJSONConverterFacade.CONVERTER_TYPE_GENERIC, true);
		}else{
			syndicate = new JSONSyndicate();
			syndicate.setErrorMsg("Page Not Found");
		}
		return syndicate;
	}
	
	@RequestMapping(value = RestServicesConstants.PREVIEW_MENU, method = RequestMethod.POST)
	public @ResponseBody MenuItem previewMenu(@RequestBody MenuItem menuItem) {
		String menuJson = new String(Base64.getDecoder().decode(menuItem.getJson().getBytes()));
		if(menuJson==null || menuJson.equals("")){
			menuItem.setError(RestServicesConstants.ERROR_FAILED_INCOMING_MENU_JSON);
		}
		String menuXMLInput = JsonXMLConverter.convertMenuToXML(menuJson);
		if(menuXMLInput==null || menuXMLInput.equals("")){
			menuItem.setError(RestServicesConstants.ERROR_FAILED_INCOMING_MENU_JSON_TO_XML);
		}
		String htmlSnippet = Utilities.encode(XSLTTransformUtility.generatePreviewGlobalNavigationXMLSnippet(menuXMLInput));
		menuItem.setJson(htmlSnippet);
		return menuItem;
	}
	
	@RequestMapping(value = RestServicesConstants.GET_ALL_PAGES, method = RequestMethod.GET)
	public @ResponseBody Pages getPages() {
		Pages pages = new Pages();
		PageService pageService = new PageService();
		List<org.kscb.entities.Page> pageList = pageService.findUnattachedPages();
		if(pages==null){
			pages.setError("No un-attached Pages available, you will need to create one on Page Manager!");
		}
		JsonNodeFactory jnf = JsonNodeFactory.instance;
		ArrayNode rootArrayNode = jnf.arrayNode();
		Iterator<org.kscb.entities.Page> pageItr = pageList.iterator();
		while(pageItr.hasNext()){
			org.kscb.entities.Page page = pageItr.next();
			ObjectNode on = jnf.objectNode();
			on.put("pageId", page.getId());
			on.put("pageName", page.getPageName());
			rootArrayNode.add(on);
		}
		
		String json = null;
		try{
			json = new ObjectMapper().writeValueAsString(rootArrayNode);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		pages.setJson(Utilities.encode(json));
		try {
			Thread.sleep(2000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pages;
	}
	
	@RequestMapping(value = RestServicesConstants.GET_MENU_ITEMS, method = RequestMethod.GET)
	public @ResponseBody MenuItem getMenu() {
		MenuItem mi = new MenuItem();
		WigetService widgetService = new WigetService();
		Widget widget = widgetService.findByType(WigetUtils.MENU);
		if(widget==null){
			mi.setError("Menu Widget has not been created");
			return mi;
		}
		mi.setWidgetID(widget.getId());
		if(widget.getRawFormat()==null){
			mi.setJson("");
		}else{
			mi.setJson(widget.getRawFormat());
		}
		
		return mi;
	}
	
	@RequestMapping(value = RestServicesConstants.UPDATE_PAGE, method = RequestMethod.POST)
	public @ResponseBody org.kscb.rest.domain.Page updatePage(@RequestBody org.kscb.rest.domain.Page page) {
		
		PageService pageService = new PageService();
		Page updatedPage = pageService.findPageByID(page.getPid());
		if(updatedPage==null){
			page.setErrorMsg("Page Not Found");
		}else{
			updatedPage.setInstanceName(page.getDisplayName());
			updatedPage.setPageName(page.getDisplayName());
			updatedPage.setTitleText(page.getTitleText());
			updatedPage.setHid(page.getHid());
			updatedPage.setMid(page.getMid());
			updatedPage.setCid(page.getCid());
			updatedPage.setLid(page.getLid());
			updatedPage.setFid(page.getFid());
			pageService.update(updatedPage);
		}
		return page;
	}
	
	@RequestMapping(value = RestServicesConstants.CREATE_PAGE, method = RequestMethod.POST)
	public @ResponseBody org.kscb.rest.domain.Page createPage(@RequestBody org.kscb.rest.domain.Page page) {
		
		PageService pageService = new PageService();
		
		Page createPage = new Page();
		createPage.setInstanceName(page.getDisplayName());
		createPage.setPageName(page.getDisplayName());
		createPage.setTitleText(page.getTitleText());
		createPage.setHid(page.getHid());
		createPage.setMid(page.getMid());
		createPage.setCid(page.getCid());
		createPage.setLid(page.getLid());
		createPage.setFid(page.getFid());
		
		pageService.persist(createPage);
		
		return page;
	}
	
	@RequestMapping(value = RestServicesConstants.SAVE_PAGE, method = RequestMethod.POST)
	public @ResponseBody org.kscb.rest.domain.Page savePage(@RequestBody org.kscb.rest.domain.Page page) {
		
		PageService pageService = new PageService();
		Page homePage = pageService.findPageByInstanceName(RestServicesConstants.HOME_PAGE);
		if(homePage!=null){
			homePage.setHid(page.getHid());
			homePage.setTitleText(page.getTitleText());
			homePage.setMid(page.getMid());
			homePage.setCid(page.getCid());
			homePage.setLid(page.getLid());
			homePage.setFid(page.getFid());
			pageService.update(homePage);
		}else{
			homePage = new Page();
			homePage.setInstanceName(RestServicesConstants.HOME_PAGE);
			homePage.setPageName(RestServicesConstants.HOME_PAGE);
			homePage.setHid(page.getHid());
			homePage.setTitleText(page.getTitleText());
			homePage.setMid(page.getMid());
			homePage.setCid(page.getCid());
			homePage.setLid(page.getLid());
			homePage.setFid(page.getFid());
			pageService.persist(homePage);
		}
		return page;
	}
	
	@RequestMapping(value = RestServicesConstants.UPDATE_MENU, method = RequestMethod.POST)
	public @ResponseBody MenuItem updateMenu(@RequestBody MenuItem menuItem) {
		String menuJson = new String(Base64.getDecoder().decode(menuItem.getJson().getBytes()));
		if(menuJson==null || menuJson.equals("")){
			menuItem.setError(RestServicesConstants.ERROR_FAILED_INCOMING_MENU_JSON);
		}
		//convert json to xml (Menu Item should use JAXB)
		String menuXMLInput = JsonXMLConverter.convertMenuToXML(menuJson);
		if(menuXMLInput==null || menuXMLInput.equals("")){
			menuItem.setError(RestServicesConstants.ERROR_FAILED_INCOMING_MENU_JSON_TO_XML);
		}
		//get xlst transformer
		//load xslt template for menu from classpath
		//inject xml
		//perform trasnformation
		String htmlSnippet = XSLTTransformUtility.generateGlobalNavigationXMLSnippet(menuXMLInput);
		if(htmlSnippet==null || htmlSnippet.equals("")){
			menuItem.setError(RestServicesConstants.ERROR_MENU_HTML);
			return menuItem;
		}
		//connect to widget service dao an persist menu widget
		//passing snippet xml, menu json
		WigetService widgetService = new WigetService();
		Widget widget = widgetService.findByID(menuItem.getWidgetID());
		
		if(widget==null){
			PageService pageService = new PageService();
			org.kscb.entities.Page page = 
					pageService.findOrCreatePage(
							org.kscb.entities.Page.HOME_PAGE_INSTANCE_NAME, org.kscb.entities.Page.HOME_PAGE_NAME);
			widget = new Widget();
			//widget.setPid(page.getPid());
			widget.setWidgetName(WigetUtils.MENU);
			widget.setRawFormat(menuJson);
			widget.setSnippet(htmlSnippet);
			widgetService.persist(widget);
		}else{
			widget.setRawFormat(menuJson);
			widget.setSnippet(htmlSnippet);
			widgetService.update(widget);
		}
		
		//return json structure so ui can update
		menuItem.setWidgetID(widget.getId());
		return menuItem;
	}
	
	//UPDATE_TEMPLATE
	@RequestMapping(value = RestServicesConstants.UPDATE_TEMPLATE, method = RequestMethod.POST)
	public @ResponseBody JSONSyndicate updateTemplate(@RequestBody Template template) {
		Iterator<Entry<String, Object>> itr = template.getEditors().entrySet().iterator();
		Entry<String, Object> entry = itr.next();
		Widget widget = null;
		try{
			String dynamicJsonToXML = JsonXMLConverter.convertDynamicJsonToTemplateXML((Map)entry.getValue());
			String templateXML = XSLTTransformUtility.generateXMLInjectedTemplate(template.getLayoutID(), dynamicJsonToXML);
			
			WigetService widgetService = new WigetService();
			widget = widgetService.findByID(String.valueOf(template.getWidgetID()));
			widget.setWidgetDisplayName(template.getLayoutName());
			widget.setSnippet(templateXML);
			widget.setRawFormat(JsonXMLConverter.convertTemplateToJSONString(template));
			widgetService.update(widget);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		JSONSyndicate syndicate = EntityJSONConverterFacade.unMarshallList(EntityUtility.convert(widget), 
				EntityJSONConverterFacade.CONVERTER_TYPE_GENERIC, false);
		syndicate.setErrorMsg("success");
		return syndicate;
		
	}
	
	@RequestMapping(value = RestServicesConstants.PREVIEW_TEMPLATE, method = RequestMethod.POST)
	public @ResponseBody JSONSyndicate previewTemplate(@RequestBody Template template) {
		int layoutID = template.getLayoutID();
		String layoutName = template.getLayoutName();
		Iterator<Entry<String, Object>> itr = template.getEditors().entrySet().iterator();
		Entry<String, Object> entry = itr.next();
		
		Widget widget = null;
		try{
			String dynamicJsonToTemplateWidgetXML = JsonXMLConverter.convertDynamicJsonToTemplateWidgetXML((Map)entry.getValue());
			String widgetSnippetXML = XSLTTransformUtility.generateXMLInjectedTemplate(layoutID, dynamicJsonToTemplateWidgetXML);
			
			widget = new Widget();
			widget.setSnippet(widgetSnippetXML);
			widget.setTemplateID(String.valueOf(layoutID));
			widget.setWidgetDisplayName(layoutName);
		}catch(Exception e){
			
		}
		
		JSONSyndicate syndicate = EntityJSONConverterFacade.unMarshallList(EntityUtility.convert(widget), 
				EntityJSONConverterFacade.CONVERTER_TYPE_TEMPLATE_SNIPPET, false);
		return syndicate;
	}
	
	@RequestMapping(value = RestServicesConstants.CREATE_TEMPLATE, method = RequestMethod.POST)
	public @ResponseBody JSONSyndicate createTemplate(@RequestBody Template template) {
		int layoutID = template.getLayoutID();
		String layoutName = template.getLayoutName();
		Iterator<Entry<String, Object>> itr = template.getEditors().entrySet().iterator();
		Entry<String, Object> entry = itr.next();
		
		Widget widget = null;
		
		try {
			String dynamicJsonToTemplateXML = JsonXMLConverter.convertDynamicJsonToTemplateXML((Map)entry.getValue());
			String dynamicJsonToTemplateWidgetXML = JsonXMLConverter.convertDynamicJsonToTemplateWidgetXML((Map)entry.getValue());
			String transientSnippetXML = XSLTTransformUtility.generateXMLInjectedTemplate(layoutID, dynamicJsonToTemplateXML);
			String widgetSnippetXML = XSLTTransformUtility.generateXMLInjectedTemplate(layoutID, dynamicJsonToTemplateWidgetXML);
			
			WigetService widgetService = new WigetService();
			widget = widgetService.findByDisplayName(layoutName);
			
			if(widget!=null){
				JSONSyndicate syndicate = new JSONSyndicate();
				syndicate.setErrorMsg("Widget already exists!");
				return syndicate;
			}
			
			widget = new Widget();
			widget.setTemplateID(String.valueOf(layoutID));
			widget.setWidgetName(WigetUtils.LAYOUT);
			widget.setSnippet(widgetSnippetXML);
			widget.setTransientSnippet(transientSnippetXML);
			widget.setRawFormat(JsonXMLConverter.convertTemplateToJSONString(template));
			widget.setWidgetDisplayName(layoutName);
			widgetService.persist(widget);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		JSONSyndicate syndicate = EntityJSONConverterFacade.unMarshallList(EntityUtility.convert(widget), 
				EntityJSONConverterFacade.CONVERTER_TYPE_GENERIC, false);
		syndicate.setErrorMsg("success");
		return syndicate;
	}
	
	@SuppressWarnings("rawtypes")
	@RequestMapping(value = RestServicesConstants.GET_WIDGETS_OF_TYPE, method = RequestMethod.GET)
	public @ResponseBody JSONSyndicate getWidgetsOfType(@PathVariable("type") String widgetType) {
		WigetService widgetService = new WigetService();
		List<Widget> widgetList = widgetService.findAllByType(widgetType);
		JSONSyndicate syndicate = EntityJSONConverterFacade.unMarshallList(widgetList, EntityJSONConverterFacade.CONVERTER_TYPE_GENERIC, true);
		
		return syndicate;
	}
	
	@SuppressWarnings("rawtypes")
	@RequestMapping(value = RestServicesConstants.GET_WIDGET_FOR_ID, method = RequestMethod.GET)
	public @ResponseBody JSONSyndicate getWidgetForID(@PathVariable("widgetID") String widgetID) {
		WigetService widgetService = new WigetService();
		Widget widget = widgetService.findByID(widgetID);
		Template template = JsonXMLConverter.convertJSONStringToTemplate(widget.getDecodedRawFormat());
		
		Iterator<Entry<String, Object>> itr = template.getEditors().entrySet().iterator();
		Entry<String, Object> entry = itr.next();
		
		try{
			String dynamicJsonToTemplateXML = JsonXMLConverter.convertDynamicJsonToTemplateXML((Map)entry.getValue());
			String transientSnippetXML = XSLTTransformUtility.generateXMLInjectedTemplate(template.getLayoutID(), dynamicJsonToTemplateXML);
			
			widget.setTransientSnippet(transientSnippetXML);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		JSONSyndicate syndicate = EntityJSONConverterFacade.unMarshallList(EntityUtility.convert(widget), 
				EntityJSONConverterFacade.CONVERTER_TYPE_TEMPLATE_SNIPPET, false);
		return syndicate;
	}
	
	@SuppressWarnings("rawtypes")
	@RequestMapping(value = RestServicesConstants.GET_TEMPLATE, method = RequestMethod.GET)
	public @ResponseBody JSONSyndicate getTemplate(@PathVariable("templateID") int templateID) {
		String templateXML = XSLTTransformUtility.generateBlankTemplate(templateID);
		JSONSyndicate syndicate = EntityJSONConverterFacade.unMarshall(templateXML, EntityJSONConverterFacade.CONVERTER_TYPE_TEMPLATE, true);
		return syndicate;
	}
	
}
