<%@page import="java.util.List"%>
<%@page import="com.growinted.bean.ExpenseChartBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
<jsp:include page="AllCss.jsp"></jsp:include>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<!--<h2>Admin Dashboard</h2>
<a href="newcategory">Add New Category</a> 
<br><br>
<a href="newsubcategory">Add New Sub Category</a> 
<br><br>
<a href="newstatus">Add New Status</a> 
<br><br>
<a href="newvendor">Add New Vendor</a> 
<br><br>
<a href="newaccounttype">Add New Account Type</a> 
<br><br>
<a href="newexpense">Add New Expense</a> 
<br><br>
<a href="newincome">Add New Income</a> 
<br><br>
<a href="logout">Logout</a> 
<br><br>
<a href="listcategories">List Category</a>
</body>
</html>-->


 
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<jsp:include page="AdminSideBar.jsp"></jsp:include>
   
  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <!--<nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">Dashboard</li>
        </ol>
      </nav>-->
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-12">
          <div class="row">

            <!-- Sales Card -->
            <div class="col-xxl-3 col-md-6">
              <div class="card info-card sales-card">

                <!--<div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>-->

                <div class="card-body">
                  <h5 class="card-title">Transaction <!--<span>| This Month</span>--></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-cart"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${totalTranscation+totalTranscation1}</h6>
                      <!-- <span class="text-success small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">increase</span>-->
<!--<p id="user">${ratioUserMonthly==null?0:ratioUerMonthly}</p>-->
                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Sales Card -->

            <!-- Revenue Card -->
            <div class="col-xxl-3 col-md-6">
              <div class="card info-card revenue-card">

               <!-- <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>-->

                <div class="card-body">
                  <h5 class="card-title">Expense <!--<span>| This Month</span>--></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${totalExpense==null?0:totalExpense}</h6>
                     <!--<span class="text-success small pt-1 fw-bold">8%</span> <span class="text-muted small pt-2 ps-1">increase</span>-->
<!--<p id="user">${ratioExpenseMonthly==null?0:ratioExpenseMonthly}</p>-->
                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Revenue Card -->
            
            <!-- Revenue Card -->
            <div class="col-xxl-3 col-md-6">
              <div class="card info-card revenue-card">

                <!--<div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>-->

                <div class="card-body">
                  <h5 class="card-title">Income <!--<span>| This Month</span>--></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${totalincome==null?0:totalincome}</h6>
                      <!--<span class="text-success small pt-1 fw-bold">8%</span> <span class="text-muted small pt-2 ps-1">increase</span>-->
<!--<p id="user">${ratioExpenseDaily==null?0:ratioExpenseDaily}</p>-->
                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Revenue Card -->
            
            <!-- Customers Card -->
            <div class="col-xxl-3 col-xl-6">

              <div class="card info-card customers-card">

                <!-- <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>-->

                <div class="card-body">
                  <h5 class="card-title">Users <!--<span>| This Month</span>--></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${totalUsers}</h6>
                      <!--<span class="text-danger small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">decrease</span>-->
<!--<p id="user">${ratioTranscationMonthly==null?0:ratioTranscationMonthly}</p>-->
                    </div>
                  </div>

                </div>
              </div>

            </div><!-- End Customers Card -->

            <!-- Reports -->
            <div class="col-12">
              <div class="card">

                <!--<div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>-->

                <div class="card-body">
                  <h5 class="card-title">Expense <span>| Monthly</span></h5>
                 <%
                 List<ExpenseChartBean> chartData=(List<ExpenseChartBean>)request.getAttribute("chartData");
                 %>
                  <!-- Line Chart -->
                  <div>
                    <canvas id="expensechart"></canvas>
                  </div>
                  <script>
                    const ctx = document.getElementById('expensechart');

                 new Chart(
                		 ctx, 
                		 {
                 type: 'bar',
                data: {
             labels: [
            	 <%for(ExpenseChartBean e: chartData){%>
            	 '<%=e.getMonth()%>',
            	 <%}%>],
      datasets: [{
        label: '# of Amount',
        data: [
        	<%for(ExpenseChartBean e: chartData){%>
        	<%=e.getAmount()%>,
        	<%}%>
        ],
        borderWidth: 1
      }]
    },
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  });
</script>
                                    <!-- End Line Chart -->

                </div>

              </div>
            </div><!-- End Reports -->
         
          </div>
          </div>
      </div>
    </section>

  </main><!-- End #main -->
  <jsp:include page="AdminFooter.jsp"></jsp:include>
 <jsp:include page="AllJs.jsp"></jsp:include>
</body>

</html>