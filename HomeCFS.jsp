<%-- 
    Document   : HomeCFS
    Created on : Jun 5, 2022, 11:57:34 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.pie.servlet.servlettest.Utilities.CookieUtilities"%>
<!doctype html>
<%!private String text;%>
<html>
<head>
<meta charset="utf-8">
	<link rel="stylesheet" href="HomeDecorate.css"/>
<title>Pie Confension</title>
</head>
<%text=CookieUtilities.getCookieValue(request,"CFSID","Guest");%>
<body>
	<form action="http://192.168.1.83:8080/PieCFS/SignUp.html">
            <%if(text.equalsIgnoreCase("Guest")){%>
	<input type="submit" class="SignUpButton" value="Sign Up"/>
        <%}%>
        
	</form>
	<form action="" class="MainForm">
	<h1>Pie Confension</h1>
	
	<button type="submit" class="About">About</button>
			<button type="submit" class="About">Rules</button>
	</form>
<hr width="100%" size="3px" noshade="false"/>
	<h4>CFSID: <%=text%></h4>
	<br/><br/>
	<form action="http://192.168.1.83:8080/PieCFS/PS" method="POST" class="PostForm">
	<textarea rows="30" cols="100" class="TypeArea" name="PostArea"></textarea>
		<br/><br/>
		<button type="submit" class="SubmitButton">Submit</button>
	</form>
        <br/>
        <jsp:include page="Footer.jsp"/>
</body>
</html>





