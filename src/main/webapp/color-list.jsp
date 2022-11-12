<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Colors - List</title>
</head>
<body>
	<p>${result}</p>
	<form method="post" action="menuServlet">
	<table>
		<c:forEach items="${requestScope.listColors}" var="currentColor">
			<tr>
				<td><input type="radio" name="color" value="${currentColor.hexColor}"></td>
				<td>${currentColor.hexColor}</td>
				<td>${currentColor.hexGray}</td>
			</tr>
		</c:forEach>
	</table>
	<input type="submit" value="Edit" name="doThisToItem">
	<input type="submit" value="Delete" name="doThisToItem">
	<input type="submit" value="Add" name="doThisToItem">
	</form>
	<form action="viewColorsServlet">
		<input type="submit" value="View All Colors"> <br/>
	</form>
	<p>${result }</p>
</body>
</html>