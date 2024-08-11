<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Request List</title>
<style>
body {
	background-image: url("Green  board.png");
	background-size: cover;
	font-family: Arial, sans-serif;

}

h1 {

    margin-top:100px;
    margin-bottom:50px;
	text-align: center;
	color:gold;
}

table {
	margin: auto;
	border-collapse: collapse;
	border: 2px solid #ddd;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
	background-color: #fff;
	max-width:300px;
}

table th, table td {
	padding: 20px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

table th {
	background-color: #f2f2f2;
	font-weight: bold;
	color: #Black;
	border-right: 1px solid #ddd;
}

table td {
	font-size: 14px;
	color: black;
	border-right: 1px solid #ddd;
	text-align: center;
	font-weight: bold;
}
</style>
</head>
<body>
	<h1>Request List</h1>
	<table>
		<thead>
			<tr>
				<th>Email</th>
				<th>Mobile</th>
				<th>Message</th>
			</tr>
		</thead>
		<c:forEach items="${req}" var="e">
			<tbody>
				<tr>
					<td>${e.email}</td>
					<td>${e.mobile}</td>
					<td>${e.message}</td>
				</tr>

			</tbody>
		</c:forEach>
	</table>
</body>
</html>
