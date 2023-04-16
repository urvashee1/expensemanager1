<%@page import="java.util.List"%>
<%@page import="com.growinted.bean.StatusBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Status</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<jsp:include page="AdminSideBar.jsp"></jsp:include>
<%  
 List<StatusBean> list =(List<StatusBean>) request.getAttribute("listStatus");
%>
<main id="main" class="main">
<div class="pagetitle">
<h1>Status</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item">Status</li>
          <li class="breadcrumb-item active">List</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
    <div class="row">
				<div class="col-lg-12">
         <div class="card">
            <div class="card-body">
              <h5 class="card-title">List Status</h5>
              <div class="datatable-container">
              <table class="table table-borderless datatable">
                <thead>
                  <tr>
                   <th>StatusId</th>
                  <th>Status</th>
                  <!--<th>Status</th>-->
                  <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                <%for(StatusBean cb:list){ %>
	           <tr>
		       <td><%=cb.getStatusId()%></td>
		       <td><%=cb.getStatus()%></td>
	       	   <!--<td><%=cb.getDeleted()%></td>-->
	       	   <td>
	       	   <a href="editstatus?statusId=<%=cb.getStatusId()%>" style="color:blue;"><i class="bi bi-pencil-square" style="font-size:20px;"></i></a> 
                 <a href="deletestatus/<%=cb.getStatusId()%>" onclick="return confirm('Are you sure want to delete this record?')" style="color:red;"><i class="bi bi-trash" style="font-size:20px;"></i></a></td>
	           </tr>
	           <%} %>
                  </tbody>
              </table>
              </div>
                      <a href="newstatus" style="color:black;"><div style="margin-left:1090px;" class="icon"><i class="ri-add-box-fill fs-2"></i></div></a>
              
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


    

           
                    
                
    