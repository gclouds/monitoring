<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,main.*"%>


<%! String str;
Monitor monitor=null;%>
<% 
String url = request.getParameter("url");
if (url != null && !url.equals("")) {
	monitor=new Monitor("","");
	;
}
else{
	out.print("No URL Found!!!");
}
%>
<table>
  <tr>
    <td>Uptime For:</td>
    <td><% out.print(url); %></td>
  </tr>
  <tr>
    <td>Uptime</td>
    <td><% out.print(monitor.getUpTime()); %></td>
  </tr>
  <tr>
    <td>Downtime:</td>
    <td><% out.print(monitor.getDownTime()); %></td>
  </tr>
  <tr>
    <td>Lowest Response Time</td>
    <td><% out.print(monitor.getLowResTime()); %></td>
  </tr>

</table>



