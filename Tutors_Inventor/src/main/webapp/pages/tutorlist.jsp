<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

<title>Tutor List</title>
<style>
body {
	margin-top: 20px;
	background-image:url("Green  board.png");
	background-size:cover;
}

.section-title {
	position: relative;
}

.section-title h2 {
	color: white;
	position: relative;
	margin: 0;
	font-size: 24px;
}

@media ( min-width : 768px) {
	.section-title h2 {
		font-size: 28px;
	}
}

@media ( min-width : 992px) {
	.section-title h2 {
		font-size: 34px;
	}
}

.section-title.title-ex1 h2 {
	padding-bottom: 20px;
}

@media ( min-width : 768px) {
	.section-title.title-ex1 h2 {
		padding-bottom: 30px;
	}
}

@media ( min-width : 992px) {
	.section-title.title-ex1 h2 {
		padding-bottom: 40px;
	}
}

.section-title.title-ex1 h2:before {
	content: "";
	position: absolute;
	left: 0;
	bottom: 12px;
	width: 110px;
	height: 1px;
	background-color: #d6dbe2;
}

@media ( min-width : 768px) {
	.section-title.title-ex1 h2:before {
		bottom: 17px;
	}
}

@media ( min-width : 992px) {
	.section-title.title-ex1 h2:before {
		bottom: 25px;
	}
}

.section-title.title-ex1 h2:after {
	content: "";
	position: absolute;
	left: 0;
	bottom: 12px;
	width: 40px;
	height: 1px;
	background-color: #0cc652;
}

@media ( min-width : 768px) {
	.section-title.title-ex1 h2:after {
		bottom: 17px;
	}
}

@media ( min-width : 992px) {
	.section-title.title-ex1 h2:after {
		bottom: 25px;
	}
}

.section-title.title-ex1.text-center h2:before {
	left: 50%;
	transform: translateX(-50%);
}

.section-title.title-ex1.text-center h2:after {
	left: 50%;
	transform: translateX(-50%);
}

.section-title.title-ex1.text-right h2:before {
	left: auto;
	right: 0;
}

.section-title.title-ex1.text-right h2:after {
	left: auto;
	right: 0;
}

.section-title.title-ex1 p {
	font-family: "Montserrat", sans-serif;
	color: white;
	font-size: 14px;
	font-weight: 300;
}

.price-card {
	background: #f5f5f6;
	padding: 40px 35px;
	position: relative;
	border-radius: 2px;
	overflow: hidden;
}

.price-card:before {
	position: absolute;
	content: "";
	top: 0;
	right: -35px;
	width: 88px;
	height: 88px;
	background: black;
	opacity: 0.2;
	border-radius: 8px;
	transform: rotate(45deg);
}

.price-card:after {
	position: absolute;
	content: "";
	top: 30px;
	right: -35px;
	width: 88px;
	height: 88px;
	background: black;
	opacity: 0.2;
	border-radius: 8px;
	transform: rotate(45deg);
}

.price-card h2 {
	font-size: 26px;
	font-weight: 600;
}

.price-card .btn {
	font-size: 11px;
	border-radius: 100px;
	padding: 0 25px;
	border: 0;
	color: #fff;
	float: right;
}

.price-card .btn.btn-primary {
	border: 0 !important;
}

.price-card.featured {
	background: #fff;
	border: 1px solid #ebebeb;
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
}

.price-card:hover .btn {
	background: #0cc652;
	border-color: #0cc652;
}

p.price span {
	display: inline-block;
	padding: 45px 15px 50px;
	padding-right: 0;
	font-size: 50px;
	font-weight: 600;
	color: #0cc652;
	position: relative;
}

p.price span:before {
	position: absolute;
	content: "$";
	font-size: 16px;
	top: 25px;
	font-weight: 300;
	left: 0;
}

.pricing-offers {
	padding: 0 0 10px;
}

.pricing-offers li {
	padding: 0 0 16px;
	line-height: 18px;
}

ul li {
	list-style-type: none;
}

.btn.btn-mid {
	height: 40px;
	line-height: 40px;
	padding: 0 20px;
}

.name {
	font-weight: bold;
}
</style>
</head>
<body>
	<section class="pricing-section">
		<div class="container">
			<div class="row justify-content-md-center">
				<div class="col-xl-5 col-lg-6 col-md-8">
					<div class="section-title text-center title-ex1">
						<h2>Tutors Near You</h2>
						<p>"Discover top-rated tutors near you to help your child
							excel academically."</p>
					</div>
				</div>
			</div>
			<!-- Pricing Table starts -->
			<section>
				<div class="row">
					<c:forEach items="${tutorlist1}" var="e">
						<div class="col-md-4">
							<div class="price-card">
								<div class="records">
									<div class="record">
										<div class="name">Name:   ${e.fname} ${e.lname}</div>
										<div class="email">Email:   ${e.email}</div>
										<div class="mobile">Mobile:  ${e.mobile}</div>
										<div class="experience" >Exp:  ${e.experience}</div>
										<div class="bio">Bio:  ${e.bio}</div>
										<div class="zip">Zip:  ${e.zip}</div>

									</div>
								</div>
								<a href="sendrequest?id=${e.id}" class="btn btn-primary btn-mid"> Send Request</a>
							</div>
						</div>
					</c:forEach>
				</div>
			</section>


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
</html>