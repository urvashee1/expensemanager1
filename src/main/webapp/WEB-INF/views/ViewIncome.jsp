<%@page import="com.growinted.bean.IncomeBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Income</title>
<jsp:include page="AllCss.jsp"/>
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
					<li class="breadcrumb-item active">Income</li>
				</ol>
</nav></div>
<section class="section">
			<div class="row">
				<div class="col-lg-12">

					<div class="card">
						<div class="card-body">
							<h5 class="card-title">View Income</h5>
<%
IncomeBean incomeBean=(IncomeBean)request.getAttribute("incomeBean");
%>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>IncomeId</b></div>
<div class="col-lg-9 col-md-8"><%=incomeBean.getIncomeId()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>Title</b></div>
<div class="col-lg-9 col-md-8"><%=incomeBean.getTitle()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>UseId</b></div>
<div class="col-lg-9 col-md-8"><%=incomeBean.getUserId()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>AccountTypeId</b></div>
<div class="col-lg-9 col-md-8"><%=incomeBean.getAccountTypeId()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>StatusId</b></div>
<div class="col-lg-9 col-md-8"><%=incomeBean.getStatusId()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>Amount</b></div>
<div class="col-lg-9 col-md-8"><%=incomeBean.getAmount()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>Date</b></div>
<div class="col-lg-9 col-md-8"><%=incomeBean.getDate()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>Description</b></div>
<div class="col-lg-9 col-md-8"><%=incomeBean.getDescription()%></div> 
</div>
<!--<div class="row">
<div class="col-lg-3 col-md-4 label"><b>Status</b></div>
<div class="col-lg-9 col-md-8"><%=incomeBean.getDeleted()%></div>
</div>-->
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>FirstName</b></div>
<div class="col-lg-9 col-md-8"><%=incomeBean.getFirstName()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>AccountType</b></div>
<div class="col-lg-9 col-md-8"><%=incomeBean.getAccountType()%></div> 
</div>
<div class="row">
<div class="col-lg-3 col-md-4 label"><b>Status</b></div>
<div class="col-lg-9 col-md-8"><%=incomeBean.getStatus()%></div> 
</div>
</div>
</div>
</div>
</div>
</section>
</main>
<!--IncomeId:<%=incomeBean.getIncomeId()%><br>
Title:<%=incomeBean.getTitle()%><br>
UserId:<%=incomeBean.getUserId()%><br>
AccountTypeId:<%=incomeBean.getAccountTypeId()%><br>
StatusId:<%=incomeBean.getStatusId()%><br>
Date:<%=incomeBean.getDate()%><br>
Description:<%=incomeBean.getDescription()%><br>
Deleted:<%=incomeBean.getDeleted()%><br>
FirstName:<%=incomeBean.getFirstName()%><br>
AccountType:<%=incomeBean.getAccountType()%><br>
Status:<%=incomeBean.getStatus()%><br>-->
<jsp:include page="AdminFooter.jsp"></jsp:include>
<jsp:include page="AllJs.jsp"></jsp:include>
</body>
</html>