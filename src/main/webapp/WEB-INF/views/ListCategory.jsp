<%@page import="com.growinted.bean.CategoryBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Category</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<jsp:include page="AdminSideBar.jsp"></jsp:include>
	<%
	List<CategoryBean> list = (List<CategoryBean>) request.getAttribute("list");
	%>
	<!-- main content open -->
	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Category</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
					<li class="breadcrumb-item">Category</li>
					<li class="breadcrumb-item active">List</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-lg-12">

					<div class="card">
						<div class="card-body">
							<h5 class="card-title">List Category</h5>

							<!-- Table with stripped rows -->
								<div class="datatable-container">
									<table class="table table-borderless datatable">
										<thead>
											<tr>
												<th>CategoryId</th>
												<th>CategoryName</th>
												<!--<th>Status</th>-->
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
												<%
												for (CategoryBean cb : list) {
												%>
											<tr>
											
 												<td><%=cb.getCategoryId()%></td>
												<td><%=cb.getCategoryName()%></td>
												<!--<td><%=cb.getDeleted()%></td>-->
												<td>
												<a href="editcategory?categoryId=<%=cb.getCategoryId()%>" style="color:blue;"><i class="bi bi-pencil-square" style="font-size:20px;"></i></a>
												<a href="deletecategory/<%=cb.getCategoryId()%>" onclick="return confirm('Are you sure want to delete this record?')" style="color:red;"><i class="bi bi-trash" style="font-size:20px;"></i></a></td>			
			                                </tr>
											<%
											}
											%>
										</tbody>
									</table>
								</div>
                        <a href="newcategory" style="color:black;"><div style="margin-left:1070px;" class="icon" ><i class="ri-add-box-fill fs-2"></i></div></a>
								<!-- End Table with stripped rows -->
</div>
							</div>
						</div>
			</div>
		</section>

	</main>

	<!--  main content end -->
	<jsp:include page="AdminFooter.jsp"></jsp:include>
	<jsp:include page="AllJs.jsp"></jsp:include>
</body>
</html>






