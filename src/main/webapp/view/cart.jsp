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
<br>
<p style="padding-left: 75px;">
    <input type="checkbox" id="selectAll" name="chooseAll"/> Chọn tất cả
</p>
<div id="listProduct">
    <table>
        <tr>
            <th>Lựa chọn</th>
            <th>Tên sản phẩm</th>
            <th>Hình ảnh</th>
            <th>Giá</th>
            <th>Số lượng</th>
            <th>Thành tiền</th>
            <th>Hành động</th>
        </tr>
        <c:forEach items="${cart}" var="itemCart">
            <tr>
                <td>
                    <input type="checkbox" class="product-checkbox"
                           data-price="${itemCart.price}"
                           data-quantity="${itemCart.quantity}" />
                </td>
                <td>${itemCart.nameProduct}</td>
                <td><img src="${itemCart.image}" alt="${itemCart.nameProduct}" style="width: 150px; height: 150px;"></td>
                <td><fmt:formatNumber value="${itemCart.price}" type="currency" currencySymbol=".000VND"/></td>
                <td>
                    <input class="quantity-input" name="quantity" type="number" min="1" max="${productInfo.stock}"
                           value="${itemCart.quantity}" data-price="${itemCart.price}"  data-id="${itemCart.idProduct}"
                           style="width: 60px; padding: 5px; border: 1px solid #ddd; border-radius: 5px; text-align: center">
                </td>

                <td class="item-total" >${itemCart.price * itemCart.quantity}00 VND</td>
                <td>
                    <button><a>Xóa</a></button>
                </td>
            </tr>
        </c:forEach>
    </table>

    <div id="footerCart">
        <div id="sum">
            <h2>Tổng cộng : </h2>
            <p id="totalAmount">0 VND</p>
        </div>
        <div>
            <button>Đặt hàng</button>
        </div>
    </div>
</div>

<script src="javascrip/cart.js"></script>
</body>
</html>
