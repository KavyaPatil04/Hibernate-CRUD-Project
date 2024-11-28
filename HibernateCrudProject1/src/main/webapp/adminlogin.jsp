<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="validateadmin" method="post"><br>
<label>Email</label><input type="email" name="txtEmail"/><br>
<label>Password</label><input type="password" name="txtPassword"/><br>
<input type="submit"/> <a href="adminregister.jsp">Sign Up</a>
<%if(request.getAttribute("message")!=null) { %>
	<h4 style="color:red"><%= request.getAttribute("message") %>
<% } %>
</form>
</body>
</html>