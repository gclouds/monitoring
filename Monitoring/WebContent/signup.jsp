<%-- 
    Document   : signup
    Created on : Apr 12, 2015, 5:15:27 PM
    Author     : Sunaina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign up</title>
               <link href="css/style.css" rel="stylesheet" type="text/css"/>
<script src="jquery/jquery-2.1.3.min.js" type="text/javascript"></script>
<script type="text/javascript">
  
  $(document).ready(function(){
    
	
	
	//popup
	
	$("#signup").click(function(){
	  $("#mask").show();
	  $("#signupForm").slideDown();
	});
	
	$("#close").click(function(){
	  $("#signupForm").slideUp();
	  $("#mask").hide();
	});
	
   
  });
  
 </script>
 
  <style type="text/css">
    #mask{
	  position:fixed;
	  height:100%;
	  width:100%;
	  top:0px;
	  left:0px;
	  background:#000;
	  opacity:0.5;
	  z-index:100;
	 display:none;
	}
	
	#signupForm{
	  position:absolute;
	  height:45%;
	  width:40%;
	  top:30%;
	  left:30%;
	  background:#fff;
	  z-index:500;
	  display:none;
	}
	
	#signupForm table{
   width:90%;
   margin:0px auto;
 }
 #signupForm form{
   color:#666;
 }
 #signupForm input[type=text],#signupForm input[type=password]{
   height:30px;
   border:1px solid #ccc;
   color:#666;
   width:100%;
 }
 #signupForm input[type=submit]{
   border:1px solid #00CC66;
   background:#00CC99;
   color:#fff;
   padding:5px;
 }
  </style>
 
    </head>
    <body>
       <div id="mask"></div>
  <div id="signupForm">
     <form id="form">
        <table>
          <thead>
            <tr>
              <td colspan="2" align="center"><h3>Signup Form</h3> 
                <span style="float:right;color:#cc0000;font-weight:bold;cursor:pointer" id="close">X</span>
                <hr />
              </td>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>Name:</td>
              <td><input type="text" placeholder="Your name" name="name" id="name" required /></td>
            </tr>
            <tr>
              <td>Email:</td>
              <td><input type="text" placeholder="Your email" /></td>
            </tr>
            <tr>
              <td>Password:</td>
              <td><input type="password" placeholder="Your password" /></td>
            </tr>
            <tr>
              <td>Contact:</td>
              <td><input type="text" placeholder="Your contact" /></td>
            </tr>
          </tbody>
          <tfoot>
            <tr>
              <td colspan="2" align="right">
                <hr />
                <input type="submit" value="Signup" />
              </td>
            </tr>
          </tfoot>
        </table>
     </form>
  </div>
    </body>
</html>
