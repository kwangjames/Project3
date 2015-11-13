<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>ADD USERS | ADMIN</title>
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

<h2>LOGIN | USER AND ADMIN</h2>
<form:form method="POST" commandName="command" action="/Project3/login">
   <table>
    <tr>
        <td><form:label path="username">USERNAME</form:label></td>
        <td><form:input path="username" /></td>
    </tr>
    <tr>
        <td><form:label path="password">PASSWORD</form:label></td>
        <td><form:password path="password" /></td>
    </tr>

    <tr>
        <td colspan="2">
            <input type="submit" value="LOGIN"/>
        </td>
    </tr>
</table>  
</form:form>
</body>
</html>