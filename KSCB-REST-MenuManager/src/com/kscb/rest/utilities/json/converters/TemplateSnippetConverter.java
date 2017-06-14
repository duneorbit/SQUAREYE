package com.kscb.rest.utilities.json.converters;

import java.io.Serializable;
import java.util.Iterator;
import java.util.List;

import org.kscb.dao.utils.Utilities;
import org.kscb.entities.Page;
import org.kscb.entities.Widget;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.node.ObjectNode;

public class TemplateSnippetConverter<T, Id extends Serializable> extends EntityJSONConverter{

	protected Object unmarshal(List entities, boolean encode) {
		JsonNodeFactory jnf = JsonNodeFactory.instance;
		ArrayNode rootArrayNode = jnf.arrayNode();
		@SuppressWarnings("unchecked")
		Iterator<Widget> pageItr = entities.iterator();
		while(pageItr.hasNext()){
			Widget widget = pageItr.next();
			ObjectNode on = jnf.objectNode();
			on.put(EntityJSONConverter.WIDGET_SNIPPET, widget.getSnippet());
			on.put(EntityJSONConverter.WIDGET_TRANSIENT_SNIPPET, widget.getTransientSnippet());
			on.put(EntityJSONConverter.WIDGET_TEMPLATE_ID, widget.getTemplateID());
			on.put(EntityJSONConverter.WIDGET_DISPLAYNAME, widget.getWidgetDisplayName());
			rootArrayNode.add(on);
		}
		JSONSyndicate syndicate = new JSONSyndicate();
		try{
			syndicate.setJson(Utilities.encode(new ObjectMapper().writeValueAsString(rootArrayNode)));
		}catch(Exception e){
			e.printStackTrace();
		}
		return (T)syndicate;
	}

	protected Object unmarshall(String data, boolean encode) {
		// TODO Auto-generated method stub
		return null;
	}

	protected void marshal() {
		// TODO Auto-generated method stub
		
	}

	@Override
	Object unmarshall(Page page, boolean encode) {
		// TODO Auto-generated method stub
		return null;
	}

}
