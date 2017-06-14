package com.kscb.rest.utilities.json.converters;

import java.io.Serializable;
import java.util.List;

import org.kscb.entities.Page;

public abstract class EntityJSONConverter<T, Id extends Serializable> {
	
	public static final String WIDGET_SNIPPET = "widgetSnippet";
	public static final String WIDGET_TRANSIENT_SNIPPET = "widgetTransientSnippet";
	public static final String WIDGET_ID = "widgetId";
	public static final String WIDGET_DISPLAYNAME = "widgetDisplayName";
	public static final String WIDGET_TEMPLATE_ID = "widgetTemplateID";
	
	public static final String PAGE_ID = "pid";
	public static final String PAGE_DISPLAY_NAME = "displayName";
	public static final String PAGE_INSTANCE_NAME = "instanceName";
	public static final String PAGE_HID = "hid";
	public static final String PAGE_TITLE_TEXT = "titleText";
	public static final String PAGE_MID = "mid";
	public static final String PAGE_CID = "cid";
	public static final String PAGE_LID = "lid";
	public static final String PAGE_FID = "fid";
	
	public static final String DOCUMENT_NAME = "Name";
	public static final String DOCUMENT_GET_CONTENT_TYPE = "Content Type";
	public static final String DOCUMENT_SIZE = "Size";
	public static final String DOCUMENT_DATE_CREATED = "Date Created";
	public static final String DOCUMENT_LAST_UPDATED = "Last Updated";
	
	public static final String DATA_TABLE = "data";
	
	abstract T unmarshal(List<T> entities, boolean encode);
	abstract T unmarshall(String data, boolean encode);
	abstract T unmarshall(Page page, boolean encode);
	abstract void marshal();

}
