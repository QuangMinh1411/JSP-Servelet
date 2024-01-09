<%@ page import ="java.util.*" %>

<html>

<body>

<!-- Step 1:Create HTML Form
Step 2:A dd new item
Step 3: Dispaly all to do item -->

<form action="todo-demo.jsp">
	Add new item: <input type="text" name="theItem" />
	<input type="submit" value="Submit" />
</form>

<%
List<String> items = (List<String>) session.getAttribute("myToDoList");
if(items==null){
	
	items = new ArrayList<String>();
	session.setAttribute("myToDoList",items);
}
String theItem = request.getParameter("theItem");
boolean isItemNotEmpty = theItem!=null && theItem.trim().length()>0;
boolean isItemNotDuplicate = theItem!=null && !items.contains(theItem.trim());

if(isItemNotEmpty && isItemNotDuplicate){
	items.add(theItem);
}

%>
<hr>
<b>To List Item:</b><br/>
<ol>
	<%
	for(String temp:items){
		out.println("<li>"+temp+"</li>");
	}
	%>
</ol>

</body>

</html>