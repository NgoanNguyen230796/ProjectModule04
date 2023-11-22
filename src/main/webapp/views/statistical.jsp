<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: ngoan
  Date: 13/11/2023
  Time: 12:40 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Account</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%--    bootstrap Link--%>
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <%--    <link href="<%=request.getContextPath()%>/resources/plugins/fontawesome-free/css/all.min.css" rel="stylesheet"/>--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
          integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Tempusdominus Bootstrap 4 -->
    <link href="<%=request.getContextPath()%>/resources/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css"
          rel="stylesheet"/>
    <!-- iCheck -->
    <link href="<%=request.getContextPath()%>/resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css"
          rel="stylesheet"/>
    <!-- JQVMap -->
    <link href="<%=request.getContextPath()%>/resources/plugins/jqvmap/jqvmap.min.css" rel="stylesheet"/>
    <!-- Theme style -->
    <link href="<%=request.getContextPath()%>/resources/dist/css/adminlte.min.css" rel="stylesheet"/>
    <!-- overlayScrollbars -->
    <link href="<%=request.getContextPath()%>/resources/plugins/overlayScrollbars/css/OverlayScrollbars.min.css"
          rel="stylesheet"/>
    <!-- Daterange picker -->
    <link href="<%=request.getContextPath()%>/resources/plugins/daterangepicker/daterangepicker.css" rel="stylesheet"/>
    <!-- summernote -->
    <link href="<%=request.getContextPath()%>/resources/plugins/summernote/summernote-bs4.min.css" rel="stylesheet"/>

    <%--    <script src="~/Contten/ckeditor/ckeditor.js"></script>--%>
    <%--    <link href="~/Contten/css/css.css" rel="stylesheet" />--%>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link href="https://unpkg.com/bootstrap-table@1.21.0/dist/bootstrap-table.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link href="<%=request.getContextPath()%>/resources/css/statistical.css" rel="stylesheet"/>


