<%--
  Created by IntelliJ IDEA.
  User: This  PC
  Date: 22/12/2024
  Time: 10:30 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/cart.css">
</head>
<body>
<h1>GIỎ HÀNG</h1>
<a href="cart">back</a>
<div id="listProduct">
  <table>
    <tr>
        <th>Lựa chọn</th>
        <th>Tên sẩn phẩm</th>
        <th>Hình ảnh</th>
        <th>Giá</th>
        <th>Số lượng</th>
        <th>Thành tiền</th>
        <th>Hành động</th>
    </tr>
    <c:forEach items="${cart}" var="itemCart">
        <tr>
            <td><input type="checkbox" name="choose"/></td>
            <td>${itemCart.nameProduct}</td>
            <td><img src="${itemCart.image}"></td>
            <td><fmt:formatNumber value="${itemCart.price}" type="currency" currencySymbol="VND"/></td>
            <td>${itemCart.quantity}</td>
            <td>${itemCart.price * itemCart.quantity}00 VND</td>
            <td>
                <button><a>Xóa</a></button>
            </td>
        </tr>
    </c:forEach>
    </table>


    <div id="footerCart">
        <div id="sum">
            <h2>Tổng cộng : </h2>
            <p>0 VND</p>

        </div>
        <div>
            <button>Đặt hàng</button>
        </div>

    </div>
</div>
</body>
</html>
