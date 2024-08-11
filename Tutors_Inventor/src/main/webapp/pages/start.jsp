<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Home Page</title>
<style type="text/css">
body {
	font-family: Arial, sans-serif;
	height: 100%;
	margin: 0;
	padding: 0;
	background-image: url("Green  board.png");
	background-size: cover;
}

h1 {
	text-align: center;
	margin: 0;
	font-size: 30px;
	color: white;
	font-weight: bold;
	position: absolute;
	top: 40px;
	left: 50%;
	transform: translateX(-50%);
	animation-name: slide-in;
	animation-duration: 1s;
	animation-fill-mode: forwards;
}

@keyframes slide-in {
  from {
    top: -50px;
    opacity: 0;
  }
  to {
    top: 40px;
    opacity: 1;
  }
}

h3 {
	text-align: center;
	margin-top: 0px;
	font-size: 20px;
	color: black;
	font-weight: bold;
}

/* Style for the logo */
.logo {
	display: flex;
	align-items: center;
	margin-left: 130px;
}

#logo-bank {
	width: 500px;
	height: 500px;
}

/* Style for the container */
#container {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 30px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
	max-width: 600px;
	background-color: #ffffff;
	border-radius: 10px;
	margin-left: 350px;
	margin-right: 380px;
	margin-top: px;
}

/* Style for the buttons */
.button {
	display: block;
	width: 300px;
	height: 60px;
	background-color: black;
	border: none;
	border-radius: 5px;
	font-size: 20px;
	font-weight: bold;
	color: #ffffff;
	text-align: center;
	line-height: 60px;
	margin: 10px;
	cursor: pointer;
	transition: background-color 0.3s ease;
	text-decoration: none;
}

.button:hover {
	background-color: black;
	text-decoration: none;
}

/* Style for the dropdown menus */
.dropdown {
	position: relative;
}

.dropdown-toggle::after {
	display: inline-block;
	margin-left: .255em;
	vertical-align: .255em;
	content: "";
	border-top: .3em solid;
	border-right: .3em solid transparent;
	border-bottom: 0;
	border-left: .3em solid transparent;
	display: none;
}

.dropdown-toggle {
	font-family: Arial, sans-serif;
}

.dropdown-toggle:hover {
	background-color: black;
	color: #212529;
}

.dropdown-item:hover {
	background-color: black;
	color: White;
}

.dropdown-menu {
	position: fixed;
	top: 100%;
	left: 1%;
	z-index: 1;
	/* Add this line */
	display: none;
	min-width: 19rem;
	padding: .5rem 0;
	margin: .125rem 0 0;
	font-size: 1rem;
	color: #212529;
	text-align: center;
	list-style: none;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid rgba(0, 0, 0, .15);
	border-radius: .25rem;
	left: 50%;
	transform: translateX(-50%);
}

.dropdown-menu-right {
	right: 0;
	left: auto;
}

.dropdown-toggle:focus+.dropdown-menu {
	display: block;
}

.dropdown-item {
	display: block;
	width: 100%;
	padding: .25rem 1.5rem;
	clear: both;
	font-weight: bold;
}

.background-image {
	background-image:url("Green  board.png");
	background-size:cover;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
	position: fixed;
	top: 0;
	left: 0px;
	height: 100%;
	width: 100%;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	color: #fff;
	text-align: center;
}
a{
color:red;
}
</style>
</head>

<body>

	<div class="background-image">
		<div style="display: flex; align-items: center;">
			<h1>WELCOME TO TUTOR INVENTOR</h1>
			<!-- Add this line -->
			<div id="container">
				<div id="buttons">
					<h3>Who Are You</h3>
					<div class="dropdown">
						<a href="#" class="button dropdown-toggle" id="parentDropdown"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Parent</a>
						<div class="dropdown-menu" aria-labelledby="parentDropdown">
							<a class="dropdown-item" href="parentlogin">Login</a> <a
								class="dropdown-item" href="parentreg">Register</a>
						</div>
					</div>
					<div class="dropdown">
						<a href="#" class="button dropdown-toggle" id="tutorDropdown"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Tutor</a>
						<div class="dropdown-menu" aria-labelledby="tutorDropdown">
							<a class="dropdown-item" href="tutorlogin">Login</a> <a
								class="dropdown-item" href="tutorreg">Register</a>
						</div>
						<a href="contactus">Contact us</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>



<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
</body>