<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>Category</title>
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
    <link href="<%=request.getContextPath()%>/resources/css/category.css" rel="stylesheet"/>


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
                <h1 class="text-center mt-2">Chi tiết Bill Detail</h1>
                <div class="main">
                    <div class="createDataButton">
                        <a type="button" class="btn btn-outline-success mb-3"
                           href="<%=request.getContextPath()%>/billController/billGetAllData?page=1">Quay lại trang Bill</a>
                    </div>
                    <div>
                        <c:choose>
                            <c:when test="${empty listBillDetail}">
                                <div class="listEmty">
                                    <h4 class="text-center">Bill có mã :${bill.billId} chưa có Bill Detail nào cả</h4>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <div class="col-12">
                                    <!-- Widget: user widget style 1 -->
                                    <div class="card card-widget widget-user">
                                        <!-- Add the bg color to the header using any of the bg-* classes -->
                                        <div class="widget-user-header bg-info">
                                            <h3 class="widget-user-username" style="font-size: 50px">Customer</h3>
                                        </div>
                                        <div class="widget-user-image">
                                            <img class="img-circle elevation-2" src="/resources/dist/img/AccountIcon2.png"
                                                 alt="User Avatar" style="width: 100px;height: 100px">
                                        </div>
                                        <div class="card-footer">
                                            <div class="row">
                                                <div class="col-sm-4 border-right">
                                                    <div class="description-block">
                                                        <h5 class="description-header" style="font-size: 40px;">Email</h5>
                                                        <span>${bill.account.email}</span>
                                                    </div>
                                                    <!-- /.description-block -->
                                                </div>
                                                <!-- /.col -->
                                                <div class="col-sm-4 border-right">
                                                    <div class="description-block">
                                                        <h5 class="description-header" style="font-size: 40px;">Password</h5>
                                                        <span>${bill.account.password}</span>
                                                    </div>
                                                    <!-- /.description-block -->
                                                </div>
                                                <!-- /.col -->
                                                <div class="col-sm-4">
                                                    <div class="description-block">
                                                        <h5 class="description-header" style="font-size: 40px;">Status</h5>
                                                        <span>${bill.account.accStatus?"Hoạt động":"Khóa"}</span>
                                                    </div>
                                                    <!-- /.description-block -->
                                                </div>
                                                <!-- /.col -->
                                            </div>
                                            <!-- /.row -->
                                        </div>
                                    </div>
                                    <!-- /.widget-user -->
                                </div>
                                <div class="col-12">
                                    <table class="table table-bordered table-hover text-center">
                                        <thead>
                                        <tr>
                                            <th>Bill ID</th>
                                            <th>Product Name</th>
                                            <th>Price</th>
                                            <th>Quantity</th>
                                            <th>Total</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${listBillDetail}" var="detail">
                                            <tr>
                                                <td>${detail.bill.billId}</td>
                                                <td>${detail.productT2.productName}</td>
                                                <td>${detail.price}</td>
                                                <td>${detail.quantity}</td>
                                                <td>${detail.total}</td>
