<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>My Form</title>
	<style>
	body{
	background-image: url("Green  board.png");
  background-size: cover;
	}
		form {
	max-width: 800px;
	margin: 50px auto 0;
	padding: 20px;
	border: 2px solid #ccc;
	border-radius: 5px;
}
h2{
text-align: center;
color:white;
}

input[type="text"] {
	padding: 10px;
	margin-bottom: 10px;
	margin-right:10px;
	width: 80%;
	border-radius: 5px;
	border: 1px solid #ccc;
	font-size: 16px;
}

input[type="submit"] {
  background-color: #4CAF50;
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  display: block;
  margin: 10px auto;
}


.row {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
}

.col {
	flex-basis: 48%;
	justify-content: space-between;
}

label {
	display: block;
	margin-bottom: 5px;
	font-size: 16px;
	font-weight: bold;
	color:White;
	
}

	</style>
</head>
<body>
<h2>Edit Form</h2>

	<form action="next" method="post">
	<div class="row">
		<div class="col">
			<label for="id">ID:</label>
			<input type="text" id="id" name="id" value="${edit.id}">
			<label for="fname">First Name:</label>
			<input type="text" id="fname" name="fname" value="${edit.fname}">
			<label for="lname">Last Name:</label>
			<input type="text" id="lname" name="lname" value="${edit.lname}">
			<label for="email">Email:</label>
			<input type="text" id="email" name="email" value="${edit.email}">
			<label for="mobile">Mobile:</label>
			<input type="text" id="mobile" name="mobile" value="${edit.mobile}">
			<label for="mobile">pass:</label>
			<input type="text" id="mobile" name="pass" value="${edit.pass}">
		</div>
		<div class="col">
			<label for="state">State:</label>
			<input type="text" id="state" name="state" value="${edit.state}">
			<label for="city">City:</label>
			<input type="text" id="city" name="city" value="${edit.city}">
			<label for="area">Area:</label>
			<input type="text" id="area" name="area" value="${edit.area}">
			<label for="zip">Zip:</label>
			<input type="text" id="zip" name="zip" value="${edit.zip}">
			<label for="experience">Experience:</label>
			<input type="text" id="experience" name="experience" value="${edit.experience}">
			<label for="bio">Bio:</label>
			<input type="text" id="bio" name="bio" value="${edit.bio}">
		</div>
	</div>
	<input type="submit" value="Edit">
</form>

</body>
</html>