<%@ page import="java.net.URLDecoder"  %>
<html>

<body>
	<h3>Training portal</h3>
<%
	String favLang = "Java";

	Cookie[] theCookies = request.getCookies();
	if(theCookies!=null){
		for(Cookie tempCookie:theCookies){
			if("myApp.favoriteLanguage".equals(tempCookie.getName())){
				favLang = URLDecoder.decode(tempCookie.getValue(),"UTF-8");
				break;
			}
		}
	}
%>

<h4>New Books for <%= favLang %></h4>
<ul>
	<li>test test test</li>
	<li>test test test</li>
</ul>
<h4>Latest news reports for <%= favLang %></h4>
<ul>
	<li>test test test</li>
	<li>test test test</li>
</ul>
<h4>Hot Jobs for <%= favLang %></h4>
<ul>
	<li>test test test</li>
	<li>test test test</li>
</ul>
<hr>
<a href="cookies-personalize-form.html">Personalize this page</a>
</body>
</html>