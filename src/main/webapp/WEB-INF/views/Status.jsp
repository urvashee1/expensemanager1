<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Status</title>
</head>
<body>
<form action="savestatus" method="post">
Status:<input type="text" name="status"><br><br>
<input type="submit" value="Save Status"/>
</form><br>
<a href="liststatus">List Status</a>
</body>
</html>-->

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Status</title>
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
      <h1>Status</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item">Status</li>
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
              <h5 class="card-title">New Status</h5>

              <!-- Multi Columns Form -->
              <form class="row g-3" action="savestatus" method="post" id="myform">
                <div class="col-12">
                  <label for="yourstatus" class="form-label">Status</label>
                  
                  <input type="text" class="form-control" id="status11" name="status" />
                  
                  
                  <span id="statusError" class="error"></span>
                </div>
                <div class="text-center">
                  <input type="button" class="btn btn-primary" value="Save Status" onclick="validation()" />
                   <a type="button" href="liststatus" class="btn btn-secondary">Cancel</a>
                </div>
              </form><!-- End Multi Columns Form -->
<a href="liststatus">List Status</a>
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
			statusx = document.getElementById("status11");
			statusError = document.getElementById("statusError");
			statusRegex = /^[a-z A-Z]+$/;
			
			if (statusx.value == '' || statusx.value==undefined) {
				statusError.innerHTML = "Please fill out this field.";
				isError = true;
			} else {
				if (statusRegex.test(statusx.value) == false) {
					statusError.innerHTML = "Please Enter Valid Status";
					isError = true;
				} else {
					statusError.innerHTML = "";

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




