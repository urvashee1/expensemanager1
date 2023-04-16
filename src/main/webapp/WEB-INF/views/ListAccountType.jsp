<%@page import="com.growinted.bean.AccountTypeBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List AccountType</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<jsp:include page="AdminSideBar.jsp"></jsp:include>
<% 
 List<AccountTypeBean> list =(List<AccountTypeBean>) request.getAttribute("list");
%>
<main id="main" class="main">
<div class="pagetitle">
<h1>Account Type</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item">Account Type</li>
          <li class="breadcrumb-item active">List</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
    	<div class="row">
				<div class="col-lg-12">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">List Account Type</h5>
           <div class="datatable-container">
             <table class="table table-borderless datatable">
                <thead>
                  <tr>
                  <th>AccountTypeId</th>
                  <th>AccountType</th>
                 <!--  <th>Status</th>-->
                  <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                <%for(AccountTypeBean cb:list){ %>
	            <tr>
	         	<td><%=cb.getAccountTypeId()%></td>
	        	<td><%=cb.getAccountType()%></td>
	         	<!--<td><%=cb.getDeleted()%></td>-->
	         	<td>
	         	<a href="editaccounttype?accounttypeId=<%=cb.getAccountTypeId()%>" style="color:blue;"><i class="bi bi-pencil-square" style="font-size:20px;"></i></a> 
		        <a href="deleteaccounttype/<%=cb.getAccountTypeId()%>" onclick="return confirm('Are you sure want to delete this record?')" style="color:red;"><i class="bi bi-trash" style="font-size:20px;"></i></a></td>
              </tr>
	           <%} %>
                  </tbody>
              </table>
              </div>
              <!-- End Table with stripped rows -->
         <a href="newaccounttype" style="color:black;"><div style="margin-left:1090px;" class="icon"><i class="ri-add-box-fill fs-2"></i></div></a>
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