package com.kscb.rest.utilities.json.converters;

import java.io.Serializable;

public class JSONSyndicate<T, Id extends Serializable> {
	
	private String errorMsg = "success";
	
	private String json = null;
	
	public JSONSyndicate(String msg){
		this.errorMsg = msg;
	}

	public JSONSyndicate(){
		
	}

	public String getErrorMsg() {
		return errorMsg;
	}

	public void setErrorMsg(String errorMsg) {
		this.errorMsg = errorMsg;
	}

	public String getJson() {
		return json;
	}

	public void setJson(String json) {
		this.json = json;
	}

}
