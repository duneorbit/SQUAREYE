package org.kscb.utilities;

public class StringUtils {
	
	public static String camelCase(String input){
		String start = input;
	    StringBuffer sb = new StringBuffer();
	    for (String s : start.split(" ")) {
	    	if(sb.length()>0){
	    		sb.append(" ");
	    	}
	        sb.append(Character.toUpperCase(s.charAt(0)));
	        if (s.length() > 1) {
	            sb.append(s.substring(1, s.length()).toLowerCase());
	        }
	    }
	    return sb.toString();
	}

}
