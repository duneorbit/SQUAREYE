package org.kscb.dao.utils;

import java.io.UnsupportedEncodingException;
import java.util.Base64;

import org.kscb.dto.DocumentDTO;
import org.kscb.entities.Document;

public class Utilities {
	
	private static final String OPEN_BRACKET = "&gt;";
	private static final String CLOSE_BRACKET = "&lt;";
	private static final String OPEN_BRACKET_SYMBOL = "<";
	private static final String CLOSE_BRACKET_SYMBOL = ">";
	
	public static String encode(String data){
		return Base64.getEncoder().encodeToString(data.getBytes());
	}
	
	public static String decode(String data){
		String decoded = new String(Base64.getDecoder().decode(data.getBytes()));
		String utf8Decoded = null;
		try {
			utf8Decoded = new String(decoded.getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return utf8Decoded;
	}
	
	public static DocumentDTO asDto(Document document){
		DocumentDTO dto = new DocumentDTO();
		return dto.clone(document);
	}

}
