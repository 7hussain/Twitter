<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
    <%@ page import="com.hussain.stores.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" href="css/tweet.css" type="text/css">
<link rel="stylesheet" href="css/main.css" type="text/css">

<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
</head>
<body>

Welcome ${sessionScope['username']} </br>


<% if(request.getAttribute("loggedin") != "")
	  {%>

	<form method = "post" action = "Logout">
		<input type = "submit" value = "Logout" class=submit />
	</form>

	</br>
<%}  else { %> 	

	<form method = "post" action = "Logout">
		<input type = "submit" value = "Login" class=submit />
	</form>

	</br>

	<% } %>

	<a href="${pageContext.request.contextPath}/AllTweets" style="color:CC0000;">Click here to view all tweets</a>
<h1>Tweet</h1>

 <% if(request.getAttribute("loggedin") != "")
	  {%>
 <form action = Tweet method="POST">
 	<label>Tweet Something!</label>
 	<br/>
      <input type="text" id="tweettext" name="tweettext" size="140" style="height: 100px; width: 95%"/>
      <br/>
      <input type="submit" value="Submit" class=submit />
    </form>
  <br/>  
 <%} %> 

<%
System.out.println("In render");
List<TweetStore> lTweet = (List<TweetStore>)request.getAttribute("Tweets");
if (lTweet==null){
 %>

<%
}else{
%>

<%
Iterator<TweetStore> iterator;


iterator = lTweet.iterator();
while (iterator.hasNext()){
TweetStore ts = (TweetStore)iterator.next();

%>

<p>
<%=ts.getTweet() %>

<% if(request.getAttribute("loggedin") != "")
	  {%>
		Tweeted by <a href="${pageContext.request.contextPath}/User/<%=ts.getUsername()%>" style="color:#CCCCCC;">@<%=ts.getUsername()%></a> at <%=ts.getTime() %></p><hr/><%
	  }
		else
		{ %>
			Tweeted by @<%=ts.getUsername()%> at <%=ts.getTime() %></p><hr/><%
		  }
	}
}
%>

<br/>

</body>
</html>