<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:if test="${employeedata==null }">
<form action="add" method="post">
</c:if>

<c:if test="${employeedata!=null }">
<form action="update" method="post">
</c:if>
<input type="hidden" name="id" value="${employeedata.getId()}">
<label>Name</label><input type="text" name="txtname" value="${employeedata.getEname()}"/><br>
<label>Salary</label><input type="number" name="txtsalary" value="${employeedata.getSalary() }"/><br>
<input type="submit" value="Register"/><br>
<a href ="home">Home</a>
</form>
</body>
</html>