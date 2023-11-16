<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ngoan
  Date: 15/11/2023
  Time: 9:26 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="<%=request.getContextPath()%>/productController/create" method="post" enctype="multipart/form-data">
    <label for="productId">Product ID</label>
    <input type="text" id="productId" name="productId"/><br>

    <label for="productName">Product Name</label>
    <input type="text" id="productName" name="productName"/><br>

    <label for="price">Price</label>
    <input type="number" id="price" name="price"/><br>

    <label for="tittle">Title</label>
    <input type="text" id="tittle" name="tittle"/><br>

    <label for="productDescription">productDescription</label>
    <input type="text" id="productDescription" name="productDescription"/><br>

    <label for="productImage">Image</label>
    <input type="file" id="productImage" name="productImage"/><br>

    <label for="productUnit" class="fw-bold">Product Unit</label>
    <select id="productUnit" name="productUnit" class="form-select">
        <option value="1" selected id="unitValue">Yến</option>
        <option value="2">Kg</option>
        <option value="3">Gram</option>
    </select>

    <label for="productStatus" class="fw-bold">Product Status</label>
    <select id="productStatus" name="productStatus" class="form-select">
        <option value="true" selected id="activeValue">Active</option>
        <option value="false">Inactive</option>
    </select>

    <label for="category" class="fw-bold">Choice catalog</label>
    <select id="category" name="category.categoryId" class="form-select">
        <c:forEach items="${listCategory}" var="category">
            <option value="${category.categoryId}">${category.categoryName}</option>
        </c:forEach>
    </select>
    <input type="submit" value="Create"/>
</form>
</body>
</html>