<%--                                                <td>--%>
<%--                                                    <a class="btn btn-outline-warning update" data-bs-toggle="modal"--%>
<%--                                                       href="#updateDetailForm"><i--%>
<%--                                                            class="fa-solid fa-pen-to-square"></i></a>--%>
<%--                                                    <a class="btn btn-outline-danger delete" data-bs-toggle="modal"--%>
<%--                                                       href="#deleteDetailForm"><i class="fa-solid fa-trash"></i></a>--%>
<%--                                                    <input type="hidden" id="biDetailId" value="${detail.billDetailId}">--%>
<%--                                                </td>--%>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <%--    Modal Update Data--%>
                                <div class="modal fade" id="updateDetailForm" tabindex="-1"
                                     aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content modalSet">
                                            <div class="modal-header">
                                                <h5 class="modal-title">Update Bill Detail</h5>
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
                                    <!-- Alert delete success -->
                                    <div class="toast-container position-absolute top-0 start-50 mt-5">
                                        <div id="liveToastDeleteSuccess" class="toast bg-success" role="alert" aria-live="assertive"
                                             aria-atomic="true" style="width:290px;height:100px;">
                                            <div class="toast-header"></div>
                                            <div class="toast-body text-light fs-5">
                                                Bạn đã xóa thành công
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Alert delete error -->
                                    <div class="toast-container position-absolute top-0 start-50 mt-5">
                                        <div id="liveToastDeleteError" class="toast bg-danger" role="alert" aria-live="assertive"
                                             aria-atomic="true" style="width:500px;height:100px;">
                                            <div class="toast-header"></div>
                                            <div class="toast-body text-light fs-5">
                                                Trong danh mục có chứa sản phẩm,rất tiếc không thể xóa
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <%--    Modal Delete Data--%>
                                <div class="modal" id="deleteDetailForm">
                                    <div class="modal-dialog">
                                        <div class="modal-content modalSetDelete">
                                            <!-- Modal Header -->
                                            <div class="modal-header">
                                                <h4 class="modal-title">Bạn có muốn xóa không?</h4>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                            </div>
                                            <!-- Modal body -->
                                            <div class="modal-body text-center">
                                                <form action="<%=request.getContextPath()%>/productController/delete?"
                                                      method="get">
                                                    <button type="submit" class="btn btn-danger">Delete</button>
                                                    <button type="button" class="btn btn-success" data-bs-dismiss="modal">No
                                                    </button>
                                                    <input type="hidden" name="productIdDelete" id="productIdDelete" value="">
                                                </form>
                                            </div>
                                            <div class="modal-footer">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:otherwise>
                        </c:choose>
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
    $('table .update').click(function () {
        console.log('Vào update dữ liệu');
        let getId = $(this).parent().find('#biDetailId').val();
        $.ajax({
            type: 'GET',
            url: '<%=request.getContextPath()%>/billDetailController/initUpdate?billDetailId=' + getId,
            success: function (categoryUpdateEdit) {
                console.log("Ok");
                try {
                    $('#categoryIdUpdate').val(categoryUpdateEdit.categoryId);
                    $('#categoryNameUpdate').val(categoryUpdateEdit.categoryName);
                    $('#categoryDescriptionUpdate').val(categoryUpdateEdit.categoryDescription);
                    let status = categoryUpdateEdit.categoryStatus.toString();
                    $('#categoryStatusUpdate').val(status);

                } catch (e) {
                    console.error("Error parsing JSON response:", e);
                }

            }
        })
    });

    <%--document.addEventListener("DOMContentLoaded", function() {--%>
    <%--    let btnDelete = document.getElementById("btnDelete");--%>
    <%--    btnDelete.addEventListener("click", function(e) {--%>
    <%--        e.preventDefault();--%>
    <%--        if(${message.equals("error")}){--%>
    <%--            console.log("Không th xóa ");--%>
    <%--        }else{--%>
    <%--            console.log("Xóa thành công");--%>
    <%--        }--%>
    <%--    });--%>
    <%--});--%>

    const urlParams = new URLSearchParams(window.location.search);
    const myParam = urlParams.get('message');

    if (myParam == "error") {
        showToastDeleteError();
    }
    if (myParam == "success") {
        showToastDeleteSuccess();
    }

    function showToastDeleteSuccess() {
        let toastLiveShow = document.getElementById("liveToastDeleteSuccess");
        let toastBootstrap = bootstrap.Toast.getOrCreateInstance(toastLiveShow);
        toastBootstrap.show();
        let autoCloseTimeout = 1000;
        setTimeout(() => {
            toastBootstrap.hide();
        }, autoCloseTimeout);
    }

    function showToastDeleteError() {
        let toastLiveShow = document.getElementById("liveToastDeleteError");
        let toastBootstrap = bootstrap.Toast.getOrCreateInstance(toastLiveShow);
        toastBootstrap.show();
        let autoCloseTimeout = 1000;
        setTimeout(() => {
            toastBootstrap.hide();
        }, autoCloseTimeout);
    }


</script>

<script src="<%=request.getContextPath()%>/resources/js/category.js" type="text/javascript"></script>
</body>
</html>
