
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
<div id="border" >
    <!-- Div bên trái -->
    <div id="imageLogin">
    </div>


    <!-- Div bên phải -->
    <div id="formLogin">
        <img id="logo" src="https://file.hstatic.net/1000001117/file/logo_color_ngang_87db7d919b5a49bd91c08ec039c38ff6.svg">
        <h2>Haravan - Đăng nhập</h2>
        <br>
        <p style="color: red">
            <c:if test="${not empty loginError}">
                ${loginError}
            </c:if>
        </p>
        <br>
        <p>Xin chào, vui lòng nhập thông tin đăng nhập</p>
        <br>

            <form action="store?action=login" method="post">
                <input type="text" name="username" id="usernameInput" placeholder="Tên đăng nhập" required/>
                <br>
                <input type="password" name="password" id="passwordInput" placeholder="Mật khẩu" required/>
                <br>
                <button type="submit" id="actionLogin">Đăng nhập</button>
            </form>

        <p id="linkDangKy">Chưa có tài khoản Haravan? <a href="store?action=signUp">Đăng ký ngay</a></p>
        <p id="footer">This site is protected by reCAPTCHA and the Google Privacy <br> Policy and Terms of Service apply.</p>
    </div>
</div>
</body>
</html>
