<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request Form</title>
<style>
body{
background-image: url("Green  board.png");
background-size: cover;
}
h1{
color:white;
font-family: sans-serif;
font-size: 30px;
}
form {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  max-width: 300px;
  margin: 100px auto;
  
}

input[type="text"],
input[type="submit"] {
  padding: 10px;
  margin: 10px;
  border-radius: 5px;
  border: 1px solid #ccc;
  font-size: 16px;
  font-family: Arial, sans-serif;
 
}

input[type="text"] {
  width: 100%;
  box-sizing: border-box;
   
}

input[type="submit"] {
  background-color: #4CAF50;
  color: white;
  cursor: pointer;
}

input[type="submit"]:hover {
  background-color: #3e8e41;
}

input[type="text"]::placeholder {
 color:grey;
}

input[type="text"]:focus,
input[type="submit"]:focus {
  outline: none;
  border-color: #4CAF50;
}

</style>
</head>
<body>
<form action="request" method="post">
<h1>Send Request Form</h1>

<input type="hidden" name="id" value="${tt.id}"><br>

<input type="text" name="message" placeholder="Write A Message Here"><br>
<input type="text" name="email" placeholder="Enter Your Email"><br>
<input type="text" name="mobile" placeholder="Enter Your Mobile Number"><br>
<input type="submit" value="Send Request">

</form>
</body>
</html>