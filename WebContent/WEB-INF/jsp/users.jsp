<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>
<head>
<title>SHOW ALUMNUS | USER</title>
<style>
body {
	font-size: 20px;
	color: teal;
	font-family: Calibri;
}

td {
	font-size: 15px;
	color: black;
	height: 22px;
	text-align: center;
}

.heading {
	font-size: 18px;
	color: white;
	font: bold;
	background-color: blue;
	border: thick;
}
</style>
</head>
<body>

	<br />
	<br />
	<br />
	<b>SHOW USERS | Admin </b>
	<br />
	<br />
	<a  align="center" href="/Project3/logout"><button type="button">LOGOUT</button></a>
	<table border="1" align="center">


		<tr>
			<td class="heading">User Id</td>
			<td class="heading">First Name</td>
			<td class="heading">Last Name</td>
			<td class="heading">Age</td>
			<td class="heading">Telephone</td>
			<td class="heading">Email</td>
			<td class="heading">Gradute</td>
			<td class="heading">Pic</td>
			<td width="100px" class="heading">Faculty</td>
			<td width="100px" class="heading">Major</td>

			<td class="heading">Edit</td>
			<td class="heading">Delete</td>
		</tr>
		<c:forEach var="users" items="${users}">
			<tr>
				<td>${users.u_id}</td>
				<td>${users.fname}</td>
				<td>${users.lname}</td>
				<td>${users.age}</td>
				<td>${users.tel}</td>
				<td>${users.email}</td>
				<td>${users.graduate_stop}</td>
				<td><img width="100px" height="100px" src="${users.pic}"
					alt="${users.pic}"></td>
				<td>${users.faculty}</td>
				<td>${users.major}</td>
				<td><a href="/Project3/edit?id=${users.u_id}">Edit</a></td>
				<td><a href="/Project3/delete?id=${users.u_id}">Delete</a></td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="13"><a href="/Project3/insert">Add New User</a></td>
		</tr>

	</table>


</body>
</html>