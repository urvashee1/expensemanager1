<%@page import="com.growinted.bean.IncomeBean"%>
<%@page import="com.growinted.bean.StatusBean"%>
<%@page import="com.growinted.bean.AccountTypeBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Income</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<jsp:include page="AdminSideBar.jsp"></jsp:include>
<%
List<AccountTypeBean> list1=(List<AccountTypeBean>) request.getAttribute("list1");
List<StatusBean> list2=(List<StatusBean>) request.getAttribute("list2");
IncomeBean income=(IncomeBean) request.getAttribute("income");
%>
<main id="main" class="main">

    <div class="pagetitle">
      <h1>Income</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item">Income</li>
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
              <h5 class="card-title">Edit Income</h5>

              <!-- Multi Columns Form -->
              <form class="row g-3" action="updateincome" method="post">
              <input type="hidden" name="incomeId" value="<%=income.getIncomeId()%>"/>
                <div class="col-12">
                  <label for="inputName5" class="form-label">Title</label>
                  <input type="text" class="form-control" id="inputName5" name="title" value="<%=income.getTitle()%>">
                </div>
                <div class="col-12">
                  <label for="inputState" class="form-label">Account Type</label>
                  <select id="inputState" class="form-select" name="accountTypeId">
                  <option value="-1">Select Account Type</option>
                  <%
                for(AccountTypeBean cb : list1){
                %>
                    <option value="<%=cb.getAccountTypeId()%>"
                    <%=cb.getAccountTypeId()==income.getAccountTypeId() ? "selected":""%>>
                    <%=cb.getAccountType()%></option>
                    <% } %>
                  
                  </select>
                  </div>
                    <!-- <option selected>Choose...</option>
                    <option>...</option>-->
              
                <div class="col-12">
                  <label for="inputState" class="form-label">Status</label>
                  <select id="inputstate" class="form-select" name="statusId">
                  <option value="-1">Select Status</option>
                  <%
                for(StatusBean cb : list2){
                %>
                    <option value="<%=cb.getStatusId()%>"
                    <%=cb.getStatusId()==income.getStatusId()? "selected" : ""%>>
                    <%=cb.getStatus()%></option>
                    <% } %>
                  </select>
                  </div>
                    <!-- <option selected>Choose...</option>
                    <option>...</option>-->
          
                  <div class="col-12">
                  <label for="inputName5" class="form-label">Amount</label>
                  <input type="text" class="form-control" id="inputName5" name="amount" value="<%=income.getAmount()%>">
                </div>
                 <div class="col-12">
                  <label for="inputName5" class="form-label">Date</label>
                  <input type="date" class="form-control" id="inputName5" name="date" value="<%=income.getDate()%>">
                </div>
                 <div class="col-12">
                  <label for="inputName5" class="form-label">Description</label>
                  <textarea class="form-control" id="inputName5" name="description"><%=income.getDescription()%></textarea>
                </div>
                <div class="text-center">
                  <button type="submit" class="btn btn-primary" >Update Income</button>
                  <a type="button" href="listincome" class="btn btn-secondary">Cancel</a>
                </div>
                
              </form><!-- End Multi Columns Form -->
<a href="listincome">List Income</a>
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
    
