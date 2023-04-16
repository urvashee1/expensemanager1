<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Category</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<jsp:include page="AdminSideBar.jsp"></jsp:include>
<main id="main" class="main">

    <div class="pagetitle">
      <h1>Category</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item">Category</li>
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
              <h5 class="card-title">Edit Category</h5>

              <!-- Multi Columns Form -->
              <form class="row g-3" action="updatecategory" method="post">
              <input type="hidden" name="categoryId" value="${categoryBean.categoryId}"/>
                <div class="col-12">
                  <label for="inputName5" class="form-label">Category Name</label>
                  <input type="text" class="form-control" id="inputName5" name="categoryName" value="${categoryBean.categoryName}">
                </div>
                <div class="text-center">
                  <button type="submit" class="btn btn-primary" >Update Category</button>
                   <a type="button" href="listcategories" class="btn btn-secondary">Cancel</a>
                </div>
              </form><!-- End Multi Columns Form -->
<a href="listcategories">List Category</a>
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