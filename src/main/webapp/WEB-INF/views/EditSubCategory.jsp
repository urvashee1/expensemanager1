<%@page import="com.growinted.bean.SubCategoryBean"%>
<%@page import="com.growinted.bean.CategoryBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Sub Category</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<jsp:include page="AdminSideBar.jsp"></jsp:include>
<%
List<CategoryBean> list=(List<CategoryBean>) request.getAttribute("list");
SubCategoryBean subCategory=(SubCategoryBean) request.getAttribute("subCategory");
%>
<main id="main" class="main">

    <div class="pagetitle">
      <h1>Sub Category</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item">Sub Category</li>
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
              <h5 class="card-title">Edit Sub Category</h5>

              <!-- Multi Columns Form -->
              <form class="row g-3" action="updatesubcategory" method="post">
              <input type="hidden" name="subCategoryId" value="<%=subCategory.getSubCategoryId()%>"/>
                <div class="col-12">
                  <label for="inputName5" class="form-label">SubCategoryName</label>
                  <input type="text" class="form-control" id="inputName5" name="subCategoryName" value="<%=subCategory.getSubCategoryName()%>">
                </div>
                <div class="col-12">
                  <label for="inputState" class="form-label">Category</label>
                  <select id="categoryId" class="form-select" name="categoryId" value="${subcategoryBean.categoryId}">
                  <option value="-1">Select Category</option>
                  <%
                for(CategoryBean cb : list){
                %>
                    <option value="<%=cb.getCategoryId()%>" <%=cb.getCategoryId()==subCategory.getCategoryId() ? "selected" : "" %>>
                    
                    <%=cb.getCategoryName()%></option><% } %>
                  
                  </select>
                  </div>
                  </div>
                    <!-- <option selected>Choose...</option>
                    <option>...</option>-->
                <div class="text-center">
                  <button type="submit" class="btn btn-primary" >Update Sub Category</button>
                  <a type="button" href="listsubcategories" class="btn btn-secondary">Cancel</a>
                </div>
              </form><!-- End Multi Columns Form -->
<a href="listsubcategories">List Sub Category</a>
            </div>
          </div>
</div>
        </div>
        </section>
        </main>
        
          <!--<form action="savesubcategory" method="post">
SubCategoryName : <input type="text" name="subCategoryName"/>
<br><BR>
Category <select name="categoryId">
<%
for(CategoryBean cb : list){
%>
<option value="<%=cb.getCategoryId()%>">
<%=cb.getCategoryName()%></option>
<%
}
%>
</select><br><br>
		<input type="submit" value="Save SubCategory"/>
</form>-->
<jsp:include page="AdminFooter.jsp"></jsp:include>
<jsp:include page="AllJs.jsp"></jsp:include>
</body>
</html>



