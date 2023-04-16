<%@page import="com.growinted.bean.UserBean"%>
<!-- <%@page import="java.util.List"%>-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View User</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<jsp:include page="AdminSideBar.jsp"></jsp:include>

<main id="main" class="main">
<div class="pagetitle">
<h1>Views</h1>
<nav>
<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
					<li class="breadcrumb-item">Views</li>
					<li class="breadcrumb-item active">User</li>
				</ol>
</nav></div>
<section class="section">
			<div class="row">
				<div class="col-lg-12">

					<div class="card">
						<div class="card-body">
							<h5 class="card-title">View User</h5>
<%  
UserBean userBean=(UserBean)request.getAttribute("userBean");
%>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>UserId</b></div>
<div class="col-lg-9 col-md-8"><%=userBean.getUserId()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>FirstName</b></div>
<div class="col-lg-9 col-md-8"><%=userBean.getFirstName()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>LastName</b></div>
<div class="col-lg-9 col-md-8"><%=userBean.getLastName()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>Email</b></div>
<div class="col-lg-9 col-md-8"><%=userBean.getEmail()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>Password</b></div>
<div class="col-lg-9 col-md-8"><%=userBean.getPassword()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>Role</b></div>
<div class="col-lg-9 col-md-8"><%=userBean.getRole()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>Otp</b></div>
<div class="col-lg-9 col-md-8"><%=userBean.getOtp()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>Gender</b></div>
<div class="col-lg-9 col-md-8"><%=userBean.getGender()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>DOB</b></div>
<div class="col-lg-9 col-md-8"><%=userBean.getDob()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>CreatedAt</b></div>
<div class="col-lg-9 col-md-8"><%=userBean.getCreatedAt()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>ContactNo</b></div>
<div class="col-lg-9 col-md-8"><%=userBean.getContactNo()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>Active</b></div>
<div class="col-lg-9 col-md-8"><%=userBean.getDeleted()==true? "ACTIVE" : "DISABLE"%></div> 
</div>
<!--<div class="row">
<div class="col-lg-3 col-md-4 label"><b>Status</b></div>
<div class="col-lg-9 col-md-8"><%=userBean.getDeleted()%></div> 
</div>-->
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

