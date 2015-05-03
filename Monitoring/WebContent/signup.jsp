<%-- 
    Document   : signup test
    Created on : Apr 29, 2015, 12:59:47 PM
    Author     : Sunaina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/signup test.css" type="text/css" rel="stylesheet"/>

    </head>
    <body>
        
    </body>
    <div class="main">
<div class="head">
<h4 style="font-size:30px; margin:10px 0px 0px 9px; color:#000000;">Create Your Account...</h4>
<div>

<div class="space">
</div>

<form id="reg_form" action="after_registration.jsp" method="POST">

<div>
<label style="margin-top:60px;">Name</label>
<input type="text" id="name" placeholder="" name="name" /><label id="nameMsg"></label>
</div>
<br/>


<div>
<label>Email</label>
<input type="text" id="email" placeholder="" name="email" /><label id="emailMsg"></label>
</div>
<br/>


<div>
<label>password</label>
<input type="password" id="pwd" placeholder=""  name="pwd"/><label id="pwdMsg"></label>
</div>
<br/>




<div>

<input type="submit"  value="SignUp" />
</div>

</form>

</div>

  </div>
   </div>
   
</html>
