<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit User</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<jsp:include page="AdminSideBar.jsp"></jsp:include>
<main id="main" class="main">

    <div class="pagetitle">
      <h1>User</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item">User</li>
          <li class="breadcrumb-item active">Edit</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    <section class="section">
      <div class="row">
        <div class="col-lg-3"></div>
        <div class="col-lg-6">
        <div class="card">
            <div class="card-body">
              <h5 class="card-title">Edit User</h5>

              <!-- Multi Columns Form -->
              <form class="row g-3" action="updateuser" method="post" id="myform">
               <input type="hidden" name="userId" value="${userBean.userId}"/>
                <div class="col-12">
                  <label for="inputName5" class="form-label">First Name</label>
                  <input type="text" class="form-control" id="firstName" name="firstName" value="${userBean.firstName}">
                  
                </div>
                 <div class="col-12">
                  <label for="inputName5" class="form-label">Last Name</label>
                  <input type="text" class="form-control" id="lastName" name="lastName" value="${userBean.lastName}">
                 
                </div>
                <div class="col-12">
				<label for="inputname5" class="form-label">Email</label> 
				<input type="text" name="email" class="form-control" id="email"  value="${userBean.email}">
			    
				</div>
				<div class="col-12">
			   Gender: Male: <input type="radio" name="gender" value="male" checked>
			   Female: <input type="radio" name="gender" value="female"> 
			   
				</div>
                 <div class="col-12">
                  <label for="inputName5" class="form-label">DOB</label>
                  <input type="date" class="form-control" id="dob" name="dob"  value="${userBean.dob}">
                </div>
                 
                 <div class="col-12">
                  <label for="inputName5" class="form-label">ContactNo</label>
                  <input type="no" class="form-control" id="contactNo" name="contactNo"  value="${userBean.contactNo}">
                  
                   </div>
                
                 <div class="col-12">
                  <label for="inputName5" class="form-label">Password</label>
                  <input type="text" class="form-control" id="password" name="password"  value="${userBean.password}">
                            
                </div>
                
                <div class="text-center">
                  <button type="submit" class="btn btn-primary">Update User</button>
                  <a type="button" href="listuser" class="btn btn-secondary">Cancel</a>
                </div>
              </form><!-- End Multi Columns Form -->
<a href="listuser">List User</a>
            </div>
          </div>
</div>
</div>
</section>
</main>
	<jsp:include page="AdminFooter.jsp"></jsp:include>
	<jsp:include page="AllJs.jsp"></jsp:include>
</body>
</html>