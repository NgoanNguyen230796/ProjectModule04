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
    <title>Bill</title>
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
    <link href="<%=request.getContextPath()%>/resources/css/bill.css" rel="stylesheet"/>


</head>
<body class="hold-transition sidebar-mini layout-fixed">
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
        <!-- Right navbar links -->
        <ul class="navbar-nav ml-auto">
            <!-- Navbar Search -->
            <li class="nav-item">
                <a class="nav-link" data-widget="navbar-search" href="#" role="button">
                    <i class="fas fa-search"></i>
                </a>
                <div class="navbar-search-block">
                    <form class="form-inline">
                        <div class="input-group input-group-sm">
                            <input class="form-control form-control-navbar" type="search" placeholder="Search"
                                   aria-label="Search">
                            <div class="input-group-append">
                                <button class="btn btn-navbar" type="submit">
                                    <i class="fas fa-search"></i>
                                </button>
                                <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                                    <i class="fas fa-times"></i>
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
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
                    <!--   product -->
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
                <h1></h1>
                <h1 class="text-center mt-2">Bill</h1>
                <div class="main">
                    <div class="d-flex justify-content-center">
                        <div class="col-4 mt-4">
                            <form class="d-flex"
                                  action="<%=request.getContextPath()%>/billController/billGetAllData"
                                  method="get">
                                <input class="form-control me-2" type="text" placeholder="Input Bill Id"
                                       id="billIdSearch"
                                       name="billIdSearch" value="${billIdDefault}">
                                <button class="btn btn-outline-success" type="submit">Search</button>
                            </form>
                        </div>
                        <div class="col-2 ms-5">
                            <div>Sort By Created</div>
                            <select class="form-select" aria-label="Default select example" id="directionBill"
                                    name="direction" onchange="changeDirectionBill()">
                                <option value="Default" ${direction.equals("ASC") && sortBy.equals("billId")?'selected':''}>
                                    Default
                                </option>
                                <option value="ASC" ${direction.equals("ASC") && sortBy.equals("created")?'selected':''}>
                                    Ascending
                                </option>
                                <option value="DESC" ${direction.equals("DESC") && sortBy.equals("created") ?'selected':''}>
                                    Descending
                                </option>
                            </select>
                        </div>
                    </div>

                    <div class="d-flex justify-content-left">
                        <div class="createDataButton">
                            <%--            <a type="button" class="btn btn-success" href="<%=request.getContextPath()%>/productController/initCreate">Create New Product</a>--%>
                            <a type="button" class="btn btn-outline-success mb-3" data-bs-toggle="modal"
                               href="#createData">Create
                                New
                                Bill</a>
                        </div>
                    </div>
                    <table class="table table-bordered table-hover text-center">
                        <thead>
                        <tr>
                            <th>Bill ID</th>
                            <th>Email</th>
                            <th>Created</th>
                            <th>Bill Status</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${listBill}" var="bill">
                            <tr>
                                <td>${bill.billId}</td>
                                <td>${bill.account.email}</td>
                                <td><fmt:formatDate pattern="dd/MM/yyyy"
                                                    value="${bill.created}"></fmt:formatDate></td>
                                <td style="display: block;text-align: center;">
                                    <button type="button"
                                            class="btn ${bill.billStatus==1?'btn-warning':bill.billStatus==2?'btn-success':
                                            bill.billStatus==3?'btn-primary':bill.billStatus==4?'btn-info':'btn-danger'}
                                             btnStatusSet">${bill.billStatus==1?"Đang chờ":bill.billStatus==2?"Đã được duyệt":bill.billStatus==3?
                                            "Đang giao hàng":bill.billStatus==4?"Đã nhận hàng":"Hủy"}</button>
                                </td>
                                <td>
                                    <a class="btn btn-outline-warning show" id="isCheck" data-bs-toggle="modal"
                                       href="#detailForm"><i
                                            class="fa-sharp fa-solid fa-file-invoice-dollar"></i></a>
                                    <a class="btn btn-outline-danger show"
                                       href="<%=request.getContextPath()%>/billDetailController/billDetail?billId=${bill.billId}"><i
                                            class="fa-solid fa-tv"></i></a>
                                    <a class="btn btn-outline-warning update" data-bs-toggle="modal" href="#updateData"><i
                                            class="fa-solid fa-pen-to-square"></i></a>
