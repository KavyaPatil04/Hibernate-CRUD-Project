<%@page import="com.techpalle.bean.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Welcome to home page</h1>
<form action="openemployeeform" method="post">
<button type="submit" value="addEmployee">ADD EMPLOYEE</button>
</form>
<c:if test="${employeelist!=null}">
	<table>
	<thead>
	<tr>
	<th>id</th>
	<th>Employee Name</th>
	<th>Salary</th>
	<th>Action</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach items = "${employeelist}" var = "e">
	<tr>
	<td>${e.getId()}</td>
	<td>${e.getEname()}</td>
	<td>${e.getSalary()}</td>
	<td><a href="deleteemployee?id=${e.getId()}">Delete</a>  /  <a href="getdatafromtable?id=${e.getId()}">Edit</a></td>
	</tr>
	</c:forEach>
	</tbody>
	</table>
	
</c:if>
</body>
</html>