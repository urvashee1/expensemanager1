<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Password</title>
</head>
<body>
<form action="updatemypassword" method="post">
Email: <input type="email" name="email"><br><br>
Password: <input type="password" name="password"><br><br>
Confirm Password: <input type="password" name="confirmPassword"><br><br>
OTP: <input type="text" name="otp"/><br><br>
<input type="submit" value="Update Password"/>
</form><br><br>
</body>
</html>-->

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Update Password</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="assets/img/img1.jpg" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
<link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
<link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: Mar 09 2023 with Bootstrap v5.2.3
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
<style type="text/css">
.error {
	color: red;
}
</style>
</head>

<body>

	<main>
		<div class="container">

			<section
				class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
				<div class="container">
					<div class="row justify-content-center">
						<div
							class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

							<div class="d-flex justify-content-center py-4">
								<a href="index.html"
									class="logo d-flex align-items-center w-auto"> <img
									src="assets/img/img1.jpg" alt=""> <span
									class="d-none d-lg-block">ExpenseManager</span>
								</a>
							</div>
							<!-- End Logo -->

							<div class="card mb-3">

								<div class="card-body">

									<div class="pt-4 pb-2">
										<h5 class="card-title text-center pb-0 fs-4">Create an Login</h5>
										<p class="text-center small">Enter your personal details to Login</p>
									</div>

									<form class="row g-3 needs-validation" novalidate action="updatemypassword" method="post" id="myform">
										 <div class="col-12">
                                         <label for="yourUsername" class="form-label">Email</label>
                                         <div class="input-group has-validation">
                                         <span class="input-group-text" id="inputGroupPrepend">@</span>
                                         <input type="text" name="email" class="form-control" id="email"></div>
                                         <span id="emailError" class="error"></span>
                                         </div>
                                         <!-- <div class="invalid-feedback">Please enter your email.</div>-->
											<!-- <div class="invalid-feedback">Please, enter your name!</div>
                                            <div style="color:red;">${error}</div>-->
							
										<div class="col-12">
											<label for="yourPassword" class="form-label">Password</label> 
											<input type="password" name="Password" class="form-control"
												id="password"> <span id="passwordError" class="error"></span>
										</div>
										<div class="col-12">
											<label for="yourConfirmPassword" class="form-label">Confirm Password</label> 
											<input type="password" name="confirmPassword" class="form-control" id="confirmPassword">
											<span id="confirmPasswordError" class="error"></span>
										</div>
										<div class="col-12">
											<label for="yourOtp" class="form-label">Otp</label> 
											<input type="text" name="otp" class="form-control" id="otp">
											<span id="otpError" class="error"></span>
										</div>
										<div class="col-12">
											<input type="button" class="btn btn-primary w-100" value="Update Password" onclick="validation()"/>
											<!--<button class="btn btn-primary w-100" type="submit">Create Account</button>-->
										</div>
										
									</form>

								</div>
							</div>

						</div>
					</div>
				</div>

			</section>

		</div>
	</main>
	<!-- End #main -->

	<!-- Vendor JS Files -->
	<script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/chart.js/chart.umd.js"></script>
	<script src="assets/vendor/echarts/echarts.min.js"></script>
	<script src="assets/vendor/quill/quill.min.js"></script>
	<script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
	<script src="assets/vendor/tinymce/tinymce.min.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>
	<script type="text/javascript">
		function validation() {
			isError=false;
			email = document.getElementById("email")
			emailError = document.getElementById("emailError");
			emailRegex = /^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z0-9-]{2,3}$/;
			
			password = document.getElementById("password");
			passwordError = document.getElementById("passwordError");
			passwordRegex = /^[0-9]+$/;

			confirmPassword = document.getElementById("confirmPassword");
			confirmPasswordError = document.getElementById("confirmPasswordError");
			confirmPasswordRegex = /^[0-9]+$/;
			
			otp = document.getElementById("otp");
			otpError = document.getElementById("otpError");
			<!--otpRegex = /^[a-zA-Z0-9]+$/;-->
			
				if (email.value == '') {
					emailError.innerHTML = "Please Enter Email";
					isError = true;
				} else {
					if (emailRegex.test(email.value) == false) {
						emailError.innerHTML = "Please Enter Valid Email";
						isError = true;
					} else {
						emailError.innerHTML = "";
					}
				}
			
			if (password.value == '') {
				passwordError.innerHTML = "Please Enter Password";
				isError = true;
			} else {
				if (passwordRegex.test(password.value) == false) {
					passwordError.innerHTML = "Please Enter Valid Password";
					isError = true;
				} else {
					passwordError.innerHTML = "";
				}
			}

			if (confirmPassword.value == '') {
				confirmPasswordError.innerHTML = "Please Enter Confirm Password";
				isError = true;
			} else {
				if (confirmPasswordRegex.test(confirmPassword.value) == false) {
					confirmPasswordError.innerHTML = "Please Enter Valid Confirm Password";
					isError = true;
				} else {
					confirmPasswordError.innerHTML = "";
				}
			}
			if (otp.value == '') {
				otpError.innerHTML = "Please Enter Otp";
				isError = true;
			} else {
				if (otp.value.length != 6){
					otpError.innerHTML = "Please Enter Valid Otp";
					isError = true;
				} else {
					otpError.innerHTML = "";
				}
			}
	        if (isError == false) {
				myform = document.getElementById("myform");
				myform.submit();
			}
		}
	</script>
</body>
</html>