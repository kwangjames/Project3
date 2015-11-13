<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>USERS</title>
<style>
body {
	font-size: 20px;
	color: teal;
	font-family: Calibri;
}

td {
	font-size: 15px;
	color: black;
	width: 100px;
	height: 22px;
	text-align: left;
}

.heading {
	font-size: 18px;
	color: white;
	font: bold;
	background-color: orange;
	border: thick;
}
</style>
</head>
<body>
<%-- 	<center> --%>
	<br />
	<br />
	<br />
	<b>SEARCH USER| User Form </b>
	<br />
	<br />
	<form:form method="POST" action="/Project3/searchs" commandName="command">
		<table align="center">
			<tr>
				<td ><form:label path="username">User Active</form:label></td >
			</tr>
			<tr>
			<td colspan="1"><input type="submit" value="SEARCH" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>