<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page contentType="text/html;charset=UTF-8"%>
<meta equiv="Content-Type" content="text/html; charset=TIS-620">
<html>
<head>

<title>SEARCH USERS | USER</title>
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
	<div>
			<table align="center">
				<tr>
				<form:form method="post" action="/Project3/userByName" >
					<td>First Name :</td>
					<td><form:input path="fname" /></td>
					<td><input type="submit" value="Search By Name" /></a></td>
				</form:form>
				</tr>
				<tr>
				<form:form method="post" action="/Project3/userByYear" >
					<td>Graduate :</td>
					<td><select name="graduate_stop">
							<option value="2499">2499</option>
							<option value="2501">2501</option>
							<option value="2502">2502</option>
							<option value="2503">2503</option>
							<option value="2504">2504</option>
							<option value="2505">2505</option>
							<option value="2506">2506</option>
							<option value="2507">2507</option>
							<option value="2508">2508</option>
							<option value="2509">2509</option>
							<option value="2510">2510</option>
							<option value="2511">2511</option>
							<option value="2512">2512</option>
							<option value="2513">2513</option>
							<option value="2514">2514</option>
							<option value="2515">2515</option>
							<option value="2516">2516</option>
							<option value="2517">2517</option>
							<option value="2518">2518</option>
							<option value="2519">2519</option>
							<option value="2520">2520</option>
							<option value="2521">2521</option>
							<option value="2522">2522</option>
							<option value="2523">2523</option>
							<option value="2524">2524</option>
							<option value="2525">2525</option>
							<option value="2526">2526</option>
							<option value="2527">2527</option>
							<option value="2528">2528</option>
							<option value="2529">2529</option>
							<option value="2530">2530</option>
							<option value="2531">2531</option>
							<option value="2532">2532</option>
							<option value="2533">2533</option>
							<option value="2534">2534</option>
							<option value="2535">2535</option>
							<option value="2536">2536</option>
							<option value="2537">2537</option>
							<option value="2538">2538</option>
							<option value="2539">2539</option>
							<option value="2540">2540</option>
							<option value="2541">2541</option>
							<option value="2542">2542</option>
							<option value="2543">2543</option>
							<option value="2544">2544</option>
							<option value="2545">2545</option>
							<option value="2546">2546</option>
							<option value="2547">2547</option>
							<option value="2548">2548</option>
							<option value="2549">2549</option>
							<option value="2550">2550</option>
							<option value="2551">2551</option>
							<option value="2552">2552</option>
							<option value="2553">2553</option>
							<option value="2554">2554</option>
							<option value="2555">2555</option>
							<option value="2556">2556</option>
							<option value="2557">2557</option>
							<option value="2558">2558</option>
					</select></td>
					<td><input type="submit" value="Search By Year" /></a></td>
					</form:form>
				</tr>
				<tr>
				<form:form method="post" action="/Project3/userByFac" >
					<td>Faculty :</td>
					<td><select name="faculty">
							<option value="คณะวิศวกรรมศาสตร์">คณะวิศวกรรมศาสตร์</option>
							<option value="คณะนิติศาสตร์">คณะนิติศาสตร์</option>
							<option value="คณะบริหารธุรกิจ">คณะบริหารธุรกิจ</option>
							<option value="คณะพยาบาลศาสตร์">คณะพยาบาลศาสตร์</option>
							<option value="คณะมนุษย์ศาสตร์และสังคมศาสตร์">คณะมนุษย์ศาสตร์และสังคมศาสตร์</option>
							<option value="คณะวิทยาการจัดการ">คณะวิทยาการจัดการ</option>
							<option value="คณะวิทยาศาสตร์">คณะวิทยาศาสตร์</option>
							<option value="คณะศิลปศาสตร์">คณะศิลปศาสตร์</option>
							<option value="คณะสัตว์แพทย์ศาสตร์">คณะสัตว์แพทย์ศาสตร์</option>
							<option value="คณะสถาปัตย์กรรมศาสตร์">คณะสถาปัตย์กรรมศาสตร์</option>
							<option value="คณะเกษตร์ศาสตร์">คณะเกษตร์ศาสตร์</option>
							<option value="คณะเทคโนโลยีสารสนเทศน์">คณะเทคโนโลยีสารสนเทศน์</option>
					</select></td>
					<td><input type="submit" value="Search By Faculty" /></a></td>
					</form:form>
				</tr>
				<tr>
				<td><a href="/Project3/logout"><button type="button">LOGOUT</button></a></td>
				<td><a  align="center" href="/Project3/shows"><button type="button">SHOW ALL</button></a><td>
				</tr>
			</table>
	
	</div>
	<%-- 	</center> --%>
</body>
</html>