</head>
<body class="dark-mode sidebar-mini layout-fixed">
<div class="wrapper">
    <!-- Preloader -->
    <%--    <div class="preloader flex-column justify-content-center align-items-center">--%>
    <%--        <img class="animation__shake" src="<%=request.getContextPath()%>/resources/dist/img/AdminLTELogo.png"--%>
    <%--             alt="AdminLTELogo" height="60"--%>
    <%--             width="60">--%>
    <%--    </div>--%>
    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
        <!-- Left navbar links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
            </li>
        </ul>
    </nav>
    <!-- /.navbar -->
    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
        <!-- Brand Logo -->
        <a href="" class="brand-link ms-4">
            <img src="/resources/dist/img/Ngoan.jpg" alt="AdminLTE Logo" class="image" style="height:50px;width:50px">
            <span class="brand-text font-weight-light ms-4">Admin</span>
        </a>
        <!-- Sidebar -->
        <div class="sidebar">
            <!-- Sidebar Menu -->
            <nav class="mt-2">
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                    data-accordion="false">
                    <!-- Add icons to the links using the .nav-icon class
                    with font-awesome or any other icon font library -->
                    <li class="nav-item">
                        <a href="<%=request.getContextPath()%>/statisticalController/statisticalData" class="nav-link">
                            <i class="nav-icon fas fa-copy"></i>
                            <p>
                                Dashboard
                            </p>
                        </a>
                    </li>
                    <!--   Category -->
                    <li class="nav-item">
                        <a href="<%=request.getContextPath()%>/categoryController/categoryGetAllData" class="nav-link">
                            <i class="nav-icon fas fa-th"></i>
                            <p>
                                Category
                            </p>
                        </a>
                    </li>
                    <!--   Product -->
                    <li class="nav-item">
                        <a href="<%=request.getContextPath()%>/productController/productGetAllData" class="nav-link">
                            <i class="nav-icon fas fa-chart-pie"></i>
                            <p>
                                Product
                            </p>
                        </a>
                    </li>
                    <!--  Bill -->
                    <li class="nav-item">
                        <a href="<%=request.getContextPath()%>/billController/billGetAllData" class="nav-link">
                            <i class="nav-icon fas fa-book"></i>
                            <p>
                                Bill
                            </p>
                        </a>
                    </li>

                    <!--  Account -->
                    <li class="nav-item">
                        <a href="<%=request.getContextPath()%>/accountController/accountGetAllData" class="nav-link">
                            &nbsp;<i class="nav-icon fa fa-user" aria-hidden="true"></i>
                            <span>Account</span>
                        </a>
                    </li>
                    <!--  Logout -->
                    <li class="nav-item">
                        <a href="<%=request.getContextPath()%>/loginController/login" class="nav-link">
                            &nbsp;<i class="nav-icon fa fa-sign-out"></i>
                            <span>Logout</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
        <!-- /.sidebar -->
    </aside>

    <div class="content-wrapper">
        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <h1 class="text-center mt-2 dashboard">Dashboard</h1>
                <div class="main">
                    <%--Statistical Account--%>
                    <div class="d-flex justify-content-around pb-5 pt-5">
                        <div class="col-12 col-sm-2 col-md-3">

                            <h1 class="text-center mt-2"><a href="<%=request.getContextPath()%>/accountController/accountGetAllData?page=1" class="nav-link">Thống kê tài khoản </a></h1>
                        </div>
                        <div class="col-12 col-sm-5 col-md-3">
                            <div class="info-box mb-3">
                                <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-users"></i></span>

                                <div class="info-box-content">
                                    <span class="info-box-text">Hoạt động</span>
                                    <span class="info-box-number">${accActive}</span>
                                </div>
                            </div>

                        </div>
                        <div class="col-12 col-sm-5 col-md-3">
                            <div class="info-box mb-3">
                                <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-users"></i></span>

                                <div class="info-box-content">
                                    <span class="info-box-text">Khóa</span>
                                    <span class="info-box-number">${accInActive}</span>
                                </div>
                            </div>

                        </div>
                    </div>
                    <%--Statistical Product--%>
                    <div class="d-flex justify-content-between pb-5 pt-5">
                        <div class="col-md-4">
                            <h1 class="text-center mt-2"><a href="<%=request.getContextPath()%>/productController/productGetAllData?page=1" class="nav-link">Thống kê sản phẩm</a></h1>
                        </div>
                        <div class="col-md-7 me-5">
                            <div class="info-box mb-3 bg-success">
                                <span class="info-box-icon"><i class="fa-solid fa-inbox"></i></span>

                                <div class="info-box-content">
                                    <span class="info-box-text">Hoạt động</span>
                                    <span class="info-box-number">${productActive}</span>
                                </div>
                                <!-- /.info-box-content -->
                            </div>
                            <div class="info-box mb-3 bg-danger">
                                <span class="info-box-icon"><i class="fa-solid fa-inbox"></i></span>

                                <div class="info-box-content">
                                    <span class="info-box-text">Chưa hoạt động</span>
                                    <span class="info-box-number">${productInActive}</span>
                                </div>
                                <!-- /.info-box-content -->
                            </div>
                        </div>

                    </div>

                    <%--Statistical Bill--%>
                    <div class="row pb-5 pt-5">
                        <div class="col-lg-12">
                            <div class="card col-12 col-sm-2 col-lg-12 w-100">
                                <div class="card-header">
                                    <h3 class="card-title fs-2">Thống kê số lượng đơn hàng</h3>
                                </div>
                                <!-- /.card-body -->
                                <div class="card-footer p-4">
                                    <ul class="nav nav-pills flex-column">
                                        <li class="nav-item">
                                            <a href="<%=request.getContextPath()%>/billController/billGetAllData?page=1" class="nav-link fs-5">
                                                Bị Hủy
                                                <span class="float-right text-danger">
                       <i class="fa-sharp fa-solid fa-arrow-right"></i>
                        ${countByBillStatusCancel}</span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="<%=request.getContextPath()%>/billController/billGetAllData?page=1" class="nav-link fs-5">
                                                Đang chờ
                                                <span class="float-right text-warning">
                       <i class="fa-sharp fa-solid fa-arrow-right"></i> ${countByBillStatusWait}
                      </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="<%=request.getContextPath()%>/billController/billGetAllData?page=1" class="nav-link fs-5">
                                                Đã được duyệt
                                                <span class="float-right text-success">
                       <i class="fa-sharp fa-solid fa-arrow-right"></i> ${countByBillStatusApprove}
                      </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="<%=request.getContextPath()%>/billController/billGetAllData?page=1" class="nav-link fs-5">
                                                Đang giao hàng
                                                <span class="float-right text-primary">
                      <i class="fa-sharp fa-solid fa-arrow-right"></i>  ${countByBillStatusDelivery}
                      </span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="<%=request.getContextPath()%>/billController/billGetAllData?page=1" class="nav-link fs-5">
                                                Đã nhận hàng
                                                <span class="float-right text-info">
                       <i class="fa-sharp fa-solid fa-arrow-right"></i> ${countByBillStatusReceived}
                      </span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <!-- /.footer -->
                            </div>
                        </div>
                    </div>

                    <div class="row pb-5 pt-5">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-header border-0">
                                    <h3 class="card-title">Thống kê doanh thu</h3>
                                    <div class="card-tools">
                                        <a href="#" class="btn btn-tool btn-sm">
                                            <i class="fas fa-download"></i>
                                        </a>
                                        <a href="#" class="btn btn-tool btn-sm">
                                            <i class="fas fa-bars"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="card-body table-responsive p-0">
                                    <table class="table table-striped table-valign-middle">
                                        <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Ngày-Tháng-Năm</th>
                                            <th>Doanh thu</th>

                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${listStatisticalMoneyAndDate}" var="statistical">
                                            <tr>
                                                <td>${(statistical.id)+1}</td>

                                                <td> <fmt:formatDate pattern="dd/MM/yyyy"
                                                                     value="${statistical.dateTotal}"></fmt:formatDate></td>
                                                <td>${statistical.total}</td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>
    </div>
