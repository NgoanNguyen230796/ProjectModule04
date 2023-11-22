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
    <link href="<%=request.getContextPath()%>/resources/css/account.css" rel="stylesheet"/>


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
            <!-- Sidebar user panel (optional) -->
            <%--            <div class="user-panel mt-3 pb-3 mb-3 d-flex">--%>
            <%--                <div class="image">--%>
            <%--                    <img src="<%=request.getContextPath()%>/resources/dist/img/Ngoan.jpg" alt="User Image"--%>
            <%--                         style="height:50px;width:50px"/>--%>
            <%--                </div>--%>
            <%--                <div class="info">--%>
            <%--                    <span class="brand-text font-weight-light">Admin</span>--%>
            <%--                </div>--%>
            <%--            </div>--%>

            <!-- SidebarSearch Form -->
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
                <h1 class="text-center mt-2">Tài khoản</h1>
                <div class="main">
                    <div class="d-flex justify-content-center">
                        <div class="col-4 mt-4">
                            <div></div>
                            <form class="d-flex"
                                  action="<%=request.getContextPath()%>/accountController/accountGetAllData"
                                  method="get">
                                <input class="form-control me-2" type="text" placeholder="Input email Search"
                                       id="emailSearch"
                                       name="emailSearch" value="${emailDefault}">
                                <button class="btn btn-outline-success" type="submit">Search</button>
                            </form>
                        </div>
                        <div class="col-2 ms-3">
                            <div>Sort By</div>
                            <select class="form-select" aria-label="Default select example" id="sortByAccount"
                                    name="sortBy"
                                    onchange="changeSortByAccount()">
                                <option value="email" ${sortBy.equals("email")?'selected':''}>Email
                                </option>
                                <option value="created" ${sortBy.equals("created")?'selected':''}>Created
                                </option>
                            </select>
                        </div>
                        <div class="col-2 ms-5">
                            <div>Direction</div>
                            <select class="form-select" aria-label="Default select example" id="directionAccount"
                                    name="direction" onchange="changeDirectionAccount()">
                                <option value="Default" ${direction.equals("ASC") && sortBy.equals("accId")?'selected':''}>
                                    Default
                                </option>
                                <option value="ASC" ${direction.equals("ASC")?'selected':''}>
                                    Ascending
                                </option>
                                <option value="DESC" ${direction.equals("DESC")?'selected':''}>
                                    Descending
                                </option>
                            </select>
                        </div>
                    </div>

                    <%--                    <c:choose>--%>
                    <%--                        <c:when test="${empty listAccount}">--%>
                    <%--                            <div class="listEmty">--%>
                    <%--                                <h4 class="text-center">Không tìm thấy kết quả</h4>--%>
                    <%--                            </div>--%>
                    <%--                        </c:when>--%>
                    <%--                        <c:otherwise>--%>
                    <div class="createDataButton">
                        <%--            <a type="button" class="btn btn-success" href="<%=request.getContextPath()%>/productController/initCreate">Create New Product</a>--%>
                        <a type="button" class="btn btn-outline-success mb-3" data-bs-toggle="modal" href="#createData">Create
                            New
                            Account</a>
                    </div>
                    <table class="table table-bordered table-hover text-center">
                        <thead>
                        <tr>
                            <th>Account ID</th>
                            <th>Email</th>
                            <th>Password</th>
                            <th>Created</th>
                            <th>Role</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${listAccount}" var="account">
                            <tr>
                                <td>${account.accId}</td>
                                <td>${account.email}</td>
                                <td>${account.password}</td>
                                <td><fmt:formatDate pattern="dd/MM/yyyy"
                                                    value="${account.created}"></fmt:formatDate></td>
                                <td>${account.role?"Admin":"Customer"}</td>
                                <td style="display: block;text-align: center;">
                                    <button type="button" class="btn ${account.accStatus==true?'btn-success':'btn-danger'} btnStatusSet">${account.accStatus==true?"Active":"Inactive"}</button>
                                </td>
                                <td>
                                    <a class="btn btn-outline-warning lock update" data-bs-toggle="modal"
                                       href="#updateData"><i
                                            class="fa-solid fa-pen-to-square"></i></a>
                                    <a class="btn btn-outline-danger lock" data-bs-toggle="modal" href="#lock"><i
                                            class="fa-solid fa-lock"></i></a>

                                    <a class="btn btn-outline-info unlock" data-bs-toggle="modal"
                                       href="#unlock"><i class="fa-solid fa-unlock"></i></a>
                                    <input type="hidden" id="accId" value="${account.accId}">
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
                                               href="<%=request.getContextPath()%>/accountController/accountGetAllData?page=${currentPage}"
                                               tabindex="-1" aria-disabled="true">Previous</a>
                                        </c:when>
                                        <c:otherwise>
                                            <a class="page-link"
                                               href="<%=request.getContextPath()%>/accountController/accountGetAllData?page=${currentPage - 1}"
                                               tabindex="-1" aria-disabled="false">Previous</a>
                                        </c:otherwise>
                                    </c:choose>
                                </li>
                                <c:forEach begin="1" end="${totalPage}" var="i">
                                    <li class="page-item ${currentPage == i ? 'active' : ''}"
                                        aria-current="page">
                                        <a class="page-link"
                                           href="<%=request.getContextPath()%>/accountController/accountGetAllData?page=${i}">${i}</a>
                                    </li>
                                </c:forEach>
                                <li class="page-item ${currentPage >= totalPage ? 'disabled' : ''}">
                                    <c:choose>
                                        <c:when test="${currentPage >= totalPage}">
                                            <a class="page-link"
                                               href="<%=request.getContextPath()%>/accountController/accountGetAllData?page=${totalPage}"
                                               tabindex="-1" aria-disabled="true">Next</a>
                                        </c:when>
                                        <c:otherwise>
                                            <a class="page-link"
                                               href="<%=request.getContextPath()%>/accountController/accountGetAllData?page=${currentPage + 1}"
                                               tabindex="-1" aria-disabled="false">Next</a>
                                        </c:otherwise>
                                    </c:choose>
                                </li>
                            </ul>

                        </nav>
                    </div>
                    <%--                        </c:otherwise>--%>
                    <%--                    </c:choose>--%>

                    <%--Modal Create Data--%>
                    <div class="modal fade" id="createData" tabindex="-1" aria-labelledby="createDataModal"
                         aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content modalSet">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="createDataModal">Thêm mới tài khoản</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <form action="<%=request.getContextPath()%>/accountController/create"
                                          method="post">
                                        <div class="row groupRow">
                                            <div class="col-6">
                                                <label for="email" class="fw-bold">Email</label>
                                                <input type="text" id="email" name="email"
                                                       class="form-control">
                                            </div>
                                            <div class="col-6">
                                                <label for="password" class="fw-bold">Password</label>
                                                <input type="text" id="password" name="password"
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
                    <%--    Modal Update Data--%>
                    <div class="modal fade" id="updateData" tabindex="-1"
                         aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content modalSet">
                                <div class="modal-header">
                                    <h5 class="modal-title">Cập nhật tài khoản</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-body text-center">
                                    <form action="<%=request.getContextPath()%>/accountController/update"
                                          method="post">
                                        <div class="row groupRow">
                                            <div class="col-6">
                                                <label for="accIdUpdateData" class="fw-bold">Account Id</label>
                                                <input type="text" id="accIdUpdateData" name="accId"
                                                       class="form-control"
                                                       value="${account.accId}" readonly>
                                            </div>
                                            <div class="col-6">
                                                <label for="emailUpdateData" class="fw-bold">Email</label>
                                                <input type="email" id="emailUpdateData" name="email"
                                                       class="form-control"
                                                       value="${account.email}">
                                            </div>
                                        </div>
                                        <div class="row groupRow">
                                            <div class="col-6">
                                                <label for="passwordUpdateData" class="fw-bold">Password</label>
                                                <input type="text" id="passwordUpdateData"
                                                       name="password"
                                                       class="form-control" value="${account.password}">
                                            </div>
                                        </div>
                                        <%--                                        <div class="row groupRow">--%>
                                        <%--                                            <div class="col-6">--%>
                                        <%--                                                <input type="hidden" name="accStatus" id="accStatusUpdateData" value="1">--%>
                                        <%--                                            </div>--%>
                                        <%--                                        </div>--%>
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
                    <%--    Modal Lock Data--%>
                    <div class="modal fade" id="lock" tabindex="-1"
                         aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content modalSetLock">
                                <div class="modal-header">
                                    <h5 class="modal-title">Bạn có muốn khóa tài khoản này không?</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-body text-center">
                                    <form action="<%=request.getContextPath()%>/accountController/lockAndUnlock"
                                          method="post">
                                        <div class="row groupRow">
                                            <div class="col-6">
                                                <input type="hidden" id="accIdUpdate" name="accId"
                                                       class="form-control"
                                                       value="${account.accId}" readonly>
                                            </div>
                                            <div class="col-6">
                                                <input type="hidden" id="emailUpdate" name="email"
                                                       class="form-control"
                                                       value="${account.email}">
                                            </div>
                                        </div>
                                        <div class="row groupRow">
                                            <div class="col-6">
                                                <input type="hidden" id="passwordUpdate"
                                                       name="password"
                                                       class="form-control" value="${account.password}">
                                            </div>
                                        </div>
                                        <div class="row groupRow">
                                            <div class="col-6">
                                                <input type="hidden" name="accStatus" id="accStatusUpdate" value="false">
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-success btnYesClock me-3">Yes</button>
                                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">No
                                        </button>

                                    </form>
                                </div>
                            </div>
                        </div>

                    </div>
                    <%--    Modal UnLock Data--%>
                    <div class="modal fade" id="unlock" tabindex="-1"
                         aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content modalSetUnLock">
                                <div class="modal-header">
                                    <h5 class="modal-title">Bạn có muốn khóa mở tài khoản này không?</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-body text-center">
                                    <form action="<%=request.getContextPath()%>/accountController/lockAndUnlock"
                                          method="post">
                                        <div class="row groupRow">
                                            <div class="col-6">
                                                <input type="hidden" id="accIdUpdateUnLock" name="accId"
                                                       class="form-control"
                                                       value="${account.accId}" readonly>
                                            </div>
                                            <div class="col-6">
                                                <input type="hidden" id="emailUpdateUnLock" name="email"
                                                       class="form-control"
                                                       value="${account.email}">
                                            </div>
                                        </div>
                                        <div class="row groupRow">
                                            <div class="col-6">
                                                <input type="hidden" id="passwordUpdateUnLock"
                                                       name="password"
                                                       class="form-control" value="${account.password}">
                                            </div>
                                        </div>
                                        <div class="row groupRow">
                                            <div class="col-6">
                                                <input type="hidden" name="accStatus" id="accStatusUpdateUnLock"
                                                       value="true">
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-success btnYesUnClock me-3">Yes</button>
                                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">No
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
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

<script src="<%=request.getContextPath()%>/resources/js/account.js" type="text/javascript"></script>
</body>
</html>
