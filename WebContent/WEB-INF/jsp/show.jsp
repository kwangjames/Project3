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
	<b>SHOW  ALL | USER </b>
	<br />
	<br />
	<a  align="center" href="/Project3/search"><button type="button">BACK</button></a>
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

		</tr>
		<c:forEach var="show" items="${show}">
			<tr>
				<td>${show.u_id}</td>
				<td>${show.fname}</td>
				<td>${show.lname}</td>
				<td>${show.age}</td>
				<td>${show.tel}</td>
				<td>${show.email}</td>
				<td>${show.graduate_stop}</td>
				<td><img width="100px" height="100px" src="${show.pic}"
					alt="${show.pic}"></td>
				<td>${show.faculty}</td>
				<td>${show.major}</td>

			</tr>
		</c:forEach>
		<tr>
			<td colspan="13"><a href="/Project3/insert">Add New User</a></td>
		</tr>

	</table>


</body>
</html>