<%-- 
    Document   : admin2
    Created on : 2 thg 7, 2024, 19:04:38
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>SB Admin 2 - Dashboard</title>

        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="css/sb-admin-2.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    </head>

    <body id="page-top">
        <jsp:include page="adminTopbar.jsp" />





        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <div class="d-sm-flex align-items-center justify-content-between mb-4">
                <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                        class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
            </div>

            <!-- Content Row -->
            <div class="row">

                <!-- Earnings (Monthly) Card Example -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-primary shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                        Total Download</div>


                                    <div class="h5 mb-0 font-weight-bold text-gray-800">

                                        <c:set var="totaldown" value="0" />
                                        <c:forEach var="number" items="${requestScope.apps}">
                                            <c:set var="totaldown" value="${totaldown + number.downloadCount}" />
                                        </c:forEach>
                                        <fmt:formatNumber value="${totaldown}" type="number" maxFractionDigits="2" />
                                        Turn


                                    </div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Earnings (Monthly) Card Example -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-success shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                        Earnings (Annual)</div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">
                                        <c:set var="total" value="0" />
                                        <c:forEach var="number" items="${requestScope.apps}">
                                            <c:set var="total" value="${total + number.totalRevenue}" />
                                        </c:forEach>
                                        $<fmt:formatNumber value="${total}" type="number" maxFractionDigits="2" />

                                    </div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Earnings (Monthly) Card Example -->
                

                <!-- Pending Requests Card Example -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-info shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                                        Number of User</div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">

                                        <c:set var="count" value="0" />
                                        <c:forEach var="number" items="${requestScope.users}" varStatus="status">
                                            <c:set var="count" value="${status.count}" />
                                        </c:forEach>
                                        ${count} User

                                    </div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-comments fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                                        
                                        
            </div>

            <!-- Content Row -->

            <div class="row">

                <!-- Area Chart -->
                <!-- Bar Chart -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Bar Chart</h6>
                    </div>
                    <div  style=" width: 1700px" class="card-body">
                        <div class="chart-bar">
                            <canvas id="myBarChart"></canvas>
                        </div>
                        <hr>
                        
                    </div>
                </div>

            </div>

            

        <!-- Content Row -->
        <div class="row">

            <!-- Content Column -->
            <div class="col-lg-6 mb-4">

                <!-- Project Card Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">% TOTAL salary</h6>
                    </div>
                    <div class="card-body">
                        
                        <c:forEach var="a" items="${requestScope.appsort}">
                            
                        <h4 class="small font-weight-bold">${a.appName}<span
                                class="float-right"><fmt:formatNumber value="${(a.totalRevenue/total)*100}" type="number" maxFractionDigits="0" />&nbsp;%</span></h4>
                        <div class="progress mb-4">
                            <div class="progress-bar bg-info" role="progressbar" style="width: ${(a.totalRevenue/total)*100}%"
                                 aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                        </c:forEach>
                        
                    </div>
                </div>

               

               

            </div>
            <div class="col-lg-6 mb-4">

                <!-- Project Card Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">% TOTAL download</h6>
                    </div>
                    <div class="card-body">
                        
                        <c:forEach var="a" items="${requestScope.appsortD}">
                            
                        <h4 class="small font-weight-bold">${a.appName}<span
                                class="float-right"><fmt:formatNumber value="${(a.totalRevenue/total)*100}" type="number" maxFractionDigits="0" />&nbsp;%</span></h4>
                        <div class="progress mb-4">
                            <div class="progress-bar bg-info" role="progressbar" style="width: ${(a.totalRevenue/total)*100}%"
                                 aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                        </c:forEach>
                        
                    </div>
                </div>

               

               

            </div>
        </div>

    </div>
    <!-- /.container-fluid -->

</div>
<!-- End of Main Content -->


</div>
<!-- End of Content Wrapper -->


<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<script src="js/demo/chart-area-demo.js"></script>
<jsp:include page="adminFooter.jsp" />
<script>
// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

var ctx = document.getElementById("myPieChart");

var apps = [
<c:forEach var="app" items="${requestScope.apps}">
        {
            name: "${app.appName}",
            downloadCount: ${app.downloadCount}
        },
    </c:forEach>
];

