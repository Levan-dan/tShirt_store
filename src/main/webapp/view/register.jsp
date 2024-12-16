<%--
  Created by IntelliJ IDEA.
  User: This  PC
  Date: 17/12/2024
  Time: 12:32 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <link rel="stylesheet" href="css/register.css">
</head>
<body>
<div id="khungDangKy">
  <h1>Haravan - Đăng ký tài khoản</h1>
  <form action="store?action=signUp" method="post">
    <input class="dangKy" type="text" name="username" placeholder="Tên người dùng"/>
<br>
    <input class="dangKy" type="text" name="email" placeholder="Địa chỉ email"/>
    <br>
    <input class="dangKy" type="password" name="password" placeholder="Mật khẩu"/>
    <br>
    <input class="dangKy" type="password" name="confirmPassword" placeholder="Xác nhận mật khẩu"/>
    <br>
    <input class="dangKy" type="text" name="phoneNumber" placeholder="Số điện thoại"/>
    <br>
    <input class="dangKy" type="text" name="address" placeholder="Địa chỉ"/>
    <br>
    <button type="submit">Tạo tài khoản</button>
  </form>
  <p id="login">Bạn đã có tài khoản Haravan? <a href="store?action=login">Đăng nhập </a></p>
  <img id="logo" src="https://file.hstatic.net/1000001117/file/logo_color_ngang_87db7d919b5a49bd91c08ec039c38ff6.svg">
  <p id="footer">This site is protected by reCAPTCHA and the Google Privacy <br> Policy and Terms of Service apply.</p>

</div>
</body>
</html>
