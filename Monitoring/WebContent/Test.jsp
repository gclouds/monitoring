<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script language="javascript" src="js/monitormask.js"></script>
<script language="javascript" src="js/jquery-2.1.3.min.js"></script>
<link href="css/http.css" rel="stylesheet" type="text/css"/>
 <script type="text/javascript">
 


  </script>
</head>
<body>
<a href="javascript:void(0)" id="signup1">Signup</a>
</body>
<div id="mask1"></div>
<div id="addMonitorForm1">
<div id="container1">
<div class="monitortype1">
<div id="signupForm1">
     <form id="form">
     <h3>New Monitor</h3>
     <hr/>
     <br/>
     
     <h4>Monitor Information</h4>
     <hr/>
     
     
     <table>
     <tr>
     <td>
     <label>Monitor Type*</label>     
     
     
     <select id ="select" onchange="javascript:getRes()">
  <option value="Please Select">  Please  Select </option>
  <option value="http">http</option>
  <option value="keyword">keyword</option>
  <option value="ping">ping</option>
   </select>    
     </td>
     </tr><tr><td>
<div id="fillresults">

</div><tr><td>
     </table>
     <hr/>
     </form>
     </div>
     </div>
     
     <div class="alertmail1">
     
     <div style="float=left; height:40px; width:90%; background-color:#CAFFCA; margin:10px 0px 0px 20px;">
     <br/>
     
     <label>Monitor created! You can keep creating new monitors.</label>
     </div>
     
     <div style="float=left; height:200px; width:90%; background-color:#FFFFD5; margin-left:20px; margin-bottom:-10px; padding:0px;"  >
     <br/>
     
       <label>  Select "Alert Contacts To Notify"</label>
       <hr/>
       <table height="80px" width="90%" style="margin:0px 0px 0px 20px;">
       <tr style="background-color:#CCCCCC; cellpadding:0px;">
       <td>       </td>
       <td>
       <label>Type</label>       </td>
       <td>
       <label>Alert Contact</label>       </td>
       </tr>
       <tr>
       <td>
       <input type="checkbox" name="vehicle" >       </td>
       <td>
       <label>Type</label>       </td>
       <td>
       <label>	vyom.jhs@gmail.com</label>       </td>
       </tr>
       </table>
       <hr/>
       <label>New alert contacts can be defined from the "My Settings page.</label>
     </div>
     </div>
     </div>
     </div>
</html>