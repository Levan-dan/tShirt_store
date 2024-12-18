<%--
  Created by IntelliJ IDEA.
  User: This  PC
  Date: 18/12/2024
  Time: 6:06 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/crud.css">
</head>
<body>
<h1 style="padding-top: 20px">QUẢN LÝ SẢN PHẨM</h1>
<form action="store?action=add" method="post">
    <div id="khungAdd">
        <h2>Thêm sản phẩm</h2>
        <input type="text" name="nameProduct" required placeholder="Tên sản phẩm" />
        <input type="text" name="imageProduct" required placeholder="Hình ảnh" />
        <textarea name="description" required placeholder="Mô tả"></textarea>
        <input type="number" name="price" required placeholder="Giá trị" />
        <input type="number" name="stock" required placeholder="Số lượng" />
        <button type="submit">Thêm</button>
    </div>
</form>


<div id="tableProduct">
    <table>
        <tr>
            <th>Mã sản phẩm</th>
            <th>Tên sản phẩm</th>
            <th>Hình ảnh</th>
            <th>Mô tả</th>
            <th>Giá trị</th>
            <th>Số lượng</th>
            <th>Thao tác</th>
        </tr>
        <c:forEach var="product" items="${showListProduc}">
            <tr>
                <td>${product.idProduct}</td>
                <td>${product.nameProduct}</td>
                <td><img src="${product.image}"></td>
                <td>${product.description}</td>
                <td>${product.price}00 VND</td>
                <td>${product.stock}</td>
                <td>
                    <button style="background-color: gold; width: 70px; border-radius: 4px; color: white; height: 30px; margin: 5px;"><a>Sửa</a></button>
                    <button style="background-color: red; width: 70px; border-radius: 4px; color: white; height: 30px; margin: 5px;"><a>Xóa</a></button>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>
