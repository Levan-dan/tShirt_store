<%--
  Created by IntelliJ IDEA.
  User: This  PC
  Date: 22/12/2024
  Time: 10:30 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <link rel="stylesheet" href="css/cart.css">
</head>
<body>
<h1>GIỎ HÀNG</h1>
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

    <tr>
      <td><input type="checkbox" name="choose"/></td>
      <td>Áo thun trơn</td>
      <td><img src="https://aoxuanhe.com/upload/product/axh-159/ao-thun-cotton-co-tron-ke-soc-3.jpg"></td>
      <td>150.000 VND</td>
      <td>1</td>
      <td>150.000 VND</td>
      <td><button><a>Xóa</a></button></td>
    </tr>

  </table>
</div>

<div id="footerCart">
  <div id="sum">
    <h2>Tổng cộng :  </h2>
    <p>150.000 VND</p>

  </div>
  <div>
    <button>Đặt hàng</button>
  </div>



</div>
</body>
</html>
