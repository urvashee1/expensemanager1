<%@page import="com.growinted.bean.UserBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Users</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<jsp:include page="AdminSideBar.jsp"></jsp:include>
<%  
 List<UserBean> list =(List<UserBean>) request.getAttribute("listUser");
%>
<main id="main" class="main">
<div class="pagetitle">
<h1>Users</h1>
      <nav>
        <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item">Users</li>
          <li class="breadcrumb-item active">List</li>
        </ol>
     </nav>
    </div><!-- End Page Title -->

    <section class="section">
    <div class="row">
				<div class="col-lg-12">
       <div class="card">
            <div class="card-body">
              <h5 class="card-title">List Users</h5>
            
   <div class="datatable-container">
		<table class="table table-borderless datatable">
                <thead>
                  <tr>
                  <th>UserId</th>
                  <th>FirstName</th>
                  <th>LastName</th>
                  <th>Email</th>
                  <th>Password</th>
                  <!--<th>Role</th>-->
                  <!--<th>Otp</th>-->
                  <!--<th>Gender</th>-->
                  <!--<th>DOB</th>-->
                  <!--<th>CreatedAt</th>-->
                  <th>ContactNo</th>
                  <th>Active</th>
                  <th>Action</th>
                    
                  </tr>
                </thead>
                <tbody>
                <%for(UserBean sb:list){%>
                  <tr>
                  <td><%=sb.getUserId()%></td>
		          <td><%=sb.getFirstName()%></td>
		          <td><%=sb.getLastName()%></td>
		          <td><%=sb.getEmail()%></td>
		          <td><%=sb.getPassword()%></td>
		          <!--<td><%=sb.getRole()%></td>-->
		          <!--<td><%=sb.getOtp()%></td>-->
		          <!--<td><%=sb.getGender()%></td>-->
		          <!--<td><%=sb.getDob()%></td>-->
		          <!--<td><%=sb.getCreatedAt()%></td>-->
		          <td><%=sb.getContactNo()%></td>
		         
		         <td>
		          <div class="form-check form-switch">
		          <input class="form-check-input" onclick="changeStatus(<%=sb.getUserId()%>,<%=sb.getDeleted()%>)" type="checkbox" id="flexSwitchCheckChecked" 
		          <%=!sb.getDeleted()? "checked" : ""%>>
		          </div>
		          </td>
		          <td>
		          <a href="edituser?userId=<%=sb.getUserId()%>" style="color:blue;"><i class="bi bi-pencil-square" style="font-size:20px;"></i></a>
              <!--<a href="deleteuser/<%=sb.getUserId()%>" onclick="return confirm('Are you sure want to delete this record?')" style="color:red;"><i class="bi bi-trash" style="font-size:20px;"></i></a>-->
                   <a href="viewuser?userId=<%=sb.getUserId()%>" style="color:black;"><i class="bi bi-eye" style="font-size:20px;"></i></a></td>
                    </tr>
                  <%} %>
                  </tbody>
              </table>
              </div>
        <a href="newuser" style="color:black;"><div style="margin-left:1080px;" class="icon"><i class="ri-add-box-fill fs-2"></i></div></a>
        </div> 
</div>
            </div>
          </div>

    </section>
</main>
<jsp:include page="AdminFooter.jsp"></jsp:include>
<jsp:include page="AllJs.jsp"></jsp:include>

<script type="text/javascript">
function changeStatus(userId,currentStatus){
	location.href="deleteuser/"+userId+"/"+currentStatus;
}
</script>
</body>
</html>