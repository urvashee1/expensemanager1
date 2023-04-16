<%@page import="com.growinted.bean.StatusBean"%>
<%@page import="com.growinted.bean.AccountTypeBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Income</title>
<jsp:include page="AllCss.jsp"></jsp:include>
<style type="text/css">
.error {
	color: red;
}
</style>
</head>
<body>
<jsp:include page="UserHeader.jsp"></jsp:include>
<jsp:include page="UserSideBar.jsp"></jsp:include>
<%
List<AccountTypeBean> list1=(List<AccountTypeBean>) request.getAttribute("list1");
%>
<%
List<StatusBean> list2=(List<StatusBean>) request.getAttribute("list2");
%>
<main id="main" class="main">

    <div class="pagetitle">
      <h1>Income</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="userdashboard">Dashboard</a></li>
          <li class="breadcrumb-item">Income</li>
          <li class="breadcrumb-item active">New</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    <section class="section">
      <div class="row">
       <div class="col-lg-3"></div>
        <div class="col-lg-6">
        <div class="card">
            <div class="card-body">
              <h5 class="card-title">New Income</h5>

              <!-- Multi Columns Form -->
              <form class="row g-3" action="saveincome" method="post" id="myform">
                <div class="col-12">
                  <label for="inputName5" class="form-label">Title</label>
                  <input type="text" class="form-control" id="title" name="title">
                  <span id="titleError" class="error"></span>
                </div>
                <div class="col-12">
                  <label for="inputState" class="form-label">Account Type</label>
                  <select id="accountTypeId" class="form-select" name="accountTypeId">
                  <option value="-1">Select Account Type</option>
                  <%
                for(AccountTypeBean cb : list1){
                %>
                    <option value="<%=cb.getAccountTypeId()%>"><%=cb.getAccountType()%></option><% } %>
                  
                  </select>
                  <span id="accountTypeIdError" class="error"></span>
                  </div>
                    <!-- <option selected>Choose...</option>
                    <option>...</option>-->
              
                <div class="col-12">
                  <label for="inputState" class="form-label">Status</label>
                  <select id="statusId" class="form-select" name="statusId">
                  <option value="-1">Select Status</option>
                  <%
                for(StatusBean cb : list2){
                %>
                    <option value="<%=cb.getStatusId()%>"><%=cb.getStatus()%></option><% } %>
                  
                  </select>
                  <span id="statusIdError" class="error"></span>
                  </div>
                    <!-- <option selected>Choose...</option>
                    <option>...</option>-->
          
                  <div class="col-12">
                  <label for="inputName5" class="form-label">Amount</label>
                  <input type="text" class="form-control" id="amount" name="amount">
                  <span id="amountError" class="error"></span>
                </div>
                 <div class="col-12">
                  <label for="inputName5" class="form-label">Date</label>
                  <input type="date" class="form-control" id="date" name="date">
                  <span id="dateError" class="error"></span>
                  </div>
                 <div class="col-12">
                  <label for="inputName5" class="form-label">Description</label>
                  <textarea class="form-control" id="description" name="description"></textarea>
                  <span id="descriptionError" class="error"></span>
                </div>
                <div class="text-center">
                  <input type="button" class="btn btn-primary" value="Save Income" onclick="validation()"/>
                  <a type="button" href="listincomeuser" class="btn btn-secondary">Cancel</a>
                </div>
                
              </form><!-- End Multi Columns Form -->
<a href="listincomeuser">List Income</a>
            </div>
          </div>
</div>
        </div>
        </section>
        </main>
<jsp:include page="AdminFooter.jsp"></jsp:include>
<jsp:include page="AllJs.jsp"></jsp:include>

<script type="text/javascript">
		function validation() {
			isError = false;
			title = document.getElementById("title");
			titleError = document.getElementById("titleError");
			titleRegex = /^[a-z A-Z]+$/;
			
			amount = document.getElementById("amount");
			amountError = document.getElementById("amountError");
			amountRegex = /^[0-9]+$/;
			
			description = document.getElementById("description");
			descriptionError = document.getElementById("descriptionError");
			descriptionRegex = /^[a-z A-Z-,]+$/;
			
			if (title.value == '') {
				titleError.innerHTML = "Please fill out this field.";
				isError = true;
			} else {
				if (titleRegex.test(title.value) == false) {
					titleError.innerHTML = "Please Enter Valid Title";
					isError = true;
				} else {
					titleError.innerHTML = "";

				}
			}
			
			accountTypeId = document.getElementById("accountTypeId");
			accountTypeIdError = document.getElementById("accountTypeIdError");
			if(accountTypeId.value=="-1"){
				accountTypeIdError.innerHTML="Please fill out this field.";
			    isError=true;
			}
			
			statusId = document.getElementById("statusId");
			statusIdError = document.getElementById("statusIdError");
			if(statusId.value=="-1"){
				statusIdError.innerHTML="Please fill out this field.";
			    isError=true;
			}
			
			if (amount.value == '') {
				amountError.innerHTML = "Please fill out this field.";
				isError = true;
			} else {
				if (amountRegex.test(amount.value) == false) {
					mountError.innerHTML = "Please Enter Valid Amount";
					isError = true;
				} else {
					amountError.innerHTML = "";

				}
			}
			
			if (date.value == '') {
				dateError.innerHTML = "Please fill out this field.";
				isError = true;
			}
			
			if (description.value == '') {
				descriptionError.innerHTML = "Please fill out this field.";
				isError = true;
			} else {
				if (descriptionRegex.test(description.value) == false) {
					descriptionError.innerHTML = "Please Enter Valid Description";
					isError = true;
				} else {
					descriptionError.innerHTML = "";

				}
			}
			if (isError == false) {
				myform = document.getElementById("myform");
				myform.submit();
			}
		}
</script>

</body>
</html>
    