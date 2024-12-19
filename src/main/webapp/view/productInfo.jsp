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

<div class="product-details">
    <img class="product-image"
         src="https://dugarcocollection.com.vn/media/37117/catalog/Thi%E1%BA%BFt%20k%E1%BA%BF%20ch%C6%B0a%20c%C3%B3%20t%C3%AAn%20(3).png"
         alt="Product Image">

    <div class="product-info">

        <div id="nameAndEvaluate">
            <h3 class="product-title">Tên sản phẩm</h3>

            <div id="Evaluate">
                <img src="https://png.pngtree.com/png-vector/20220926/ourmid/pngtree-shiny-gold-star-clipart-illustration-design-png-image_6216956.png">
                <img src="https://png.pngtree.com/png-vector/20220926/ourmid/pngtree-shiny-gold-star-clipart-illustration-design-png-image_6216956.png">
                <img src="https://png.pngtree.com/png-vector/20220926/ourmid/pngtree-shiny-gold-star-clipart-illustration-design-png-image_6216956.png">
                <img src="https://png.pngtree.com/png-vector/20220926/ourmid/pngtree-shiny-gold-star-clipart-illustration-design-png-image_6216956.png">
                <img src="https://png.pngtree.com/png-vector/20220926/ourmid/pngtree-shiny-gold-star-clipart-illustration-design-png-image_6216956.png">
            </div>
        </div>


        <div style="text-align: left; width: 400px;  display: flex; flex-direction: column; gap: 10px; ">
            <p class="product-price">Giá: 500,000 VND</p>
            <p class="product-stock">Số lượng trong kho: 20</p>

            <div class="product-quantity">
                <label for="quantity" style="font-weight: bold;">Chọn số lượng:</label>
                <input id="quantity" name="quantity" type="number" min="1" max="20" value="1" style="width: 80px; padding: 5px; border: 1px solid #ddd; border-radius: 5px;">
            </div>

            <area class="product-description">
            Mô tả: Đây là một sản phẩm chất lượng cao, thích hợp cho mọi lứa tuổi hahg jglja jfgogh dlghrog </area>


        </div>

        <div class="product-buttons">
            <button class="btn add-to-cart">Thêm vào giỏ hàng</button>
            <button class="btn buy-now">Mua hàng</button>
        </div>

    </div>
</div>

</body>
</html>
