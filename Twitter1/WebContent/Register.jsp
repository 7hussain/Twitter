<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<p><font size="5" color="blue">Register</font></p>
</head>
<body>
<div class="mainbg-01">
	</div>

<br/> 
        <form name="myForm" action = Register method="POST" onsubmit="return validateForm();">
         <div class="mainbg-05">

   <div class="mainbg-14">
      <p>User Name<p>
 	 <input type="text" id="user" name="user" size="20">
   </div>      
             
         
	</div>
   
    <div class="mainbg-08">
    <p>Email<p>
   	 <input type="text" id="email" name="email" size="20">
   	 </div>
    
  <div class="mainbg-12">
	</div>

   <div class="mainbg-17">
	</div>
   
   <div class="mainbg-19">
       <p>PassWord<p>
     <input type="password" id="pass" name="pass" size="20">
     </div>
     
     		<div class="mainbg-22">
		<input type="submit" value="Register" class=submit />

			<br/>

<input class=submit type="button" value="Back" 
 onClick="history.go(-1);return true;"> 
		<br/>
	</div>

            
            </form>
            
            <div class="mainbg-25">
            <br/>
            <br/>
            <br/>
            <br/>
            
            <b><%=request.getAttribute("success")%></b>
            </div>

<script language="javascript" type="text/javascript">

var mytext = document.getElementById("email");
mytext.focus();

</script>
</body>
</html>