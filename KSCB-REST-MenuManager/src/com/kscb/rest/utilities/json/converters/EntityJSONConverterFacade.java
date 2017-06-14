package com.kscb.rest.utilities.json.converters;

import java.util.List;

import org.kscb.entities.Document;
import org.kscb.entities.Page;
import org.kscb.entities.Widget;

import com.fasterxml.jackson.databind.node.ObjectNode;

public class EntityJSONConverterFacade {
	
	public static final String CONVERTER_TYPE_GENERIC = "CONVERTER_TYPE_GENERIC";
	public static final String CONVERTER_TYPE_TEMPLATE = "CONVERTER_TYPE_TEMPLATE";
	public static final String CONVERTER_TYPE_DOCUMENT = "CONVERTER_TYPE_DOCUMENT";
	public static final String CONVERTER_TYPE_TEMPLATE_SNIPPET = "CONVERTER_TYPE_TEMPLATE_SNIPPET";
	
	public static void marshall(){
		
	}
	
	public static ObjectNode unMarshallDocumentList(List<Document> documentList, String converterType, boolean encode){
		EntityJSONConverterFactory factory = new EntityJSONConverterFactoryImpl();
		EntityJSONConverter converter = factory.createMarshaller(converterType);
		
		return (ObjectNode)converter.unmarshal(documentList, encode);
	}
	
	public static JSONSyndicate unMarshallList(List<Widget> widgetList, String converterType, boolean encode){
		return (JSONSyndicate)unMarshall(widgetList, converterType, encode);
	}
	
	
	private static Object unMarshall(List<Widget> widgetList, String converterType, boolean encode){
		EntityJSONConverterFactory factory = new EntityJSONConverterFactoryImpl();
		EntityJSONConverter converter = factory.createMarshaller(converterType);
		return converter.unmarshal(widgetList, encode);
	}
	
	
	@SuppressWarnings({ "rawtypes", "unused" })
	public static JSONSyndicate unMarshall(String data, String converterType, boolean encode){
		EntityJSONConverterFactory factory = new EntityJSONConverterFactoryImpl();
		EntityJSONConverter converter = factory.createMarshaller(converterType);
		return (JSONSyndicate)converter.unmarshall(data, encode);
	}
	
	@SuppressWarnings({ "rawtypes", "unused" })
	public static JSONSyndicate unMarshall(Page page, String converterType, boolean encode){
		EntityJSONConverterFactory factory = new EntityJSONConverterFactoryImpl();
		EntityJSONConverter converter = factory.createMarshaller(converterType);
		return (JSONSyndicate)converter.unmarshall(page, encode);
	}

}
