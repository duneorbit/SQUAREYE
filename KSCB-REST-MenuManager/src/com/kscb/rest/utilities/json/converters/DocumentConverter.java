package com.kscb.rest.utilities.json.converters;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.List;

import org.kscb.dao.utils.Utilities;
import org.kscb.entities.Document;
import org.kscb.entities.Page;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.node.ObjectNode;

public class DocumentConverter<T, Id extends Serializable> extends EntityJSONConverter{

	@Override
	Object unmarshal(List entities, boolean encode) {
		JsonNodeFactory jnf = JsonNodeFactory.instance;
		ObjectNode rootObjectNode = jnf.objectNode();
		ArrayNode rootArrayNode = jnf.arrayNode();
		rootObjectNode.put(EntityJSONConverter.DATA_TABLE, rootArrayNode);
		@SuppressWarnings("unchecked")
		Iterator<Document> pageItr = entities.iterator();
		while(pageItr.hasNext()){
			Document document = pageItr.next();
			ArrayNode currentArrayNode = jnf.arrayNode();
			currentArrayNode.add(document.getName());
			currentArrayNode.add(document.getSimpleContentType());
			currentArrayNode.add(document.getSize());
			currentArrayNode.add(new SimpleDateFormat("dd-MM-yyyy").format(document.getDateCreated()));
			currentArrayNode.add(new SimpleDateFormat("dd-MM-yyyy").format(document.getLastUpdated()));
			currentArrayNode.add(document.getUrl());
			rootArrayNode.add(currentArrayNode);
		}
		JSONSyndicate syndicate = new JSONSyndicate();
		try{
			String json = new ObjectMapper().writeValueAsString(rootArrayNode);
			syndicate.setJson(Utilities.encode(new ObjectMapper().writeValueAsString(rootObjectNode)));
		}catch(Exception e){
			
		}
		return rootObjectNode;
	}

	@Override
	Object unmarshall(String data, boolean encode) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	Object unmarshall(Page page, boolean encode) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	void marshal() {
		// TODO Auto-generated method stub
		
	}
	
}


