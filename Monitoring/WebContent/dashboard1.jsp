<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="main.LoginGet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/
dshcss.css" rel="stylesheet" type="text/css"/>

<script src="js/jquery-1.11.2.min.js" type="text/javascript"></script>
<link href="css/http.css" rel="stylesheet" type="text/css"/>
<script language="javascript" src="js/monitormask.js"></script>
<script type="text/javascript">
 
 $(document).ready(function(){
$("#addmonitor").click(function(){
	  $("#mask1").show();
	  $("#addMonitorForm1").slideDown();
	});
	
	$("#close").click(function(){
	  $("#addMonitorForm1").slideUp();
	  $("#mask1").hide();
	});
 });

  </script>

</head>
<body>
<div class="container">
      <header>
      <img src="../../Documents/NetBeansProjects/WebApplication2/images/images (1).jpg" height="120px"  />
      </header>
     <div class="space">
     
        <a href="#" style=" margin:60px 15px 0px 220px; font-size:18px; color:#A0A0A0; text-decoration:none; font-style:italic;" id="DashBoard">DashBoard</a>
        
        

 
        <a href="#" style=" margin:60px 15px 0px 60px; font-size:18px; color:#A0A0A0; text-decoration:none; font-style:italic;" id="MySetting">MySetting</a>
       
        
          
      </div>
      <div class="logout">
      <ul>
      <li style="background:#009100">
       <div> <img src="images/business_user.png" height="22px" width="22px" style="float:left; margin-top:5px"/>
      </div>
      <a href="#" style=" color:#FFFFFF; font-style:italic;" id="signup s "> Vyom</a></li>
        
        <li style="background:#009100;">
      <div> <img src="images/download (1).png" height="22px" width="22px" style="float:left; margin-top:5px"/>
      </div>
      <a href="#" style=" color:#FFFFFF; text-align:center; font-style:italic; " "/>Log Out</a></li>      
      
     </ul>
      </div>
   
      </div>
      
 <main>
 <div class="addmonitor">
 
 <div class="moniter_button" style="background-color:#242424;">
 
       
      <input type="submit"  value="+ Add Monitor" style=" color:#FFFFFF" />
     
 </div>
 <div class="moniter_button" style="background-color:#242424;"/>
 <input type="search" placeholder="search" style=" margin:30px 0px 0px 10px ; background-color:#000000; color:#999999;" />
 </div>
 </div>
 <div class="dynamicpage">
 <div class="empty" style="background-color:#242424;">
 </div>
 
 <div class="alert">
 <h3> Min Up Time: </h3> <label>03hr 2min</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <label>status:   ok(200)</label>
 
 
 </div>
 
 <div class="alert">
 <h3> Max Up Time: </h3> <label>03hr 2min</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <label>status:   ok(200)</label>
 </div>
  <div class="alert">
 <h3> Max Up Time: </h3> <label>03hr 2min</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <label>status:   ok(200)</label>
 </div>
  <div class="alert">
 <h3> Max Up Time: </h3> <label>03hr 2min</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <label>status:   ok(200)</label>
 </div>
 </div>
 
 
 </main>
</body>
 <!--button mask code -->
   <div id="mask1"></div>
<div id="addMonitorForm1">
<div id="container1">
<div class="monitortype1">
<div >
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
         <button id="btn1"  >Create Monitor </button>
         <button id="btn2"  >Close </button>
     </div>
    
     </div>
     </div>
</html>