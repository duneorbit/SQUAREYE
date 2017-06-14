package com.kscb.rest.utilities;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.Marshaller;
import javax.xml.stream.XMLOutputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamWriter;

import org.json.JSONException;
import org.json.JSONObject;
import org.kscb.rest.domain.HeaderWidget;
import org.kscb.rest.domain.MappedNavigationMenu;
import org.kscb.rest.domain.MappedNavigationMenuWrapper;
import org.kscb.rest.domain.Template;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class JsonXMLConverter {
	
	public static final String ATTRIBUTE_NAME = "name";
	
	public static final String ELEMENT_TEMPLATE_XML = "TemplateXML";
	public static final String ELEMENT_TEMPLATE_WIDGET_XML = "TemplateWidgetXML";
	public static final String ELEMENT_EDITOR = "Editor";
	
	public static String convertHeaderWidgetToJSONString(HeaderWidget headerWidget) throws JsonGenerationException, JsonMappingException, IOException{
		ByteArrayOutputStream stream = new ByteArrayOutputStream();
		ObjectMapper mapper = new ObjectMapper();
		mapper.writeValue(stream, headerWidget);
		return new String(stream.toByteArray());
	}
	public static String convertTemplateToJSONString(Template template) throws JsonGenerationException, JsonMappingException, IOException{
		ByteArrayOutputStream stream = new ByteArrayOutputStream();
		ObjectMapper mapper = new ObjectMapper();
		mapper.writeValue(stream, template);
		return new String(stream.toByteArray());
	}
	
	public static Template convertJSONStringToTemplate(String JSON){
		ObjectMapper mapper = new ObjectMapper();
		Template template = null;
		try{
			template = mapper.readValue(JSON, Template.class);
		}catch(Exception e){
			e.printStackTrace();
		}
		return template;
	}
	
	public static String converHeaderWidgetToXML(HeaderWidget headerWidget){
		try{
			JAXBContext context = JAXBContext.newInstance(HeaderWidget.class);
			Marshaller marshaller = context.createMarshaller();
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			marshaller.marshal(headerWidget, baos);
			String xml = new String(baos.toByteArray());
			return xml;
		}catch(Exception e){
			e.printStackTrace();
			return "";
		}
	}
	
	public static String convertMenuToXML(String json){
		try{
			ObjectMapper om = new ObjectMapper();
			List<MappedNavigationMenu> mappedObjects = 
					om.readValue(json, om.getTypeFactory().constructCollectionType(List.class, MappedNavigationMenu.class));
			MappedNavigationMenuWrapper wrapper = new MappedNavigationMenuWrapper();
			wrapper.setMappedNavigationMenu(mappedObjects);
			JAXBContext context = JAXBContext.newInstance(MappedNavigationMenuWrapper.class);
			Marshaller marshaller = context.createMarshaller();
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			marshaller.marshal(wrapper, baos);
			String xml = new String(baos.toByteArray());
			return xml;
		}catch(Exception e){
			e.printStackTrace();
			return "";
		}
	}
	
	public static String convertDynamicJsonToTemplateWidgetXML(Map json) throws XMLStreamException, JSONException{
		ByteArrayOutputStream stream = new ByteArrayOutputStream();
		XMLOutputFactory output = XMLOutputFactory.newInstance();
		XMLStreamWriter writer = output.createXMLStreamWriter(stream);
		writer.writeStartDocument();
		writer.writeStartElement(ELEMENT_TEMPLATE_WIDGET_XML);
		JSONObject jsonObj = new JSONObject(json);
		for(Iterator iterator = jsonObj.keys(); iterator.hasNext();) {
		    String key = (String) iterator.next();
		    writer.writeStartElement(ELEMENT_EDITOR);
		    writer.writeAttribute(ATTRIBUTE_NAME, key);
		    writer.writeCharacters((String)jsonObj.get(key));
		    writer.writeEndElement();
		    writer.flush();
		}
		writer.writeEndElement();
		writer.writeEndDocument();
		writer.flush();

		return new String(stream.toByteArray());
	}
	
	public static String convertDynamicJsonToTemplateXML(Map json) throws XMLStreamException, JSONException{
		ByteArrayOutputStream stream = new ByteArrayOutputStream();
		XMLOutputFactory output = XMLOutputFactory.newInstance();
		XMLStreamWriter writer = output.createXMLStreamWriter(stream);
		writer.writeStartDocument();
		writer.writeStartElement(ELEMENT_TEMPLATE_XML);
		JSONObject jsonObj = new JSONObject(json);
		for(Iterator iterator = jsonObj.keys(); iterator.hasNext();) {
		    String key = (String) iterator.next();
		    writer.writeStartElement(ELEMENT_EDITOR);
		    writer.writeAttribute(ATTRIBUTE_NAME, key);
		    writer.writeCharacters((String)jsonObj.get(key));
		    writer.writeEndElement();
		    writer.flush();
		}
		writer.writeEndElement();
		writer.writeEndDocument();
		writer.flush();

		return new String(stream.toByteArray());
	}

}
