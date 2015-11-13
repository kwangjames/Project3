<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page pageEncoding="utf-8"%>
<html>
<head>
<title>Being Java Guys | Spring DI Hello World</title>
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
	text-align: center;
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

	<br />
	<br />
	<br />
	<b>Edit User Details | Admin </b>
	<br />
	<br />
	<div>
		<form:form method="POST" action="/Project3/update" commandName="edit">
			<form:hidden path="u_id" />
			<table>
				<tr>
					<td><form:label path="fname" />First Name :</td>
					<td><form:input path="fname" /></td>
				</tr>
				<tr>
					<td><form:label path="lname" />Last Name :</td>
					<td><form:input path="lname" /></td>
				</tr>
				<tr>
					<td><form:label path="age" />Age :</td>
					<td><form:input path="age" /></td>
				</tr>
				<tr>
					<td><form:label path="tel" />Tel :</td>
					<td><form:input path="tel" /></td>
				</tr>
				<tr>
					<td><form:label path="email" />Email :</td>
					<td><form:input path="email" /></td>
				</tr>

				<tr>
					<td>&nbsp;</td>
					<td><input type="submit" value="Save" /></td>
				</tr>
				<tr>

					<td colspan="2"><a href="/Project3/users">Click Here to
							See User List</a></td>
				</tr>
			</table>


		</form:form>
	</div>

</body>
</html>