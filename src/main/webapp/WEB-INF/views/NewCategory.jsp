<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Category</title>
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
      <h1>Category</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item">Category</li>
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
              <h5 class="card-title">New Category</h5>

              <!-- Multi Columns Form -->
              <form class="row g-3" action="savecategory" method="post" id="myform">
                <div class="col-12">
                  <label for="inputName5" class="form-label">Category Name</label>
                  <input type="text" class="form-control"  name="categoryName" id="categoryName">
                  <span id="categoryNameError" class="error"></span>
                </div>
                <div class="text-center">
                  <input type="button" class="btn btn-primary" value="Save Category" onclick="validation()"/>
                   <a type="button" href="listcategories" class="btn btn-secondary">Cancel</a>
                </div>
              </form><!-- End Multi Columns Form -->
<a href="listcategories">List Category</a>
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
			categoryName = document.getElementById("categoryName");
			categoryNameError = document.getElementById("categoryNameError");
			categoryNameRegex = /^[a-z A-Z]+$/;
			
			if (categoryName.value == '') {
				categoryNameError.innerHTML = "Please fill out this field.";
				isError = true;
			} else {
				if (categoryNameRegex.test(categoryName.value) == false) {
					categoryNameError.innerHTML = "Please Enter Valid CategoryName";
					isError = true;
				} else {
					categoryNameError.innerHTML = "";

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




