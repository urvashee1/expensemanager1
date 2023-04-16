<%@page import="com.growinted.bean.CategoryBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Sub Category</title>
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
<%
List<CategoryBean> list=(List<CategoryBean>) request.getAttribute("list");
%>
<main id="main" class="main">

    <div class="pagetitle">
      <h1>Sub Category</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item">Sub Category</li>
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
              <h5 class="card-title">New Sub Category</h5>

              <!-- Multi Columns Form -->
              <form class="row g-3" action="savesubcategory" method="post" id="myform">
                <div class="col-12">
                  <label for="inputName5" class="form-label">SubCategoryName</label>
                  <input type="text" class="form-control" id="subCategoryName" name="subCategoryName">
                  <span id="subCategoryNameError" class="error"></span>
                </div>
                <div class="col-12">
                  <label for="inputState" class="form-label">Category</label>
                  <select id="categoryId" class="form-select" name="categoryId" aria-label="Default select example">
                  <option value="-1">Select Category</option>
                  <%
                for(CategoryBean cb : list){
                %>
                    <option value="<%=cb.getCategoryId()%>"><%=cb.getCategoryName()%></option><% } %>
                  
                  </select>
                  <span id="categoryIdError" class="error"></span>
                  </div>
                  
                    <!-- <option selected>Choose...</option>
                    <option>...</option>-->
                <div class="text-center">
                  <input type="button" class="btn btn-primary" value="Save Sub Category" onclick="validation()"/>
                  <a type="button" href="listsubcategories" class="btn btn-secondary">Cancel</a>
                </div>
              </form><!-- End Multi Columns Form -->
<a href="listsubcategories">List Sub Category</a>
            </div>
          </div>
</div>
        </div>
        </section>
        </main>
        
          <!--<form action="savesubcategory" method="post">
SubCategoryName : <input type="text" name="subCategoryName"/>
<br><BR>
Category <select name="categoryId">
<%
for(CategoryBean cb : list){
%>
<option value="<%=cb.getCategoryId()%>">
<%=cb.getCategoryName()%></option>
<%
}
%>
</select><br><br>
		<input type="submit" value="Save SubCategory"/>
</form>-->
<jsp:include page="AdminFooter.jsp"></jsp:include>
<jsp:include page="AllJs.jsp"></jsp:include>

<script type="text/javascript">
		function validation() {
			isError = false;
			subCategoryName = document.getElementById("subCategoryName");
			subCategoryNameError = document.getElementById("subCategoryNameError");
			subCategoryNameRegex = /^[a-z A-Z]+$/;
			
			if (subCategoryName.value == '') {
				subCategoryNameError.innerHTML = "Please fill out this field.";
				isError = true;
			} else {
				if (subCategoryNameRegex.test(subCategoryName.value) == false) {
					subCategoryNameError.innerHTML = "Please Enter Valid SubCategoryName";
					isError = true;
				} else {
					subCategoryNameError.innerHTML = "";

				}
			}
			
			categoryId=document.getElementById("categoryId");
			categoryIdError = document.getElementById("categoryIdError");
			if(categoryId.value=="-1"){
				categoryIdError.innerHTML="Please fill out this field."
			    isError=true;
			}
	
			if (isError == false) {
				myform = document.getElementById("myform");
				myform.submit();
			}
		}
</script>
</body>
</html>



