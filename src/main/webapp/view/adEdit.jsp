<%--
  Created by IntelliJ IDEA.
  User: This  PC
  Date: 18/12/2024
  Time: 10:50 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/editOfAdmin.css">
</head>
<body>
<h1>CHỈNH SỬA SẢN PHẨM</h1>
<form action="store?action=edit" method="post">
    <div id="khungEdit">
        <div class="form-group">
            <label >Mã sản phẩm</label>
            <input type="text" id="idProduct" name="idProduct" value="${product.idProduct}" required readonly/>
        </div>
        <div class="form-group">
            <label >Tên sản phẩm</label>
            <input type="text" id="nameProduct" name="nameProduct" value="${product.nameProduct}" />
        </div>
        <div class="form-group">
            <label for="imageProduct">Ảnh sản phẩm</label>
            <input type="text" id="imageProduct" name="imageProduct" value="${product.image}" />
        </div>
        <div class="form-group">
            <label for="description">Mô tả</label>
            <textarea id="description" name="description" >${product.description}</textarea>
        </div>
        <div class="form-group">
            <label for="price">Giá</label>
            <input type="number" id="price" name="price"  value="${product.price}00" />
        </div>
        <div class="form-group">
            <label for="stock">Số lượng trong kho</label>
            <input type="number" id="stock" name="stock"  value="${product.stock}" />
        </div>
        <button type="submit">Chỉnh sửa</button>

    </div>
</form>
</body>
</html>
