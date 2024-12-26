<%--
  Created by IntelliJ IDEA.
  User: This  PC
  Date: 26/12/2024
  Time: 12:08 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/order.css">
</head>
<body>
<div id="orderInterface" class="order-container">
    <div id="buyerInformation" class="buyer-info">
        <h3>Lê Quốc Dân</h3>
        <p>0328 640 157</p>
        <p>Lý viên - Bắc lý - Hiệp hòa - Bắc Giang</p>
    </div>

    <div id="productIsPurchased" class="product-container">
        <img src="https://www.dongphuctranganh.vn/media/product/thumb/1-ao-thun-doan-thanh-nien-viet-nam.jpg" alt="Tên sản phẩm" class="product-image">
        <div class="product-details">
            <h4 class="product-name">Tên sản phẩm</h4>
            <p class="product-price">100.000 VND</p>
            <p class="product-quantity">x1</p>
        </div>
        <div class="product-total">
            <p>Tổng số tiền (1 sản phẩm): <span>100.000 VND</span></p>
        </div>
    </div>

    <p class="payment-option">
        Thanh toán khi nhận hàng
        <input type="checkbox" />
    </p>

    <div id="totalPayment" class="total-payment">
        <p>Tổng tiền hàng: <span>100.000 VND</span></p>
        <p>Tổng tiền phí vận chuyển: <span>0 VND</span></p>
        <p>Tổng thanh toán: <span>100.000 VND</span></p>
    </div>

    <div id="order" class="order-summary">
        <p>Tổng thanh toán: <span>100.000 VND</span></p>
        <button class="order-button">Đặt hàng</button>
    </div>
</div>

</body>
</html>
