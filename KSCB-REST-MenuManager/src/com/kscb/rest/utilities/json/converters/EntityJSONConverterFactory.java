package com.kscb.rest.utilities.json.converters;

public abstract class EntityJSONConverterFactory {
	
	protected abstract EntityJSONConverter createMarshaller(String converterType);
}
