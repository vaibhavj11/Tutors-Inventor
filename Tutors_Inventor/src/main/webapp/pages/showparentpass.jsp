 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Your Password</title>
	<style>
		body {
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: center;
			height: 100vh;
			margin: 0;
			padding: 0;
			font-family: Arial, sans-serif;
			background-image:url("Green  board.png");
			background-size:cover;
		}

		h1 {
			font-size: 3rem;
			font-weight: bold;
			text-align: center;
			margin-top: 0;
			color: gold;
		}

		h2 {
			font-size: 2rem;
			text-align: center;
			color: #2c3e50;
			background-color: #fff;
			padding: 20px;
			border-radius: 5px;
			box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.2);
			margin: 20px 0;
		}
		a{
		color:red;
		text-decoration: none;
		}
	</style>
</head>
<body>
	<h1>Your Password Is</h1>
	<h2>${parentpass.pass}</h2>
	<a href="parentlogin">Back To Login</a>
</body>
</html>