<%--                                    <a class="btn btn-outline-danger cancel" data-bs-toggle="modal"--%>
<%--                                       href="#cancel"><i class="fa-solid fa-xmark"></i></a>--%>
                                    <a class="btn btn-outline-danger cancel" data-bs-toggle="modal"
                                       href="#cancelData"><i class="fa-solid fa-xmark"></i></a>
                                    <input type="hidden" id="biId" value="${bill.billId}">
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div>
                        <nav aria-label="...">
                            <ul class="pagination">
                                <li class="page-item ${currentPage <= 1 ? 'disabled' : ''}">
                                    <c:choose>
                                        <c:when test="${currentPage <= 1}">
                                            <a class="page-link"
                                               href="<%=request.getContextPath()%>/billController/billGetAllData?page=${currentPage}"
                                               tabindex="-1" aria-disabled="true">Previous</a>
                                        </c:when>
                                        <c:otherwise>
                                            <a class="page-link"
                                               href="<%=request.getContextPath()%>/billController/billGetAllData?page=${currentPage - 1}"
                                               tabindex="-1" aria-disabled="false">Previous</a>
                                        </c:otherwise>
                                    </c:choose>
                                </li>
                                <c:forEach begin="1" end="${totalPage}" var="i">
                                    <li class="page-item ${currentPage == i ? 'active' : ''}"
                                        aria-current="page">
                                        <a class="page-link"
                                           href="<%=request.getContextPath()%>/billController/billGetAllData?page=${i}">${i}</a>
                                    </li>
                                </c:forEach>
                                <li class="page-item ${currentPage >= totalPage ? 'disabled' : ''}">
                                    <c:choose>
                                        <c:when test="${currentPage >= totalPage}">
                                            <a class="page-link"
                                               href="<%=request.getContextPath()%>/billController/billGetAllData?page=${totalPage}"
                                               tabindex="-1" aria-disabled="true">Next</a>
                                        </c:when>
                                        <c:otherwise>
                                            <a class="page-link"
                                               href="<%=request.getContextPath()%>/billController/billGetAllData?page=${currentPage + 1}"
                                               tabindex="-1" aria-disabled="false">Next</a>
                                        </c:otherwise>
                                    </c:choose>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <%--                    Create Bill--%>
                    <div class="modal fade" id="createData" tabindex="-1"
                         aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content modalSet">
                                <div class="modal-header">
                                    <h5 class="modal-title">Thêm mới Bill</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <form action="<%=request.getContextPath()%>/billController/create"
                                          method="post">
                                        <div class="row groupRow">
                                            <div class="col-6">
                                                <label for="billId" class="fw-bold">Bill Id</label>
                                                <input type="text" id="billId" name="billId"
                                                       class="form-control">
                                            </div>
                                            <div class="col-6">
                                                <label for="account" class="fw-bold">Email</label>
                                                <select id="account" name="account.accId" class="form-select">
                                                    <c:forEach items="${listAccount}" var="account">
                                                        <option value="${account.accId}">${account.email}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="submit" class="btn btn-success">Create</button>
                                            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close
                                            </button>
                                        </div>
                                    </form>
                                </div>

                            </div>
                        </div>
                    </div>
                    <%--                    Create Bill Detail--%>
                    <div class="modal fade" id="detailForm" tabindex="-1"
                         aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content modalSet">
                                <div class="modal-header">
                                    <h5 class="modal-title">Thêm mới Bill Detail</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <form action="<%=request.getContextPath()%>/billController/createBillDetail"
                                          method="post">
                                        <div class="row groupRow">
                                            <input type="hidden" id="billIdOfBillDetail" name="billId" value=""
                                                   class="form-control">
                                            <div class="col-6">
                                                <label for="productId" class="fw-bold">Product Name</label>
                                                <select id="productId" name="productId" class="form-select">
                                                    <c:forEach items="${listProduct}" var="product">
                                                        <option value="${product.productId}">${product.productName}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <div class="col-6">
                                                <label for="price" class="fw-bold">Price</label>
                                                <input type="number" id="price" name="price"
                                                       class="form-control">
                                            </div>
                                        </div>
                                        <div class="row groupRow">
                                            <div class="col-6">
                                                <label for="quantity" class="fw-bold">Quantity</label>
                                                <input type="number" id="quantity" name="quantity"
                                                       class="form-control">
                                            </div>
                                        </div>

                                        <div class="modal-footer">
                                            <button type="submit" class="btn btn-success">Create</button>
                                            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close
                                            </button>
                                        </div>

                                    </form>
                                </div>
                            </div>
                        </div>

                    </div>
                    <%--                    Update Bill--%>
                    <div class="modal fade" id="updateData" tabindex="-1"
                         aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content modalSet">
                                <div class="modal-header">
                                    <h5 class="modal-title">Cập nhật Bill</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <form action="<%=request.getContextPath()%>/billController/updateBill"
                                          method="post">
                                        <div class="row groupRow">
                                            <input type="hidden" id="billIdUpdate" name="billId"
                                                   class="form-control">
                                            <div class="col-6">
                                                <label for="accountUpdate" class="fw-bold">Email</label>
                                                <select id="accountUpdate" name="account.accId" class="form-select">
                                                    <c:forEach items="${listAccount}" var="account">
                                                        <option value="${account.accId}">${account.email}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <div class="col-6">
                                                <label for="status" class="fw-bold">Bill
                                                    Status</label>
                                                <select id="status" name="billStatus" class="form-select">
                                                    <option value="1" selected>Đang chờ</option>
                                                    <option value="2">Đã được duyệt</option>
                                                    <option value="3">Đang giao hàng</option>
                                                    <option value="4">Đã nhận hàng</option>
                                                </select>

                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="submit" class="btn btn-success">Update</button>
                                            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <%--                    Cancel--%>
                    <%--                    <div class="modal" id="cancel">--%>
                    <%--                        <div class="modal-dialog">--%>
                    <%--                            <div class="modal-content modalSetDelete">--%>
                    <%--                                <div class="modal-header">--%>
                    <%--                                    <h4 class="modal-title">Bạn có muốn hủy Bill không?</h4>--%>
                    <%--                                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>--%>
                    <%--                                </div>--%>
                    <%--                                <!-- Modal body -->--%>
                    <%--                                <div class="modal-body text-center">--%>
                    <%--                                    <form action="<%=request.getContextPath()%>/billController/cancel"--%>
                    <%--                                          method="post">--%>
                    <%--                                        <div class="row groupRow">--%>
                    <%--                                            <input type="hidden" id="billIdCancel" name="billId"--%>
                    <%--                                                   class="form-control">--%>
                    <%--                                            <div class="col-6">--%>
                    <%--                                                <input type="hidden" id="accountCancel" name="account.accId"--%>
                    <%--                                                       class="form-control">--%>
                    <%--                                            </div>--%>
                    <%--                                            <div class="col-6">--%>
                    <%--                                                <input type="hidden" id="statusCancel" name="billStatus"--%>
                    <%--                                                       class="form-control" value="5">--%>
                    <%--                                            </div>--%>
                    <%--                                        </div>--%>
                    <%--                                        <div class="modal-footer">--%>
                    <%--                                            <button type="submit" class="btn btn-danger" id="btnDelete">Yes</button>--%>
                    <%--                                            <button type="button" class="btn btn-success" data-bs-dismiss="modal">No--%>
                    <%--                                            </button>--%>
                    <%--                                            <input type="hidden" name="cancelId" id="cancelId" value="">--%>
                    <%--                                        </div>--%>
                    <%--                                    </form>--%>

                    <%--                                </div>--%>
                    <%--                                <div class="modal-footer">--%>
                    <%--                                </div>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>

                    <%--    Modal cancelData--%>
                    <div class="modal" id="cancelData">
                        <div class="modal-dialog">
                            <div class="modal-content modalSetDelete">
                                <!-- Modal Header -->
                                <div class="modal-header">
                                    <h4 class="modal-title">Bạn có muốn hủy đơn không?</h4>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                </div>
                                <!-- Modal body -->
                                <div class="modal-body text-center">
                                    <form action="<%=request.getContextPath()%>/billController/cancel?">
                                        <button type="submit" class="btn btn-danger" id="btnDelete">Yes</button>
                                        <button type="button" class="btn btn-success" data-bs-dismiss="modal">No
                                        </button>
                                        <input type="hidden" name="billIdCancel" id="billIdCancel" value="">
                                    </form>
                                </div>
                                <div class="modal-footer">
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Alert delete success -->
                    <div class="toast-container position-absolute top-0 start-50 mt-5">
                        <div id="liveToastCancelSuccess" class="toast bg-success" role="alert" aria-live="assertive"
                             aria-atomic="true" style="width:290px;height:100px;">
                            <div class="toast-header"></div>
                            <div class="toast-body text-light fs-5">
                                Bạn đã hủy đơn hàng thành công
                            </div>
                        </div>
                    </div>

                    <!-- Alert delete error -->
                    <div class="toast-container position-absolute top-0 start-50 mt-5">
                        <div id="liveToastCancelError" class="toast bg-danger" role="alert" aria-live="assertive"
                             aria-atomic="true" style="width:500px;height:100px;">
                            <div class="toast-header"></div>
                            <div class="toast-body text-light fs-5">
                                Rất tiếc trạng thái đơn hàng không phải là trạng thái chờ,không thể hủy đơn
                            </div>
                        </div>
                    </div>
                </div>


                </div>

        </section>
        <!-- /.content -->
    </div>

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
<script type="text/javascript">
    $(document).ready(function () {
        $('table .update').click(function () {
            console.log('Vào update dữ liệu');
            let getId = $(this).parent().find('#biId').val();
            $.ajax({
                type: 'GET',
                url: '<%=request.getContextPath()%>/billController/initUpdate?billId=' + getId,
                success: function (billInitUpdate) {
                    console.log("Ok");
                    try {
                        $('#billIdUpdate').val(billInitUpdate.billId);
                        $('#accountUpdate').val(billInitUpdate.accId);
                        $('#status').val(billInitUpdate.billStatus);
                    } catch (e) {
                        console.error("Error parsing JSON response:", e);
                    }

                }
            });
        });
        <%--$('table .cancel').click(function () {--%>
        <%--    console.log('Vào update dữ liệu');--%>
        <%--    let getId = $(this).parent().find('#biId').val();--%>
        <%--    $.ajax({--%>
        <%--        type: 'GET',--%>
        <%--        url: '<%=request.getContextPath()%>/billController/initUpdate?billId=' + getId,--%>
        <%--        success: function (billInitUpdate) {--%>
        <%--            console.log("Ok");--%>
        <%--            try {--%>
        <%--                $('#billIdCancel').val(billInitUpdate.billId);--%>
        <%--                $('#accountCancel').val(billInitUpdate.accId);--%>

        <%--            } catch (e) {--%>
        <%--                console.error("Error parsing JSON response:", e);--%>
        <%--            }--%>

        <%--        }--%>
        <%--    })--%>
        <%--});--%>
    });


    const urlParams = new URLSearchParams(window.location.search);
    const myParam = urlParams.get('message');
    if (myParam == "errorCancel") {
        showToastCancelError();
    }
    if (myParam == "successCancel") {
        showToastCancelSuccess();
    }

    function showToastCancelSuccess() {
        let toastLiveShow = document.getElementById("liveToastCancelSuccess");
        let toastBootstrap = bootstrap.Toast.getOrCreateInstance(toastLiveShow);
        toastBootstrap.show();
        let autoCloseTimeout = 1000;
        setTimeout(() => {
            toastBootstrap.hide();
        }, autoCloseTimeout);
    }

    function showToastCancelError() {
        let toastLiveShow = document.getElementById("liveToastCancelError");
        let toastBootstrap = bootstrap.Toast.getOrCreateInstance(toastLiveShow);
        toastBootstrap.show();
        let autoCloseTimeout = 1000;
        setTimeout(() => {
            toastBootstrap.hide();
        }, autoCloseTimeout);
    }

</script>

<script src="<%=request.getContextPath()%>/resources/js/bill.js" type="text/javascript"></script>
</body>
</html>
