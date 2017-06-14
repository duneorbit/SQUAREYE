package com.kscb.rest.utilities.json.converters;

import java.io.Serializable;
import java.util.List;

import org.kscb.dao.utils.Utilities;
import org.kscb.entities.Page;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.node.ObjectNode;

public class TemplateConverter<T, Id extends Serializable> extends EntityJSONConverter {

	@Override
	protected Object unmarshal(List entities, boolean encode) {
		// TODO Auto-generated method stub
		return null;
	}

//	protected Object unmarshal(String data) {
//		JsonNodeFactory jnf = JsonNodeFactory.instance;
//		ObjectNode on = jnf.objectNode();
//		on.put("templateXML", data);
//		ArrayNode rootArrayNode = jnf.arrayNode();
//		rootArrayNode.add(on);
//		JSONSyndicate syndicate = new JSONSyndicate();
//		try{
//			syndicate.setJson(new ObjectMapper().writeValueAsString(rootArrayNode));
//		}catch(Exception e){
//			e.printStackTrace();
//		}
//		return (T)syndicate;
//	}
	
	@SuppressWarnings("rawtypes")
	@Override
	protected Object unmarshall(String data, boolean encode) {
		JsonNodeFactory jnf = JsonNodeFactory.instance;
		ObjectNode on = jnf.objectNode();
		on.put("templateXML", data);
		ArrayNode rootArrayNode = jnf.arrayNode();
		rootArrayNode.add(on);
		JSONSyndicate syndicate = new JSONSyndicate();
		try{
			if(encode){
				syndicate.setJson(Utilities.encode(new ObjectMapper().writeValueAsString(rootArrayNode)));
			}else{
				syndicate.setJson(new ObjectMapper().writeValueAsString(rootArrayNode));
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return (T)syndicate;
	}

	@Override
	void marshal() {
		// TODO Auto-generated method stub
		
	}

	@Override
	Object unmarshall(Page page, boolean encode) {
		// TODO Auto-generated method stub
		return null;
	}

}
