package org.kscb.rest.domain;

public class Pages {
	
	private String error = "false";
	private String json = null;
	
	public Pages(){
		
	}

	public String getJson() {
		return json;
	}

	public void setJson(String json) {
		this.json = json;
	}

	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}
	
	

}
