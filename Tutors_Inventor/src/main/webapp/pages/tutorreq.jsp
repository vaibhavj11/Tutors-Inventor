<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
background-image: url("Green  board.png");
background-size: cover;
}
h1{
color:white;
}
form {
  display: flex;
  flex-direction:column;
  justify-content: center;
  align-items: center;
}

input[type="text"],
input[type="submit"] {
  padding: 10px;
  margin: 10px;
  border-radius: 5px;
  border: 1px solid #ccc;
  font-size: 16px;
  font-family: Arial, sans-serif;
  text-align: center;
  text-transform: uppercase;
}

input[type="submit"] {
  background-color: #4CAF50;
  color: white;
  cursor: pointer;
}

input[type="submit"]:hover {
  background-color: #3e8e41;
}

</style>
</head>
<body>
<form action="see" method="post">
<h1>See Who is Intersted In You</h1><br>
<input type="hidden" name="id" value="${tutor.id}"><br>
<input type="text"  value="${tutor.fname} ${tutor.lname}"><br>

<input type="submit" value="GET"><br>
</form>
</body>
</html>