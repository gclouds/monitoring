<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,main.*"%>


<%! String str="";
Monitor monitor=null;%>
<% 
if (true) {
	monitor=new Monitor("","");
	
	for(int i=0;i<5;i++){
		str=str+"<div><a href=\"#\" onclick=\"javascript:getMonStatus("+i+")\">something</a></div>";
	}
	out.print(str);
	str="";
}
else{
	out.print("No URL Found!!!");
}
%>