var totalDownloadCount = ${totalDownloadCount};
var labels = apps.map(app => app.name);
var data = apps.map(app => (app.downloadCount / totalDownloadCount) * 100);
var backgroundColor = ['#4e73df', '#1cc88a', '#36b9cc', '#f6c23e', '#e74a3b', '#858796'];
var hoverBackgroundColor = ['#2e59d9', '#17a673', '#2c9faf', '#d1a638', '#c9302c', '#666666'];

var myPieChart = new Chart(ctx, {
  type: 'doughnut',
  data: {
    labels: labels,
    datasets: [{
      data: data,
      backgroundColor: backgroundColor,
      hoverBackgroundColor: hoverBackgroundColor,
      hoverBorderColor: "rgba(234, 236, 244, 1)"
    }]
  },
  options: {
    maintainAspectRatio: false,
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10
    },
    legend: {
      display: false
    },
    cutoutPercentage: 80
  }
});
</script>
<script>
    var ctx = document.getElementById("myBarChart").getContext('2d');
    var labels = [];
    var totalRevenueData = [];
    var downloadCountData = [];

    <c:forEach var="app" items="${apps}">
    labels.push("${app.appName}");
    totalRevenueData.push(${app.totalRevenue});
    downloadCountData.push(${app.downloadCount});
    </c:forEach>

    var myBarChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: labels,
            datasets: [{
                    label: "Total Revenue",
                    backgroundColor: "#4e73df",
                    hoverBackgroundColor: "#2e59d9",
                    borderColor: "#4e73df",
                    yAxisID: 'revenue-axis',
                    data: totalRevenueData
                },
                {
                    label: "Download Count",
                    backgroundColor: "#1cc88a",
                    hoverBackgroundColor: "#17a673",
                    borderColor: "#1cc88a",
                    yAxisID: 'download-axis',
                    data: downloadCountData
                }]
        },
        options: {
            maintainAspectRatio: false,
            layout: {
                padding: {
                    left: 10,
                    right: 25,
                    top: 25,
                    bottom: 0
                }
            },
            scales: {
                xAxes: [{
                        gridLines: {
                            display: false,
                            drawBorder: false
                        },
                        ticks: {
                            maxTicksLimit: 6
                        },
                        maxBarThickness: 25,
                    }],
                yAxes: [{
                        id: 'revenue-axis',
                        position: 'left',
                        ticks: {
                            beginAtZero: true,
                            callback: function (value, index, values) {
                                return '$' + number_format(value);
                            }
                        },
                        gridLines: {
                            color: "rgb(234, 236, 244)",
                            zeroLineColor: "rgb(234, 236, 244)",
                            drawBorder: false,
                            borderDash: [2],
                            zeroLineBorderDash: [2]
                        }
                    },
                    {
                        id: 'download-axis',
                        position: 'right',
                        ticks: {
                            beginAtZero: true,
                            callback: function (value, index, values) {
                                return number_format(value);
                            }
                        },
                        gridLines: {
                            display: false
                        }
                    }]
            },
            legend: {
                display: true
            },
            tooltips: {
                titleMarginBottom: 10,
                titleFontColor: '#6e707e',
                titleFontSize: 14,
                backgroundColor: "rgb(255,255,255)",
                bodyFontColor: "#858796",
                borderColor: '#dddfeb',
                borderWidth: 1,
                xPadding: 15,
                yPadding: 15,
                displayColors: false,
                caretPadding: 10,
                callbacks: {
                    label: function (tooltipItem, chart) {
                        var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
                        if (datasetLabel === "Total Revenue") {
                            return datasetLabel + ': $' + number_format(tooltipItem.yLabel);
                        } else {
                            return datasetLabel + ': ' + number_format(tooltipItem.yLabel);
                        }
                    }
                }
            }
        }
    });
</script>

</body>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        setInterval(function () {
            // Thay đổi dữ liệu của biểu đồ
            myLineChart.data.datasets[0].data = [20000, 25000, 18000, 30000, 22000, 28000, 23000, 32000, 27000, 35000, 30000, 40000];
            // Cập nhật biểu đồ
            myLineChart.update();
        }, 5000); // Cập nhật sau mỗi 5 giây
    });

</script>

</html>