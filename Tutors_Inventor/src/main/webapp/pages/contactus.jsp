<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style type="text/css">
body {
	font-family: 'Lato', sans-serif;
	background-image: url("Green  board.png");
	background-size: cover;
}

h1,h2{
	margin-bottom: 10px;
	color:white;
}

label {
	color: #333;
}

.btn-send {
	font-weight: 300;
	text-transform: uppercase;
	letter-spacing: 0.2em;
	width: 80%;
	margin-left: 3px;
}

.help-block.with-errors {
	color: #ff5050;
	margin-top: 5px;
}

.card {
	margin-left: 10px;
	margin-right: 10px;
}
</style>
</head>
<body>
	<div class="container">
		
		<div class=" text-center mt-5 ">

			<h1>Tutor Inventor</h1>
			<h2>Contact Form</h2>


		</div>


		<div class="row ">
			<div class="col-lg-7 mx-auto">
				<div class="card mt-2 mx-auto p-4 bg-light">
					<div class="card-body bg-light">

						<div class="container">
							<form id="contact-form" role="form" action="contact" method="post">



								<div class="controls">

									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="form_name">Firstname *</label> <input
													id="form_name" type="text" name="name" class="form-control"
													placeholder="Please enter your firstname *"
													required="required" data-error="Firstname is required.">

											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="form_lastname">Lastname *</label> <input
													id="form_lastname" type="text" name="surname"
													class="form-control"
													placeholder="Please enter your lastname *"
													required="required" data-error="Lastname is required.">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="form_email">Email *</label> <input
													id="form_email" type="email" name="email"
													class="form-control"
													placeholder="Please enter your email *" required="required"
													data-error="Valid email is required.">

											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="form_need">Please specify your need *</label> <select
													id="form_need" name="need" class="form-control"
													required="required" data-error="Please specify your need.">
													<option value="" selected disabled>--Select Your
														Issue--</option>
													<option>Problem In Register</option>
													<option>Problem in Log in</option>
													<option>Other</option>
												</select>

											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<label for="form_message">Message *</label>
												<textarea id="form_message" name="message"
													class="form-control" placeholder="Write your message here."
													rows="4" required="required"
													data-error="Please, leave us a message."></textarea>
											</div>

										</div>


										<div class="col-md-12">

											<input type="submit" class="btn btn-success btn-send  pt-2 btn-block"value="Send Message">

										</div>

									</div>


								</div>
							</form>
						</div>
					</div>


				</div>
				<!-- /.8 -->

			</div>
			<!-- /.row-->

		</div>
	</div>

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