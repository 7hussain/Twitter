<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<p><font size="5" color="blue">Welcome To Twitter</font></p>
<h1>Please login</h1>

<p>User Name: hussain </p>
<p>User Password: hussain1 </p>

 <!-- Login form -->
 <form action = Login method="POST">
    <div id="loginbox">
    <table id="tlog">
    <tr>
	    <td>
	    	<label>Username: </label>
	    </td>
	    <td>
	    	<input type="text" id="username" name="username" size="20"/> 
	    </td>
    </tr>
    <tr>
	    <td>
	    	<label>Password: </label>
	    </td>
	    <td>
	    	<input type="password" id="password" name="password" size="20"/><br />
	    </td>
     
 	</tr>
 
       </table>
       	<input type="submit" value="Login" class=submit />
   
   <%  	
   		if(request.getAttribute("added") != null)
	   	{
	   		%> Successfully Registered <% } 
	   	else
	 	{
		session.invalidate();
		}
	%>
   
   <%
   		if(request.getAttribute("loggedin") != null)
	  	{%>
	  		<p><b><font color="white">Incorrect Username or Password.</font></b></p>

	    <%   
	    }
	     %>
       </div>
      
</form>
       
       <br/>
       <br/>
       
       <a href="${pageContext.request.contextPath}/Register" style="color:CC0000;">Register Here.</a> 
       <script language="javascript" type="text/javascript">

var mytext = document.getElementById("username");
mytext.focus();





</script>
</body>
</html>