<%--
  Created by IntelliJ IDEA.
  User: This  PC
  Date: 19/12/2024
  Time: 9:05 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/productInfo.css">
</head>
<body>
<jsp:include page="/view/header.jsp"></jsp:include>
<form action="cart?action=addToCart&idProduct=${productInfo.idProduct}" method="post">


    <div class="product-details">
        <img class="product-image"
             src="${productInfo.image}"
             alt="Product Image">

        <div class="product-info">

            <div id="nameAndEvaluate">
                <h3 class="product-title">${productInfo.nameProduct}</h3>

                <div id="Evaluate">
                    <img src="https://png.pngtree.com/png-vector/20220926/ourmid/pngtree-shiny-gold-star-clipart-illustration-design-png-image_6216956.png">
                    <img src="https://png.pngtree.com/png-vector/20220926/ourmid/pngtree-shiny-gold-star-clipart-illustration-design-png-image_6216956.png">
                    <img src="https://png.pngtree.com/png-vector/20220926/ourmid/pngtree-shiny-gold-star-clipart-illustration-design-png-image_6216956.png">
                    <img src="https://png.pngtree.com/png-vector/20220926/ourmid/pngtree-shiny-gold-star-clipart-illustration-design-png-image_6216956.png">
                    <img src="https://png.pngtree.com/png-vector/20220926/ourmid/pngtree-shiny-gold-star-clipart-illustration-design-png-image_6216956.png">
                </div>
            </div>


            <div style="text-align: left; width: 400px;  display: flex; flex-direction: column; gap: 10px; ">
                <p class="product-price">Giá: ${productInfo.price}00 VND</p>
                <p class="product-stock">Số lượng trong kho: ${productInfo.stock} chiếc</p>

                <div class="product-quantity">
                    <label for="quantity" style="font-weight: bold;">Chọn số lượng:</label>
                    <input id="quantity" name="quantity" type="number" min="1" max="${productInfo.stock}" value="1"
                           style="width: 80px; padding: 5px; border: 1px solid #ddd; border-radius: 5px;">
                </div>

                <area class="product-description">
                Mô tả: ${productInfo.description} </area>


            </div>

            <div class="product-buttons">
                <button type="submit" class="btn add-to-cart"><a>Thêm vào giỏ hàng</a></button>
                <button class="btn buy-now"><a href="store?action=buy">Đặt hàng</a></button>
            </div>

        </div>
    </div>
</form>
</body>
</html>