</div>

<!-- /.content -->
</div>

<!-- Control Sidebar -->
<aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
</aside>
<!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->
<!-- jQuery -->

<script src="<%=request.getContextPath()%>/resources/plugins/jquery/jquery.min.js" type="text/javascript"></script>

<script src="https://unpkg.com/bootstrap-table@1.21.0/dist/bootstrap-table.min.js" type="text/javascript"></script>
<!-- jQuery UI 1.11.4 -->
<script src="<%=request.getContextPath()%>/resources/plugins/jquery-ui/jquery-ui.min.js"
        type="text/javascript"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<!-- Bootstrap 4 -->
<script src="<%=request.getContextPath()%>/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"
        type="text/javascript"></script>
<!-- ChartJS -->
<script src="<%=request.getContextPath()%>/resources/plugins/chart.js/Chart.min.js" type="text/javascript"></script>
<!-- Sparkline -->
<script src="<%=request.getContextPath()%>/resources/plugins/sparklines/sparkline.js" type="text/javascript"></script>
<!-- JQVMap -->
<script src="<%=request.getContextPath()%>/resources/plugins/jqvmap/jquery.vmap.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/plugins/jqvmap/maps/jquery.vmap.usa.js"
        type="text/javascript"></script>
<!-- jQuery Knob Chart -->
<script src="<%=request.getContextPath()%>/resources/plugins/jqvmap/maps/jquery.vmap.usa.js"
        type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/plugins/jquery-knob/jquery.knob.min.js"
        type="text/javascript"></script>
<!-- daterangepicker -->
<script src="<%=request.getContextPath()%>/resources/plugins/moment/moment.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/plugins/daterangepicker/daterangepicker.js"
        type="text/javascript"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="<%=request.getContextPath()%>/resources/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"
        type="text/javascript"></script>
<!-- Summernote -->
<script src="<%=request.getContextPath()%>/resources/plugins/summernote/summernote-bs4.min.js"
        type="text/javascript"></script>
<!-- overlayScrollbars -->
<script src="<%=request.getContextPath()%>/resources/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"
        type="text/javascript"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath()%>/resources/dist/js/adminlte.js" type="text/javascript"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
<!-- ChartJS -->
<script src="<%=request.getContextPath()%>/resources/plugins/chart.js/Chart.min.js"></script>
<!-- jQuery Knob Chart -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/canvasjs/1.7.0/canvasjs.min.js"
        integrity="sha512-FJ2OYvUIXUqCcPf1stu+oTBlhn54W0UisZB/TNrZaVMHHhYvLBV9jMbvJYtvDe5x/WVaoXZ6KB+Uqe5hT2vlyA=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<!-- AdminLTE for demo purposes -->
<%--<script src="<%=request.getContextPath()%>/resources/dist/js/demo.js" type="text/javascript"></script>--%>

<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script>
    $('table .lock').click(function () {
        console.log('Vào update dữ liệu');
        let getId = $(this).parent().find('#accId').val();
        $.ajax({
            type: 'GET',
            url: '<%=request.getContextPath()%>/accountController/initUpdate?accId=' + getId,
            success: function (accountEdit) {
                console.log("Ok");
                try {
                    $('#accIdUpdate').val(accountEdit.accId);
                    $('#emailUpdate').val(accountEdit.email);
                    $('#passwordUpdate').val(accountEdit.password);

                } catch (e) {
                    console.error("Error parsing JSON response:", e);
                }

            }
        })
    });
    $('table .unLock').click(function () {
        console.log('Vào update dữ liệu');
        let getId = $(this).parent().find('#accId').val();
        $.ajax({
            type: 'GET',
            url: '<%=request.getContextPath()%>/accountController/initUpdate?accId=' + getId,
            success: function (accountEdit) {
                console.log("Ok");
                try {
                    $('#accIdUpdateUnLock').val(accountEdit.accId);
                    $('#emailUpdateUnLock').val(accountEdit.email);
                    $('#passwordUpdateUnLock').val(accountEdit.password);

                } catch (e) {
                    console.error("Error parsing JSON response:", e);
                }

            }
        })
    });
    $('table .update').click(function () {
        console.log('Vào update dữ liệu');
        let getId = $(this).parent().find('#accId').val();
        $.ajax({
            type: 'GET',
            url: '<%=request.getContextPath()%>/accountController/initUpdate?accId=' + getId,
            success: function (accountUpdate) {
                console.log("Ok");
                try {
                    $('#accIdUpdateData').val(accountUpdate.accId);
                    $('#emailUpdateData').val(accountUpdate.email);
                    $('#passwordUpdateData').val(accountUpdate.password);

                } catch (e) {
                    console.error("Error parsing JSON response:", e);
                }

            }
        })
    });
</script>

<%--<script src="<%=request.getContextPath()%>/resources/js/account.js" type="text/javascript"></script>--%>

</body>
</html>
