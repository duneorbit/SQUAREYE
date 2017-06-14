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

@SuppressWarnings("rawtypes")
public class WidgetsGenericConverter<T, Id extends Serializable> extends EntityJSONConverter{

	protected void marshal() {
		// TODO Auto-generated method stub
		
	}
	
	protected T unmarshal(List entities, boolean encode) {
		JsonNodeFactory jnf = JsonNodeFactory.instance;
		ArrayNode rootArrayNode = jnf.arrayNode();
		@SuppressWarnings("unchecked")
		Iterator<Widget> pageItr = entities.iterator();
		while(pageItr.hasNext()){
			Widget widget = pageItr.next();
			ObjectNode on = jnf.objectNode();
			on.put(EntityJSONConverter.WIDGET_ID, widget.getId());
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

	@Override
	protected Object unmarshall(String data, boolean encode) {
		// TODO Auto-generated method stub
		return null;
	}

	@SuppressWarnings("unused")
	@Override
	Object unmarshall(Page page, boolean encode) {
		JsonNodeFactory jnf = JsonNodeFactory.instance;
		ArrayNode rootArrayNode = jnf.arrayNode();
		
		ObjectNode on = jnf.objectNode();
		if(page==null){
			on.put(EntityJSONConverter.PAGE_DISPLAY_NAME, "");
			on.put(EntityJSONConverter.PAGE_INSTANCE_NAME, "");
			on.put(EntityJSONConverter.PAGE_HID, "");
			on.put(EntityJSONConverter.PAGE_TITLE_TEXT, "");
			on.put(EntityJSONConverter.PAGE_MID, "");
			on.put(EntityJSONConverter.PAGE_CID, "");
			on.put(EntityJSONConverter.PAGE_LID, "");
			on.put(EntityJSONConverter.PAGE_FID, "");
		}else{
			on.put(EntityJSONConverter.PAGE_ID, page.getId());
			on.put(EntityJSONConverter.PAGE_DISPLAY_NAME, page.getPageName());
			on.put(EntityJSONConverter.PAGE_DISPLAY_NAME, page.getPageName());
			on.put(EntityJSONConverter.PAGE_INSTANCE_NAME, page.getInstanceName());
			on.put(EntityJSONConverter.PAGE_HID, page.getHid());
			on.put(EntityJSONConverter.PAGE_TITLE_TEXT, page.getTitleText());
			on.put(EntityJSONConverter.PAGE_MID, page.getMid());
			on.put(EntityJSONConverter.PAGE_CID, page.getCid());
			on.put(EntityJSONConverter.PAGE_LID, page.getLid());
			on.put(EntityJSONConverter.PAGE_FID, page.getFid());
		}
		rootArrayNode.add(on);

		JSONSyndicate syndicate = new JSONSyndicate();
		try{
			syndicate.setJson(Utilities.encode(new ObjectMapper().writeValueAsString(rootArrayNode)));
		}catch(Exception e){
			e.printStackTrace();
		}
		return (T)syndicate;
	}

}
