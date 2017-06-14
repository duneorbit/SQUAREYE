<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="org.kscb.page.CompositePage" %>
<%@page import="org.kscb.servlets.printer.PrintUtility"%>

<%
	CompositePage compositePage = null;
	if(request.getAttribute("page")!=null){
		compositePage = (CompositePage)request.getAttribute("page");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	<link href="css/nav-menu.css" rel="stylesheet" type="text/css" />
	<link href="css/widget-empty.css" rel="stylesheet" type="text/css" />
	<link href="css/temp.css" rel="stylesheet" type="text/css" />
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<!--<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
</head>
<body>
	<div class="container">
	
		<%
			
		%>
	
		<%
			PrintUtility.print(out, compositePage);
		%>
		
	</div>
</body>
</html>