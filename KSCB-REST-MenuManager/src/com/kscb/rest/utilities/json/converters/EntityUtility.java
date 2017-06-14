package com.kscb.rest.utilities.json.converters;

import java.util.ArrayList;
import java.util.List;

import org.kscb.entities.Widget;

public class EntityUtility {
	
	public static List<Widget> convert(Widget widget){
		List<Widget> widgetList = new ArrayList<Widget>();
		widgetList.add(widget);
		return widgetList;
	}

}
