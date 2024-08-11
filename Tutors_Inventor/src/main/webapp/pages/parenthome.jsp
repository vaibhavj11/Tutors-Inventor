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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Home Page</title>
<style>
.header-blue {
	background-image: url("Green\ \ board.png");
	background-size: cover;
	padding-bottom: 80px;
	font-family: 'Source Sans Pro', sans-serif;
}

@media ( min-width :768px) {
	.header-blue {
		padding-bottom: 120px;
	}
}

.header-blue .navbar {
	background: transparent;
	padding-top: .75rem;
	padding-bottom: .75rem;
	color: #fff;
	border-radius: 0;
	box-shadow: none;
	border: none;
}

@media ( min-width :768px) {
	.header-blue .navbar {
		padding-top: 1rem;
		padding-bottom: 1rem;
	}
}

.header-blue .navbar .navbar-brand {
	font-weight: bold;
	color: inherit;
}

.header-blue .navbar .navbar-brand:hover {
	color: #f0f0f0;
}

.header-blue .navbar .navbar-collapse {
	border-top: 1px solid rgba(255, 255, 255, 0.3);
	margin-top: .5rem;
}

@media ( min-width :768px) {
	.header-blue .navbar .navbar-collapse {
		border-color: transparent;
		margin: 0;
	}
}

.header-blue .navbar .navbar-collapse span .login {
	color: #fff;
	margin-right: .5rem;
	text-decoration: none;
}

.header-blue .navbar .navbar-collapse span .login:hover {
	color: #fff;
}

.header-blue .navbar .navbar-toggler {
	border-color: rgba(255, 255, 255, 0.3);
}

.header-blue .navbar .navbar-toggler:hover, .header-blue .navbar-toggler:focus
	{
	background: none;
}

@media ( min-width : 768px) {
	.header-blue .navbar-nav .nav-link {
		padding-left: .7rem;
		padding-right: .7rem;
	}
}

@media ( min-width : 992px) {
	.header-blue .navbar-nav .nav-link {
		padding-left: 1.2rem;
		padding-right: 1.2rem;
	}
}

.header-blue .navbar.navbar-light .navbar-nav .nav-link {
	color: #fff;
}

.header-blue .navbar.navbar-light .navbar-nav .nav-link:focus,
	.header-blue .navbar.navbar-light .navbar-nav .nav-link:hover {
	color: #fcfeff !important;
	background-color: transparent;
}

.header-blue .navbar .navbar-nav>li>.dropdown-menu {
	margin-top: -5px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, .1);
	background-color: #fff;
	border-radius: 2px;
}

.header-blue .navbar .dropdown-menu .dropdown-item:focus, .header-blue .navbar .dropdown-menu .dropdown-item
	{
	line-height: 2;
	color: #37434d;
}

.header-blue .navbar .dropdown-menu .dropdown-item:focus, .header-blue .navbar .dropdown-menu .dropdown-item:hover
	{
	background: #ebeff1;
}

.header-blue .action-button, .header-blue .action-button:not(.disabled):active
	{
	border: 1px solid rgb(255, 255, 255);
	border-radius: 40px;
	color: #fff;
	box-shadow: none;
	text-shadow: none;
	padding: .3rem .8rem;
	background: transparent;
	transition: background-color 0.25s;
	outline: none;
}

.header-blue .action-button:hover {
	color: #fff;
}

.header-blue .navbar .form-inline label {
	color: #d9d9d9;
}

.header-blue .navbar .form-inline .search-field {
	display: inline-block;
	width: 80%;
	background: none;
	border: none;
	border-bottom: 1px solid transparent;
	border-radius: 0;
	color: #fff;
	box-shadow: none;
	color: inherit;
	transition: border-bottom-color 0.3s;
}

.header-blue .navbar .form-inline .search-field:focus {
	border-bottom: 1px solid #ccc;
}

.header-blue .hero {
	margin-top: 20px;
	text-align: center;
}

@media ( min-width :768px) {
	.header-blue .hero {
		margin-top: 60px;
		text-align: left;
	}
}

.header-blue .hero h1 {
	color: #fff;
	font-size: 40px;
	margin-top: 0;
	margin-bottom: 15px;
	font-weight: 300;
	line-height: 1.4;
}

