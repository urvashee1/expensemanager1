<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ExpenseManager | Signup </title>
</head>
<body>
<form action="saveuser" method="post">
FirstName: <input type="text" name="firstName"><br><br>
LastName: <input type="text" name="lastName"><br><br>
Email: <input type="email" name="email"><br><br>
Password: <input type="password" name="password"><br><br>
Confirm Password: <input type="password" name="confirmPassword"><br><br>
<input type="submit" value="Signup"/>
</form><br>
<a href="login">LogIn</a>
</body>
</html>-->

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Signup</title>
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
										<h5 class="card-title text-center pb-0 fs-4">Create an Account</h5>
										<p class="text-center small">Enter your personal details to create account</p>
									</div>

									<form class="row g-3 needs-validation" novalidate action="saveuser" method="post" id="myform">
										<div class="col-12">
											<label for="yourName" class="form-label">First Name</label> <input
												type="text" name="firstName" class="form-control"
												id="firstName">
											<!-- <div class="invalid-feedback">Please, enter your name!</div>
                                            <div style="color:red;">${error}</div>-->
											<span id="firstNameError" class="error"></span>
										</div>
										<div class="col-12">
											<label for="yourName" class="form-label">Last Name</label> 
											<input type="text" name="lastName" class="form-control"
												id="lastName"> <span id="lastNameError"
												class="error"></span>
										</div>
										<div class="col-12">
											<label for="yourEmail" class="form-label">Email</label> 
											<input type="text" name="email" class="form-control" id="email">
											<span id="emailError" class="error"></span>
										</div>
										<div class="col-12">
											Gender: Male: <input type="radio" name="gender" value="male" checked>
												 Female: <input type="radio" name="gender"value="female"> 
												 <span id="genderError" class="error"></span>
										</div>
										<div class="col-12">
											<label for="yourDOB" class="form-label">DOB</label> 
											<input type="date" name="dob" class="form-control" id="dob">
											<span id="dobError" class="error"></span>
										</div>
										<!-- <div class="col-12">
                    <label for="yourDOB" class="form-label">Date Of Creation</label>
                      <input type="date" name="createdAt" class="form-control" id="createdAt">
                     </div>-->
										<div class="col-12">
											<label for="yourcontactNo" class="form-label">Contact No</label>
											<input type="no" name="contactNo" class="form-control"
												id="contactNo">
												<span id="contactNoError" class="error"></span>
										</div>
										<div class="col-12">
											<label for="yourPassword" class="form-label">Password</label>
											<input type="password" name="password" class="form-control"
												id="password"> <span id="passwordError"
												class="error"></span>
										</div>
										<div class="col-12">
											<label for="yourPassword" class="form-label">Confirm Password</label> 
												<input type="password" name="confirmPassword"
												class="form-control" id="confirmPassword">
											<!--<div class="invalid-feedback">ReEnter your password!</div>-->
											<span id="confirmPasswordError" class="error"></span>
										</div>
										<div class="col-12">
											<div class="form-check">
												<input class="form-check-input" name="terms" type="checkbox"
													value="" id="acceptTerms" required> <label
													class="form-check-label" for="acceptTerms">I agree
													and accept the <a href="#">terms and conditions</a>
												</label>
												<div class="invalid-feedback">You must agree before
													submitting.</div>
											</div>
										</div>
										<div class="col-12">
											<input type="button" class="btn btn-primary w-100"
												value="Create Account" onclick="validation()" />
											<!--<button class="btn btn-primary w-100" type="submit">Create Account</button>-->
										</div>
										<div class="col-12">
											<p class="small mb-0">
												Already have an account? <a href="login">Log in</a>
											</p>
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
			isError = false;
			firstName = document.getElementById("firstName");
			firstNameError = document.getElementById("firstNameError");
			firstNameRegex = /^[a-zA-Z]+$/;

			lastName = document.getElementById("lastName");
			lastNameError = document.getElementById("lastNameError");
			lastNameRegex = /^[a-zA-Z]+$/;

			email = document.getElementById("email")
			emailError = document.getElementById("emailError");
			emailRegex = /^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z0-9-]{2,3}$/;
		
			contactNo = document.getElementById("contactNo");
			contactNoError = document.getElementById("contactNoError");
			<!--contactNoRegex = /^[0-9]{10}/-->;

			password = document.getElementById("password");
			passwordError = document.getElementById("passwordError");
			passwordRegex = /^[0-9]+$/;

			confirmPassword = document.getElementById("confirmPassword");
			confirmPasswordError = document.getElementById("confirmPasswordError");
			confirmPasswordRegex = /^[0-9]+$/;

			if (firstName.value == '') {
				firstNameError.innerHTML = "Please Enter First Name";
				isError = true;
			} else {
				if (firstNameRegex.test(firstName.value) == false) {
					firstNameError.innerHTML = "Please Enter Valid First Name";
					isError = true;
				} else {
					firstNameError.innerHTML = "";

				}
			}
			if (lastName.value == '') {
				lastNameError.innerHTML = "Please Enter Last Name";
				isError = true;
			} else {
				if (lastNameRegex.test(lastName.value) == false) {
					lastNameError.innerHTML = "Please Enter Valid Last Name";
					isError = true;
				} else {
					lastNameError.innerHTML = "";

				}
			}
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
			if (dob.value == '') {
				dobError.innerHTML = "Please fill out this field.";
				isError = true;
			} 
			if (contactNo.value == '') {
				contactNoError.innerHTML = "Please Enter Contact NO";
				isError = true;
			} else {
				if (contactNo.value.length != 10) {
					contactNoError.innerHTML = "Please Enter Valid Contact No";
					isError = true;
				} else {
					contactNoError.innerHTML = "";
				}
			}
			
			x = document.getElementsByName("gender");
			if (!(x[0].checked || x[1].checked)) {
				isError = true;
				genderError.innerHTML = "Please select Gender";
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
			if (isError == false) {
				myform = document.getElementById("myform");
				myform.submit();
			}
		}
	</script>
</body>

</html>