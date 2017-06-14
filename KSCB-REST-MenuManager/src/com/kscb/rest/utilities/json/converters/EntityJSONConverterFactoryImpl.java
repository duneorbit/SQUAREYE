package com.kscb.rest.utilities.json.converters;

public class EntityJSONConverterFactoryImpl extends EntityJSONConverterFactory{

	@Override
	protected EntityJSONConverter createMarshaller(String converterType) {
		if(converterType.equals(EntityJSONConverterFacade.CONVERTER_TYPE_GENERIC)){
			return new WidgetsGenericConverter();
		}else if(converterType.equals(EntityJSONConverterFacade.CONVERTER_TYPE_TEMPLATE)){
			return new TemplateConverter();
		}else if(converterType.equals(EntityJSONConverterFacade.CONVERTER_TYPE_TEMPLATE_SNIPPET)){
			return new TemplateSnippetConverter();
		}else if(converterType.equals(EntityJSONConverterFacade.CONVERTER_TYPE_DOCUMENT)){
			return new DocumentConverter();
		}
		return null;
	}

}
