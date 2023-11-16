<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ngoan
  Date: 15/11/2023
  Time: 11:18 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="<%=request.getContextPath()%>/productController/update" method="post"
      enctype="multipart/form-data">
    <div class="row groupRow">
        <div class="col-6">
            <label for="productIdUpdate" class="fw-bold">Product Id</label>
            <input type="text" id="productIdUpdate" name="productId" readonly
                   class="form-control" value="${productEdit.productId}>
        </div>
        <div class="col-6">
            <label for="productNameUpdate" class="fw-bold">Product Name</label>
            <input type="text" id="productNameUpdate" name="productName"
                   class="form-control">
        </div>

    </div>
    <div class="row groupRow">
        <div class="col-6">
            <label for="priceUpdate" class="fw-bold">Price</label>
            <input type="number" id="priceUpdate" name="price"
                   class="form-control">
        </div>
        <div class="col-6">
            <label for="tittleUpdate" class="fw-bold">Tittle</label>
            <input type="text" id="tittleUpdate" name="tittle" class="form-control">
        </div>
    </div>

    <div class="row groupRow">
        <div class="col-6">
            <label for="productDescriptionUpdate" class="fw-bold">Product
                Description</label>
            <input type="text" id="productDescriptionUpdate"
                   name="productDescription"
                   class="form-control">
        </div>
        <div class="col-6">
            <label for="productImageUpdate" class="fw-bold">Product Image</label>
            <input type="file" id="productImageUpdate" name="productImage">
        </div>

    </div>
    <div class="row groupRow">
        <div class="col-6">
            <label for="productUnitUpdate" class="fw-bold">Product Unit</label>
            <select id="productUnitUpdate" name="productUnit" class="form-select">
                <option value="1" selected>Yến</option>
                <option value="2">Kg</option>
                <option value="3">Gram</option>
            </select>
        </div>
        <div class="col-6">
            <label for="productStatusUpdate" class="fw-bold">Product Status</label>
            <select id="productStatusUpdate" name="productStatus"
                    class="form-select">
                <option value="true" selected id="activeValue">Active</option>
                <option value="false">Inactive</option>
            </select>
        </div>
    </div>

    <div class="row groupRow">
        <div class="col-6">
            <label for="categoryUpdate" class="fw-bold">Choice catalog</label>
            <select id="categoryUpdate" name="category.categoryId"
                    class="form-select">
                <c:forEach items="${listCategory}" var="category">
                    <option value="${category.categoryId}">${category.categoryName}</option>
                </c:forEach>
            </select>
        </div>
    </div>
    <div class="modal-footer">
        <button type="submit" class="btn btn-success">Update</button>
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close
        </button>
    </div>

</form>

</body>
</html>
