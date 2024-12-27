<%--
  Created by IntelliJ IDEA.
  User: This  PC
  Date: 26/12/2024
  Time: 10:32 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/userHome.css">
</head>
<body>
<header>


<div id="header" style="position: sticky; width: 100%; z-index: 1000">
    <img id="logoImage"
         src="https://file.hstatic.net/1000001117/file/logo_black_doc_dc234adc40f541e5bbc39cf289889b3e.png">
    <div id="menu">
        <ul>
            <li><a href="store?action=home">Toàn bộ</a></li>
            <li><a href="#productNew">Hàng mới</a></li>
            <li><a href="#bestSelling">Bán chạy</a></li>
            <li><a href="#productMale">Nam</a></li>
            <li><a href="#productFemale">Nữ</a></li>
            <li><a href="#productChildren">Trẻ em</a></li>
        </ul>
    </div>


    <form action="store?action=search" method="post">
        <input style="width: 230px" id="search-input" type="text" name="tenSanPham" required placeholder="Tìm kiếm..."/>
        <button id="search-button" type="submit">Tìm kiếm</button>
    </form>


    <a href="cart?action=cart"><img class="logoCart"
                                    src="https://bizweb.dktcdn.net/100/344/969/themes/705911/assets/carts.svg?1723002522273"></a>



    <img class="logoCart"
         src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Hamburger_icon.svg/1200px-Hamburger_icon.svg.png"
         alt="Menu"
         onclick="toggleMenu()">

    <div   class="menu-container" >
        <div id="menuList"  class="menu hidden" style="text-align: center">
            <ul>
                <li><a href="" >Thông tin người dùng</a></li>
                <li><a href="">Đơn hàng của bạn</a></li>
                <li><a href="store?action=logOutUser">Đăng xuất</a></li>
            </ul>
        </div>
    </div>

</div>
</header>

<script src="javascrip/scriptsUserHome.js">
</script>
</body>
</html>
