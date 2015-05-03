<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,main.Logic"%>
<%
String url = request.getParameter("url");
if (url != null && !url.equals("")) {
}
else{
	out.print("No URL Found!!!");
}
%>
<table>
  <tr>
    <td>Uptime For:</td>
    <td><% out.print(url); %></th>
  </tr>
  <tr>
    <td>Uptime:</td>
    <td>200</td>
  </tr>
  <tr>
    <td>DownTime</td>
    <td>3000</td>
  </tr>
  <tr>
    <td>Lowest response time</td>
    <td>11111</td>
  </tr>
</table>



