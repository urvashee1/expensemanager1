<%@page import="java.util.List"%>
<%@page import="com.growinted.bean.ExpenseChartBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Dashboard</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>


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
<jsp:include page="UserHeader.jsp"></jsp:include>
<jsp:include page="UserSideBar.jsp"></jsp:include>
   
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
            <!-- <div class="col-xxl-3 col-md-6">
              <div class="card info-card sales-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Transaction <span>| Today</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-cart"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${totalTranscation}</h6>
                      <span class="text-success small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">increase</span>

                    </div>
                  </div>
                </div>

              </div>
            </div>--><!-- End Sales Card -->

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
                  <h5 class="card-title">This Month <span>| Expense</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${totalExpensess==null?0:totalExpensess}</h6>
                      <!--<span class="text-success small pt-1 fw-bold">8%</span> <span class="text-muted small pt-2 ps-1">increase</span>-->

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
                  <h5 class="card-title">This Month <span>| Income</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${totalIncomess==null?0:totalIncomess}</h6>
                    <!--<span class="text-success small pt-1 fw-bold">8%</span> <span class="text-muted small pt-2 ps-1">increase</span>-->

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Revenue Card -->
            
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
                  <h5 class="card-title">Toady <span>| Expense</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${totalExpenses==null?0:totalExpenses}</h6>
                    <!--<span class="text-success small pt-1 fw-bold">8%</span> <span class="text-muted small pt-2 ps-1">increase</span>-->

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Revenue Card -->
            
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
                  <h5 class="card-title">Today <span>| Income</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${totalIncomes==null?0:totalIncomes}</h6>
                    <!--<span class="text-success small pt-1 fw-bold">8%</span> <span class="text-muted small pt-2 ps-1">increase</span>-->

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Revenue Card -->
            
            
            
            <!-- Customers Card -->
            <!-- <div class="col-xxl-3 col-xl-6">

              <div class="card info-card customers-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Users <span>| This Year</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${totalUsers}</h6>
                      <span class="text-danger small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">decrease</span>

                    </div>
                  </div>

                </div>
              </div>

            </div>--><!-- End Customers Card -->
            <div class="row">
            <div class="col-lg-8">
       <div class="card">
            <div class="card-body">
        <h5 class="card-title">Expense <span>| Category</span></h5>
                  <%
                 List<ExpenseChartBean> linechartData=(List<ExpenseChartBean>)request.getAttribute("linechartData");
                 %>
        <canvas id="lineChart" style="max-height: 400px;"></canvas>
              <script>
                document.addEventListener("DOMContentLoaded", () => {
                  new Chart(document.querySelector('#lineChart'), {
                    type: 'line',
                    data: {
                      labels: [<%for(ExpenseChartBean e: linechartData){%>
                 	 '<%=e.getCategoryName()%>',
                 	 <%}%> 
                 	 ],
                      datasets: [{
                        label: '# of Amount',
                        data: [<%for(ExpenseChartBean e: linechartData){%>
                    	<%=e.getAmount()%>,
                    	<%}%>
                    	],
                        fill: false,
                        borderColor: 'rgb(75, 192, 192)',
                        tension: 0.1
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
                });
              </script>
              <!-- End Line CHart -->

        </div>
        
            </div>
            </div>
            
            <div class="col-lg-4">
          
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Expense <span>| Vendor</span></h5>
              <%
                 List<ExpenseChartBean> piechartData=(List<ExpenseChartBean>)request.getAttribute("piechartData");
                 %>

              <!-- Doughnut Chart -->
              <canvas id="expenseChart" style="max-height: 400px;"></canvas>
              <script>
                document.addEventListener("DOMContentLoaded", () => {
                  new Chart(document.querySelector('#expenseChart'), {
                    type: 'doughnut',
                    data: {
                      labels: [
                    	  <%for(ExpenseChartBean e: piechartData){%>
                       	 '<%=e.getVendorName()%>',
                       	 <%}%>
                      ],
                      datasets: [{
                        label: '# of Amount',
                        data: [
                        <%for(ExpenseChartBean e: piechartData){%>
        	        	<%=e.getAmount()%>,
        	        	<%}%>
        	        	],
                        backgroundColor: [
                          'rgb(255, 99, 132)',
                          'rgb(54, 162, 235)',
                          'rgb(255, 205, 86)',
                          'rgb(245, 205, 86)',
                          'rgb(230, 205, 86)'
                        ],
                        hoverOffset: 4
                      }]
                    }
                  });
                });
              </script>
              <!-- End Doughnut CHart -->

            </div>
          </div>
          </div>
          </div>
        <!-- linechart -->
            <!-- Reports -->
            <!--  <div class="col-12">
              <!--<div class="card">

                <div class="filter">
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

                <!--<div class="card-body">
                  <h5 class="card-title">Reports <span>/Today</span></h5>-->

                  <!-- Line Chart -->
                  <!--<div id="reportsChart"></div>-->

                  <!-- <script>
                  <!--  document.addEventListener("DOMContentLoaded", () => {
                      new ApexCharts(document.querySelector("#reportsChart"), {
                        series: [{
                          name: 'Sales',
                          data: [31, 40, 28, 51, 42, 82, 56],
                        }, {
                          name: 'Revenue',
                          data: [11, 32, 45, 32, 34, 52, 41]
                        }, {
                          name: 'Customers',
                          data: [15, 11, 32, 18, 9, 24, 11]
                        }],
                        chart: {
                          height: 350,
                          type: 'area',
                          toolbar: {
                            show: false
                          },
                        },
                        markers: {
                          size: 4
                        },
                        colors: ['#4154f1', '#2eca6a', '#ff771d'],
                        fill: {
                          type: "gradient",
                          gradient: {
                            shadeIntensity: 1,
                            opacityFrom: 0.3,
                            opacityTo: 0.4,
                            stops: [0, 90, 100]
                          }
                        },
                        dataLabels: {
                          enabled: false
                        },
                        stroke: {
                          curve: 'smooth',
                          width: 2
                        },
                        xaxis: {
                          type: 'datetime',
                          categories: ["2018-09-19T00:00:00.000Z", "2018-09-19T01:30:00.000Z", "2018-09-19T02:30:00.000Z", "2018-09-19T03:30:00.000Z", "2018-09-19T04:30:00.000Z", "2018-09-19T05:30:00.000Z", "2018-09-19T06:30:00.000Z"]
                        },
                        tooltip: {
                          x: {
                            format: 'dd/MM/yy HH:mm'
                          },
                        }
                      }).render();
                    });
                  </script>-->
                  <!-- End Line Chart -->

                <!-- </div>-->

            <!--   </div>
            </div>--><!-- End Reports -->
    
          <!-- </div>
        </div>--><!-- End Left side columns -->

        <!-- Right side columns -->
       <!-- <div class="col-lg-4">-->

          <!-- Recent Activity -->
          <!--<div class="card">
            <div class="filter">
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

                    
          <!-- Website Traffic -->
         <!-- <div class="card">
            <div class="filter">
              <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
              <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                <li class="dropdown-header text-start">
                  <h6>Filter</h6>
                </li>

                <li><a class="dropdown-item" href="#">Today</a></li>
                <li><a class="dropdown-item" href="#">This Month</a></li>
                <li><a class="dropdown-item" href="#">This Year</a></li>
              </ul>
            </div>

            <div class="card-body pb-0">
              <h5 class="card-title">Website Traffic <span>| Today</span></h5>

              <div id="trafficChart" style="min-height: 400px;" class="echart"></div>

              <script>
                document.addEventListener("DOMContentLoaded", () => {
                  echarts.init(document.querySelector("#trafficChart")).setOption({
                    tooltip: {
                      trigger: 'item'
                    },
                    legend: {
                      top: '5%',
                      left: 'center'
                    },
                    series: [{
                      name: 'Access From',
                      type: 'pie',
                      radius: ['40%', '70%'],
                      avoidLabelOverlap: false,
                      label: {
                        show: false,
                        position: 'center'
                      },
                      emphasis: {
                        label: {
                          show: true,
                          fontSize: '18',
                          fontWeight: 'bold'
                        }
                      },
                      labelLine: {
                        show: false
                      },
                      data: [{
                          value: 1048,
                          name: 'Search Engine'
                        },
                        {
                          value: 735,
                          name: 'Direct'
                        },
                        {
                          value: 580,
                          name: 'Email'
                        },
                        {
                          value: 484,
                          name: 'Union Ads'
                        },
                        {
                          value: 300,
                          name: 'Video Ads'
                        }
                      ]
                    }]
                  });
                });
              </script>

            </div>
          </div>--><!-- End Website Traffic -->
</div>
          </div>
      </div>
    </section>

  </main><!-- End #main -->
  <jsp:include page="AdminFooter.jsp"></jsp:include>
 <jsp:include page="AllJs.jsp"></jsp:include>
</body>

</html>