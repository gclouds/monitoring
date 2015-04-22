<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,main.Logic"%>
<%
	String url = request.getParameter("url");
	if (url != null && !url.equals("")) {
		out.print(Logic.monYAT(url));
	}
	else{
		out.print("No URL Found!!!");
	}
%>

