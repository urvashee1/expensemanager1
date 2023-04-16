<%@page import="com.growinted.bean.ExpenseBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Expense</title>
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
					<li class="breadcrumb-item active">Expense</li>
				</ol>
</nav></div>
<section class="section">
			<div class="row">
				<div class="col-lg-12">

					<div class="card">
						<div class="card-body">
							<h5 class="card-title">View Expense</h5>
<%
ExpenseBean expenseBean=(ExpenseBean)request.getAttribute("expenseBean");
%>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>ExpenseId</b></div>
<div class="col-lg-9 col-md-8"><%=expenseBean.getExpenseId()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>Title</b></div>
<div class="col-lg-9 col-md-8"><%=expenseBean.getTitle()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>UserId</b></div>
<div class="col-lg-9 col-md-8"><%=expenseBean.getUserId()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>CategoryId</b></div>
<div class="col-lg-9 col-md-8"><%=expenseBean.getCategoryId()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>SubCategoryId</b></div>
<div class="col-lg-9 col-md-8"><%=expenseBean.getSubCategoryId()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>VendorId</b></div>
<div class="col-lg-9 col-md-8"><%=expenseBean.getVendorId()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>AccountTypeId</b></div>
<div class="col-lg-9 col-md-8"><%=expenseBean.getAccountTypeId()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>StatusId</b></div>
<div class="col-lg-9 col-md-8"><%=expenseBean.getStatusId()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>Amount</b></div>
<div class="col-lg-9 col-md-8"><%=expenseBean.getAmount()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>Date</b></div>
<div class="col-lg-9 col-md-8"><%=expenseBean.getDate()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>Description</b></div>
<div class="col-lg-9 col-md-8"><%=expenseBean.getDescription()%></div> 
</div>
<!--<div class="row">
<div class="col-lg-3 col-md-4 label"><b>Status</b></div>
<div class="col-lg-9 col-md-8"><%=expenseBean.getDeleted()%></div> 
</div>-->
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>FirstName</b></div>
<div class="col-lg-9 col-md-8"><%=expenseBean.getFirstName()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>CategoryName</b></div>
<div class="col-lg-9 col-md-8"><%=expenseBean.getCategoryName()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>SubCategoryName</b></div>
<div class="col-lg-9 col-md-8"><%=expenseBean.getSubCategoryName()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>VendorName</b></div>
<div class="col-lg-9 col-md-8"><%=expenseBean.getVendorName()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>AccountType</b></div>
<div class="col-lg-9 col-md-8"><%=expenseBean.getAccountType()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>Status</b></div>
<div class="col-lg-9 col-md-8"><%=expenseBean.getStatus()%></div> 
</div>
</div>
</div>
</div>
</div>
</section>
</main>
<!--ExpenseId:<%=expenseBean.getExpenseId()%><br>
Title:<%=expenseBean.getTitle()%><br>
UserId:<%=expenseBean.getUserId()%><br>
CategoryId:<%=expenseBean.getCategoryId()%><br>
SubCategoryId:<%=expenseBean.getSubCategoryId()%><br>
VendorId:<%=expenseBean.getVendorId()%><br>
AccountTypeId:<%=expenseBean.getAccountTypeId()%><br>
StatusId:<%=expenseBean.getStatusId()%><br>
Amount:<%=expenseBean.getAmount()%><br>
Date:<%=expenseBean.getDate()%><br>
Description:<%=expenseBean.getDescription()%><br>
Deleted:<%=expenseBean.getDeleted()%><br>
FirstName:<%=expenseBean.getFirstName()%><br>
CategoryName:<%=expenseBean.getCategoryName()%><br>
SubCategoryName:<%=expenseBean.getSubCategoryName()%><br>
VendorName:<%=expenseBean.getVendorName()%><br>
AccountType:<%=expenseBean.getAccountType()%><br>
Status:<%=expenseBean.getStatus()%><br>-->
<jsp:include page="AdminFooter.jsp"></jsp:include>
<jsp:include page="AllJs.jsp"></jsp:include>
</body>
</html>