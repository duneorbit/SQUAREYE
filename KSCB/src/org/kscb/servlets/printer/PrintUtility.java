package org.kscb.servlets.printer;

import java.io.IOException;

import javax.servlet.jsp.JspWriter;

import org.kscb.page.CompositePage;
import org.kscb.page.widgets.utils.WigetUtils;

public class PrintUtility {
	
	public static void print(JspWriter response, CompositePage compositePage) throws IOException{
		if(compositePage!=null){
			response.println(compositePage.getWidget(WigetUtils.HEADER).execute());
			response.println(compositePage.getWidget(WigetUtils.MENU).execute());
			response.println(compositePage.getWidget(WigetUtils.CAROUSEL).execute());
			response.println(compositePage.getWidget(WigetUtils.LAYOUT).execute());
			response.println(compositePage.getWidget(WigetUtils.FOOTER).execute());
		}else{
			response.println("This page has been removed or does not exist");
		}
	}

}
