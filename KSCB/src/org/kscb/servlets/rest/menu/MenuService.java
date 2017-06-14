package org.kscb.servlets.rest.menu;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MenuService extends HttpServlet{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 978177069870072680L;


	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.getWriter().println("Delete");
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StringBuffer r = new StringBuffer();
		r.append("[")
         .append("{")
		 .append("\"text\": \"Parent 1\",")
		.append("\"href\": \"#parent1\",")
		.append("\"tags\": [\"4\"],")
		.append("\"nodes\": [")
		.append("{")
		.append("\"text\": \"Child 1\",")
		.append("\"href\": \"#child1\",")
		.append("\"tags\": [\"2\"],")
		.append("\"nodes\": [")
		.append("{")
		.append("\"text\": \"Grandchild 1\",")
		.append("\"href\": \"#grandchild1\",")
		.append("\"tags\": [\"0\"]")
		.append("},")
		.append("{")
		.append("\"text\": \"Grandchild 2\",")
		.append("\"href\": \"#grandchild2\",")
		.append("\"tags\": [\"0\"]")
		.append("}")
		.append("]")
		.append("},")
		.append("{")
		.append("\"text\": \"Child 2\",")
		.append("\"href\": \"#child2\",")
		.append("\"tags\": [\"0\"]")
		.append("}")
		.append("]")
		.append("},")
		.append("{")
		.append("\"text\": \"Parent 2\",")
		.append("\"href\": \"#parent2\",")
		.append("\"tags\": [\"0\"]")
		.append("},")
		.append("{")
		.append(" \"text\": \"Parent 3\",")
		.append("\"href\": \"#parent3\",")
		.append("\"tags\": [\"0\"]")
		.append("},")
		.append("{")
		.append("\"text\": \"Parent 4\",")
		.append("\"href\": \"#parent4\",")
		.append("\"tags\": [\"0\"]")
		.append("},")
		.append("{")
		.append("\"text\": \"Parent 5\",")
		.append("\"href\": \"#parent5\"  ,")
		.append("\"tags\": [\"0\"]")
		.append("}")
		.append("]");
		try{
			Thread.sleep(2000);
		}catch(Exception e){
			
		}
		resp.getWriter().println(r.toString());
	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.getWriter().println("Post");
	}

	
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.getWriter().println("Put");
	}

}
