<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Users</title>
<jsp:include page="AllCss.jsp"></jsp:include>

<style type="text/css">
.error {
	color: red;
}
</style>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<jsp:include page="AdminSideBar.jsp"></jsp:include>
<main id="main" class="main">

    <div class="pagetitle">
      <h1>Users</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item">Users</li>
          <li class="breadcrumb-item active">New</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    <section class="section">
      <div class="row">
        <div class="col-lg-3"></div>
        <div class="col-lg-6">
        <div class="card">
            <div class="card-body">
              <h5 class="card-title">New Users</h5>

              <!-- Multi Columns Form -->
              <form class="row g-3" action="saveusers" method="post" id="myform">
                <div class="col-12">
                  <label for="inputName5" class="form-label">First Name</label>
                  <input type="text" class="form-control" id="firstName" name="firstName">
                  <span id="firstNameError" class="error"></span>
                </div>
                 <div class="col-12">
                  <label for="inputName5" class="form-label">Last Name</label>
                  <input type="text" class="form-control" id="lastName" name="lastName">
                  <span id="lastNameError" class="error"></span>
                </div>
                <div class="col-12">
				<label for="inputname5" class="form-label">Email</label> 
				<input type="text" name="email" class="form-control" id="email">
			    <span id="emailError" class="error"></span>
				</div>
				<div class="col-12">
			   Gender: Male: <input type="radio" name="gender" value="male" checked>
			   Female: <input type="radio" name="gender" value="female"> 
			   <span id="genderError" class="error"></span>
				</div>
                 <div class="col-12">
                  <label for="inputName5" class="form-label">DOB</label>
                  <input type="date" class="form-control" id="dob" name="dob">
                  <span id="dobError" class="error"></span>
                </div>
                 
                 <div class="col-12">
                  <label for="inputName5" class="form-label">ContactNo</label>
                  <input type="no" class="form-control" id="contactNo" name="contactNo">
                  <span id="contactNoError" class="error"></span>
                   </div>
                
                 <div class="col-12">
                  <label for="inputName5" class="form-label">Password</label>
                  <input type="text" class="form-control" id="password" name="password">
                  <span id="passwordError" class="error"></span>          
                </div>
                
                <div class="text-center">
                  <input type="button" class="btn btn-primary" value="Save User" onclick="validation()"/>
                  <a type="button" href="listuser" class="btn btn-secondary">Cancel</a>
                </div>
              </form><!-- End Multi Columns Form -->
<a href="listuser">List Users</a>
            </div>
          </div>
</div>
</div>
</section>
</main>
	<jsp:include page="AdminFooter.jsp"></jsp:include>
	<jsp:include page="AllJs.jsp"></jsp:include>
	
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
			contactNoRegex = /^[0-9]{10}/;

			password = document.getElementById("password");
			passwordError = document.getElementById("passwordError");
			passwordRegex = /^[0-9]+$/;
			
			
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
				if (contactNo.value.length !=10) {
					contactNoError.innerHTML = "Please Enter Valid Contact No";
					isError = true;
				} else {
					contactNoError.innerHTML = "";
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
			if (isError == false) {
				myform = document.getElementById("myform");
				myform.submit();
			}
		}
	</script>
</body>
</html>




