<%@page import="java.util.List"%>
<%@page import="com.growinted.bean.IncomeBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Income</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<jsp:include page="AdminSideBar.jsp"></jsp:include>
<%  
 List<IncomeBean> list =(List<IncomeBean>) request.getAttribute("listIncome");
%>
<main id="main" class="main">
<div class="pagetitle">
<h1>Income</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item">Income</li>
          <li class="breadcrumb-item active">List</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
    <div class="row">
				<div class="col-lg-12">
         <div class="card">
            <div class="card-body">
              <h5 class="card-title">List Income</h5>
              <div class="datatable-container">
             
    <table class="table table-borderless datatable id="listincome">
                <thead>
                  <tr>
                   <th>IncomeId</th>
                  <th>Title</th>
                  <!--<th>UserId</th>-->
                  <!--<th>AccountTypeId</th>-->
                  <!--<th>StatusId</th>-->
                   <th>Amount</th>
                  <th>Date</th>
                  <th>Description</th>
                  <!--<th>FirstName</th>-->
                  <!--<th>AccountType</th>-->
                  <!--<th>Status</th>-->
                  <!--<th>Status</th>-->
                  <th>Action</th>
                  </tr>
                </thead>
                <tbody>
               <%for(IncomeBean sb:list){%>
	           <tr>
		<td><%=sb.getIncomeId()%></td>
		<td><%=sb.getTitle()%></td>
	    <!--<td><%=sb.getUserId()%></td>-->
		<!--<td><%=sb.getAccountTypeId()%></td>-->
		<!--<td><%=sb.getStatusId()%></td>-->
		<td><%=sb.getAmount()%></td>
		<td><%=sb.getDate()%></td>
		<td><%=sb.getDescription()%></td>
		<!--<td><%=sb.getFirstName()%></td>-->
		<!--<td><%=sb.getAccountType()%></td>-->
		<!--<td><%=sb.getStatus()%></td>-->
		<!--<td><%=sb.getDeleted()%></td>-->
		 <td>
		<a href="editincome?incomeId=<%=sb.getIncomeId()%>" style="color:blue;"><i class="bi bi-pencil-square" style="font-size:20px;"></i></a> 
		<a href="deleteincome/<%=sb.getIncomeId()%>" onclick="return confirm('Are you sure want to delete this record?')" style="color:red;"><i class="bi bi-trash" style="font-size:20px;"></i></a> 
		<a href="viewincome?incomeId=<%=sb.getIncomeId()%>" style="color:black;"><i class="bi bi-eye" style="font-size:20px;"></i></a></td>
	    </tr>
	    <%} %>
        </tbody>
        </table>
              </div>
          
        <!--<a href="newincome" style="color:black;"><div style="margin-left:1080px;" class="icon"><i class="ri-add-box-fill fs-2"></i></div></a>-->
              
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






	





    

           
                    
                
    