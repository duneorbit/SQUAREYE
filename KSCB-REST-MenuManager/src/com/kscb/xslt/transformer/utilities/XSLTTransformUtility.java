package com.kscb.xslt.transformer.utilities;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.StringReader;

import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

public class XSLTTransformUtility {
	
	
	
	private static InputStream getHeaderWidgetXSL(){
		InputStream stream = XSLTTransformUtility.class.getResourceAsStream("/com/kscb/xslt/HeaderWidget.xsl");
		return stream;
	}
	
	private static InputStream getCarouselThumbnailsXSL(){
		InputStream stream = XSLTTransformUtility.class.getResourceAsStream("/com/kscb/xslt/CarouselThumbnails.xsl");
		return stream;
	}
	
	private static InputStream getThumbnailsXSL(){
		InputStream stream = XSLTTransformUtility.class.getResourceAsStream("/com/kscb/xslt/Thumbnails.xsl");
		return stream;
	}
	
	private static InputStream getGlobalNagivationMenuXSL(){
		InputStream stream = XSLTTransformUtility.class.getResourceAsStream("/com/kscb/xslt/GlobalNavigationMenu.xsl");
		return stream;
	}
	
	private static InputStream getPreviewGlobalNagivationMenuXSL(){
		InputStream stream = XSLTTransformUtility.class.getResourceAsStream("/com/kscb/xslt/PreviewGlobalNavigationMenu.xsl");
		return stream;
	}
	
	private static InputStream getTemplateXSL(int getTemplateXSL){
		String templatePathName = "/com/kscb/xslt/templates/template@NUM@.xsl";
		templatePathName = templatePathName.replace("@NUM@", String.valueOf(getTemplateXSL));
		InputStream stream = XSLTTransformUtility.class.getResourceAsStream(templatePathName);
		return stream;
	}
	
	public static String getHeaderWidgetXMLSnippet(String inputXML){
		TransformerFactory factory = TransformerFactory.newInstance();
		try {
			Transformer transformer = factory.newTransformer(new StreamSource(getHeaderWidgetXSL()));
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			transformer.transform(new StreamSource(new StringReader(inputXML)), new StreamResult(baos));
			return new String(baos.toByteArray());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	
	public static String getCarouselThumbnailsXMLSnippet(){
		TransformerFactory factory = TransformerFactory.newInstance();
		try {
			Transformer transformer = factory.newTransformer(new StreamSource(getCarouselThumbnailsXSL()));
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			transformer.transform(new StreamSource(new StringReader("<thumbnails/>")), new StreamResult(baos));
			return new String(baos.toByteArray());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	
	public static String getThumbnailsXMLSnippet(){
		TransformerFactory factory = TransformerFactory.newInstance();
		try {
			Transformer transformer = factory.newTransformer(new StreamSource(getThumbnailsXSL()));
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			transformer.transform(new StreamSource(new StringReader("<thumbnails/>")), new StreamResult(baos));
			return new String(baos.toByteArray());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	
	public static String generatePreviewGlobalNavigationXMLSnippet(String inputXML){
		TransformerFactory factory = TransformerFactory.newInstance();
		try {
			Transformer transformer = factory.newTransformer(new StreamSource(getPreviewGlobalNagivationMenuXSL()));
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			transformer.transform(new StreamSource(new StringReader(inputXML)), new StreamResult(baos));
			return new String(baos.toByteArray());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	
	public static String generateGlobalNavigationXMLSnippet(String inputXML){
		TransformerFactory factory = TransformerFactory.newInstance();
		try {
			Transformer transformer = factory.newTransformer(new StreamSource(getGlobalNagivationMenuXSL()));
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			transformer.transform(new StreamSource(new StringReader(inputXML)), new StreamResult(baos));
			return new String(baos.toByteArray());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	
	public static String generateBlankTemplate(int templateIndex){
		TransformerFactory factory = TransformerFactory.newInstance();
		try {
			Transformer transformer = factory.newTransformer(new StreamSource(getTemplateXSL(templateIndex)));
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			transformer.transform(new StreamSource(new StringReader("<blank/>")), new StreamResult(baos));
			return new String(baos.toByteArray());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static String generateXMLInjectedTemplate(int templateIndex, String rootNode){
		TransformerFactory factory = TransformerFactory.newInstance();
		try {
			Transformer transformer = factory.newTransformer(new StreamSource(getTemplateXSL(templateIndex)));
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			transformer.transform(new StreamSource(new StringReader(rootNode)), new StreamResult(baos));
			return new String(baos.toByteArray());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
