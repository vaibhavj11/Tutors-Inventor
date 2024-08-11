 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Forgot Password</title>
	<style>
		body {
		background-image:url("Green  board.png");
		background-size:cover;
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: center;
			height: 100vh;
			margin: 0;
			padding: 0;
			font-family: Arial, sans-serif;
		}

		h1 {
			text-align: center;
			margin-top: 0;
			color:White;
		}

		form {
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: center;
			background-color: #f5f5f5;
			padding: 20px;
			border-radius: 5px;
			box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.2);
			width: 300px;
		}

		input[type=email], input[type=submit] {
			margin: 10px;
			padding: 10px;
			border-radius: 5px;
			border: none;
			width: 100%;
			box-sizing: border-box;
			font-size: 16px;
		}

		input[type=submit] {
			background-color: #4CAF50;
			color: white;
			cursor: pointer;
		}

		input[type=submit]:hover {
			background-color: #45a049;
		}
	</style>
</head>
<body>
	<h1>Forgot Password</h1>
	<form action="parentpass" method="post">
		<input type="email" name="email" placeholder="Enter Your Email">
		<input type="submit" value="Find">
	</form>
</body>
</html>
