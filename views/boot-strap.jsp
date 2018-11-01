<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Person Contacts</title>
<script type="text/javascript" src="./assets/jquery/jquery-3.3.1.js"></script>
<link type="text/css" rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
<link type="text/css" rel="stylesheet"
	href="assets/bootstrap/css/bootstrap.css">

<script>
	$(function() {
		$(".err").hide();
		$("#erroralert").hide();
	});

	function validate() {
		$(".err").hide();
		$("#erroralert").show();
		var fname = $("input[name=firstname]").val().trim();
		var lname = $("input[name=lastname]").val().trim();
		var email = $("input[name=email]").val().trim();
		var phone = $("input[name=phone]").val().trim();

		if (!fname) {

			$("#err_fname").fadeIn(500);
			isValid = false;

		} else if (fname.length < 3) {
			$("#err_min_fname").fadeIn(500);
			isValid = false;
		}
		if (!lname) {
			$("#err_lname").fadeIn(500);
			isValid = false;
		}
		if (!email) {
			$("#err_email").fadeIn(500);
			isValid = false;

		}
		if (!phone) {
			$("#err_phone").fadeIn(500);
			isValid = false;

		}
		return isValid;

	}
</script>
<style type="text/css">
.jumbotron {
	margin-bottom: 0px;
	background-image: url(assets/images/Jellyfish.jpg);
	background-position: 0% 25%;
	background-size: cover;
	background-repeat: no-repeat;
	color: white;
	text-shadow: black 0.3em 0.3em 0.3em;
}
</style>
</head>
<body>
	<div class="jumbotron">
		<h1 class="display-6" style="background-color:;">Assignment 3-
			Person Manager</h1>
		<hr class="my-4">
		<p class="lead"><h3>Add Person details</div>
	<div class="container-fluid">

		<div class="row">

			<div class="col">


				<form action='${person==null?"./add-person":"./edit-person"}'
					method="post" onsubmit="return validate()">

					<div class="form-group row">
						<label for="firstname" class="col-sm-4 col-form-lable">Firstname</label>
						<div class=" col-auto col-sm-5">
							<input type="text" id="firstname" name="firstname"
								value="${person.firstname}" placeholder="enter firstname"
								class="form-control">

						</div>

					</div>

					<div class="form-group row">

						<label for="lastname" class="col-sm-4 col-form-lable">Lastname</label>
						<div class="col-auto col-sm-5">
							<input type="text" id="lastname" name="lastname"
								value="${person.lastname}" placeholder="enter lastname"
								class="form-control">
						</div>

					</div>

					<div class="form-group row">

						<label for="email" class="col-sm-4 col-form-lable">Email
							address</label>
						<div class="col-sm-5">
							<input type="text" id="email" name="email" size="50"
								value="${person.email}" placeholder="enter email"
								class="form-control">

						</div>
					</div>

					<div class="form-group row">

						<label for="phone" class="col-sm-4 col-form-lable">Phone
							number</label>
						<div class="col-sm-5">
							<input type="text" id="phone" name="phone" size="30"
								value="${person.phone}" placeholder="enter phone"
								class="form-control">

						</div>
					</div>

					<div>
						<input type="hidden" name="id" value="${person.id}">
					</div>

					<div class="form-group row-sm-5">
						<label></label>

						<button class="btn btn-primary">Save details</button>


					</div>
					<div class="alert alert-info" role="alert" id="erroralert">

						<ul>

							<li id="err_fname" class="err">Firstname is required</li>
							<li id="err_min_fname" class="err">Minimum 3 letter required</li>

							<li id="err_lname" class="err">Lasttname is required</li>
							<li id="err_email" class="err">Email is required</li>
							<li id="err_phone" class="err">phonenumber is required</li>

						</ul>
					</div>


				</form>

			</div>
			<div class="col">
				<jsp:include page="/list-all-contacts"></jsp:include>
			</div>





		</div>

	</div>


</body>
</html>