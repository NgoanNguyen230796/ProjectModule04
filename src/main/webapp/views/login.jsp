<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ngoan
  Date: 12/11/2023
  Time: 6:18 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <%--    bootstrap Link--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <%--    font-awesome Link--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
          integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <%--    login.css link--%>
    <link href="<%=request.getContextPath()%>/resources/css/login.css" rel="stylesheet"/>
<%--    <link href="<%=request.getContextPath()%>" rel="stylesheet"/>--%>

</head>
<body>
<div class="container">
    <div class="main">
        <section class="vh-100">
            <div class="container py-5 h-100">
                <div class="row d-flex align-items-center justify-content-center h-100">
                    <div class="col-md-8 col-lg-7 col-xl-6">
                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.svg"
                             class="img-fluid" alt="Phone image">
                    </div>
                    <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
                        <form>
                            <!-- Email input -->
                            <div class="form-outline mb-4">
                                <input type="email" id="form1Example13" class="form-control form-control-lg" placeholder="Email"/>

                            </div>
                            <!-- Password input -->
                            <div class="form-outline mb-4">
                                <input type="password" id="form1Example23" class="form-control form-control-lg" placeholder="Password"/>
<%--                                <label class="form-label" for="form1Example23">Password</label>--%>
                            </div>

                            <div class="d-grid gap-2 col-12 mx-auto">
                                <button class="btn btn-info btn-lg btn-block text-white" type="button">Login</button>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </section>
    </div>

</div>
</body>
</html>
