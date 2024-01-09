<%@ page import="java.net.URLEncoder"  %>
<html>
<head>
	<title>Response</title>
</head>

<%
	String favLang = request.getParameter("favoriteLanguage");
    favLang = URLEncoder.encode(favLang, "UTF-8");
	Cookie theCookie = new Cookie("myApp.favoriteLanguage",favLang);
	theCookie.setMaxAge(60*60*1);

	response.addCookie(theCookie);
%>
<body>
	Thanks!We set your favorite language: ${param.favoriteLanguage}
	<br/><br/>
	<a href="cookies-homepage.jsp">Return to home</a>
</body>
</html>