@media ( min-width :992px) {
	.header-blue .hero h1 {
		margin-top: 190px;
		margin-bottom: 24px;
		line-height: 1.2;
	}
}

.header-blue .hero p {
	color: rgba(255, 255, 255, 0.8);
	font-size: 20px;
	margin-bottom: 30px;
	font-weight: 300;
}

.header-blue .phone-holder {
	text-align: right;
}

.header-blue div.iphone-mockup {
	position: relative;
	max-width: 300px;
	margin-top: 172px;
	display: inline-block;
}

.header-blue .iphone-mockup img.device {
	width: 100%;
	height: auto;
}

.header-blue .iphone-mockup .screen {
	position: absolute;
	width: 88;
	height: 77%;
	top: 12%;
	border-radius: 2px;
	left: 6%;
	border: 1px solid #444;
	background-color: #aaa;
	overflow: hidden;
	background: url(../../assets/img/screen-content-iphone-6.jpg);
	background-size: cover;
	background-position: center;
}

.header-blue .iphone-mockup .screen:before {
	content: '';
	background-color: #fff;
	position: absolute;
	width: 70%;
	height: 140%;
	top: -12%;
	right: -60%;
	transform: rotate(-19deg);
	opacity: 0.2;
}

/* \Search Bar Css */
.filter-bar {
	background-image: url("Green\ \ board.png");
	display: flex;
	flex-wrap: wrap;
	align-items: center;
	justify-content: space-between;
	padding: 10px;
	margin: 20px 100px 50px 100px;
}

.filter-bar select {
	color: black;
}

.filter-bar option {
	color: black;
}

/* stars */
.form-select {
	max-width: 30%;
	padding: 0px 0px 0px 30px;
	margin-left: 90px;
	margin-right: 20px;
	display: inline-block;
	text-align: center;
	border: none;
	height: 36px;
	background-color: transparent;
	border: none;
	color: gold;
	font-size: 15px;
	outline: none;
}

#choose {
	color: White;
}

.form-select:focus {
	box-shadow: none;
}

.input-group {
	max-width: 20%;
	height: 36px;
	background-color: transparent;
	border: none;
	color: gold;
	font-size: 15px;
	outline: none;
	position: relative;
}

.input-group .form-control:focus-within, .input-group .form-control:focus
	{
	background-color: transparent;
	color: gold;
}

.input-group .form-control:valid {
	color: white;
}

.input-group .form-control::placeholder {
	color: white;
	font-size: 15px;
}

.form-control {
	padding: 0px 30px;
	width: 30%;
	height: 36px;
	background-color: transparent;
	border: none;
	font-size: 15px;
	outline: none;
}

.form-control:focus {
	border: none;
	outline: none;
	box-shadow: none;
}

.btn-primary {
	width: 100px;
	margin-right: 30px;
	font-size: 18px;
	background-color: Blue;
	color: #fff;
	border: none;
}

.btn-primary:hover {
	background-color: #f44336;
}

.heading-tution {
	text-align: center;
	font-family: sans-serif;
	font-size: 35px;
	font-weight: bold;
	font-display: initial;
	margin-bottom: 10px;
	margin-top: 50px;
}

/* Stars */
hr {
	border: 0;
	margin: 1.35em auto 1.60em auto;
	max-width: 100%;
	background-position: 50%;
	box-sizing: border-box;
}

.dots {
	color: red;
	height: 8px;
	border-width: 0 0 8px;
	border-style: solid;
	width: 350px;
}

@media screen and (max-width: 768px) {
	.form-select, .input-group, .btn-primary {
		max-width: 100%;
		margin: 0 0 10px 0;
	}
}

@media screen and (max-width: 1074px) {
	.form-select, .input-group, .btn-primary {
		max-width: 100%;
		margin: 0 0 10px 0;
	}
}

@media screen and (max-width: 600px) {
	.form-select, .input-group, .btn-primary {
		max-width: 100%;
		margin: 0 0 10px 0;
	}
}
</style>
</head>

<body>
	<div>
		<div class="header-blue">
			<nav
				class="navbar navbar-light navbar-expand-md navigation-clean-search">
				<div class="container-fluid">
					<a class="navbar-brand" href="#">TUTOR INVENTOR</a>
					<button data-toggle="collapse" class="navbar-toggler"
						data-target="#navcol-1">
						<span class="sr-only">Toggle navigation</span><span
							class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navcol-1">
						<ul class="nav navbar-nav">
							<li class="nav-item" role="presentation"><a class="nav-link"
								href="ebooklist">Ebook</a></li>
							<li class="nav-item dropdown"><a
								class="dropdown-toggle nav-link" href="contactus">Contact Us</a>

							</li>
						</ul>
						<form class="form-inline mr-auto" target="_self">
							<div class="form-group">
								<label for="search-field"></label><i></i>
							</div>
						</form>
						<a href="/parentlogout"><i class="fa fa-sign-out"
							style="font-size: 25px; color: white"></i></a>

					</div>
				</div>
			</nav>
			<div class="container hero">
				<div class="row">
					<div class="col-12 col-lg-6 col-xl-5 offset-xl-1">
						<h1>Empowering your child's academic success</h1>
						<p>
							Our goal is to make the process of finding a good tuition center
							hassle-free for parents<br>
						</p>
						<button class="btn btn-light btn-lg action-button" type="button">
							Find Now<i class="fa fa-long-arrow-right ml-2"></i>
						</button>
					</div>
					<div
						class="col-md-5 col-lg-5 offset-lg-1 offset-xl-0 d-none d-lg-block phone-holder">
						<div class="iphone-mockup">

							<!--  <div class="screen">
							</div>
							
							-->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<div class="col-lg-12">
		<h1 class="heading-tution">FIND NEARBY TUTION CENTERS</h1>
		<hr class="dots">
		<form action="searchvalid" class="searchform" method="post">
			<div class="filter-bar">
				<select class="form-select form-select-lg mb-3" id="choose"
					name="state" aria-label=".form-select-lg example">
					<option selected disabled>All States</option>
					<option value="Andhra Pradesh">Andhra Pradesh</option>
					<option value="Arunachal Pradesh">Arunachal Pradesh</option>
					<option value="Assam">Assam</option>
					<option value="Bihar">Bihar</option>
					<option value="Chhattisgarh">Chhattisgarh</option>
					<option value="Goa">Goa</option>
					<option value="Gujarat">Gujarat</option>
					<option value="Haryana">Haryana</option>
					<option value="Himachal Pradesh">Himachal Pradesh</option>
					<option value="Jharkhand">Jharkhand</option>
					<option value="Karnataka">Karnataka</option>
					<option value="Kerala">Kerala</option>
					<option value="Madhya Pradesh">Madhya Pradesh</option>
					<option value="Maharashtra">Maharashtra</option>
					<option value="Manipur">Manipur</option>
					<option value="Meghalaya">Meghalaya</option>
					<option value="Mizoram">Mizoram</option>
					<option value="Nagaland">Nagaland</option>
					<option value="Odisha">Odisha</option>
					<option value="Punjab">Punjab</option>
					<option value="Rajasthan">Rajasthan</option>
					<option value="Sikkim">Sikkim</option>
					<option value="Tamil Nadu">Tamil Nadu</option>
					<option value="Telangana">Telangana</option>
					<option value="Tripura">Tripura</option>
					<option value="Uttar Pradesh">Uttar Pradesh</option>
					<option value="Uttarakhand">Uttarakhand</option>
					<option value="West Bengal">West Bengal</option>
				</select>

				<div class="input-group mb-3">
					<input type="text" class="form-control" name="city"
						placeholder="Enter Your City" autocomplete="off" aria-label="City">
				</div>

				<div class="input-group mb-3">
					<input type="text" class="form-control" name="area"
						placeholder="Enter Your Area" autocomplete="off" aria-label="Area">
				</div>

				<button type="submit" class="btn btn-primary btn-lg">Search</button>
			</div>
		</form>
	</div>

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
	<script>
            const findNowButton = document.querySelector('.action-button');
const searchForm = document.querySelector('.searchform');

findNowButton.addEventListener('click', () => {
  searchForm.scrollIntoView({ behavior: 'smooth' });
});
</script>


</body>

</html>