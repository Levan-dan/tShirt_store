<%--
  Created by IntelliJ IDEA.
  User: This  PC
  Date: 17/12/2024
  Time: 6:22 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/userHome.css">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div id="khungCustomer">
    <div id="header" style="position: fixed; width: 100%; z-index: 1000; ">
        <img  id="logoImage"
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
            <input id="search-input" type="text" name="tenSanPham" required placeholder="Tìm kiếm..."/>
            <button id="search-button" type="submit">Tìm kiếm</button>
        </form>


        <a href="store?action=cart"><img class="logoCart" src="https://bizweb.dktcdn.net/100/344/969/themes/705911/assets/carts.svg?1723002522273"></a>
        <img class="logoCart" src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/User_icon-cp.svg/1656px-User_icon-cp.svg.png">
    </div>


    <div style="padding-top: 73px" id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="https://wallpapers.com/images/hd/bts-dynamite-pastel-pink-n6ty2le3zkoqmd2b.jpg" alt="First slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="https://img4.thuthuatphanmem.vn/uploads/2019/12/28/hinh-nen-nhom-nhac-nam-than-bts-cuc-dep_014048195.jpg" alt="Second slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="https://img4.thuthuatphanmem.vn/uploads/2019/12/28/hinh-nen-may-tinh-bts-4k_014044851.jpg" alt="Third slide">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <!-- Popper.js -->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
        <!-- Bootstrap JS -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <!-- Custom JS -->
        <script src="javascrip/scriptsUserHome.js"></script>
    </div>

    <div id="productNew">
        <h2 style="padding-top: 10px">HÀNG MỚI</h2>
            <div style="display: flex; flex-wrap: wrap; gap: 30px; justify-content: center;">
                <c:forEach var="product" items="${showListProduc}">
                    <div style="border: 1px black solid; width: 450px; text-align: center; padding: 10px; box-sizing: border-box;  box-shadow: 0 4px 6px rgba(0, 0.3, 0.4, 0.4);">
                        <img id="thu" style="width: 100%; height: 430px;" src="${product.image}" alt="${product.nameProduct}" />
                        <h5 style="padding-top: 7px">${product.nameProduct}</h5>
                        <p style="color: red">Giá: ${product.price}00 VNĐ</p>
                        <button  style="background-color: palevioletred; border-radius: 5px; color: white; width: 120px; box-shadow: 0 4px 6px rgba(0, 0.3, 0.4, 0.4); height: 30px; font-size: 19px" ><a href="store?action=info&idProduct=${product.idProduct}" style="color: white">Chi Tiết</a></button>
                    </div>
                </c:forEach>
            </div>

    </div>

    <div style="padding-top: 10px" id="bestSelling">
        <h2>BÁN CHẠY</h2>
            <div style="display: flex; flex-wrap: wrap; gap: 30px; justify-content: center;">
                <c:forEach var="product" items="${showListProduc}">
                    <div style="border: 1px black solid; width: 450px; text-align: center; padding: 10px; box-sizing: border-box;">
                        <img style="width: 100%; height: 430px;" src="${product.image}" alt="${product.nameProduct}" />
                        <h5 style="padding-top: 7px">${product.nameProduct}</h5>
                        <p style="color: red">Giá: ${product.price}00 VNĐ</p>
                        <button style="background-color: palevioletred; border-radius: 5px; color: white; width: 120px; box-shadow: 0 4px 6px rgba(0, 0.3, 0.4, 0.4); height: 30px; font-size: 19px" ><a href="store?action=info&idProduct=${product.idProduct}" style="color: white">Chi Tiết</a></button>
                    </div>
                </c:forEach>
            </div>
    </div>

    <div style="padding-top: 10px" id="productMale">
        <h2>ĐỒ NAM</h2>
            <div style="display: flex; flex-wrap: wrap; gap: 30px; justify-content: center;">
                <c:forEach var="product" items="${showListProduc}">
                    <div style="border: 1px black solid; width: 450px; text-align: center; padding: 10px; box-sizing: border-box;">
                        <img style="width: 100%; height: 430px;" src="${product.image}" alt="${product.nameProduct}" />
                        <h5 style="padding-top: 7px">${product.nameProduct}</h5>
                        <p style="color: red">Giá: ${product.price}00 VNĐ</p>
                        <button style="background-color: palevioletred; border-radius: 5px; color: white; width: 120px; box-shadow: 0 4px 6px rgba(0, 0.3, 0.4, 0.4); height: 30px; font-size: 19px" ><a href="store?action=info&idProduct=${product.idProduct}" style="color: white">Chi Tiết</a></button>
                    </div>
                </c:forEach>
            </div>
    </div>

    <div style="padding-top: 10px" id="productFemale">
        <h2>ĐỒ NỮ</h2>
            <div style="display: flex; flex-wrap: wrap; gap: 30px; justify-content: center;">
                <c:forEach var="product" items="${showListProduc}">
                    <div style="border: 1px black solid; width: 450px; text-align: center; padding: 10px; box-sizing: border-box;">
                        <img style="width: 100%; height: 430px;" src="${product.image}" alt="${product.nameProduct}" />
                        <h5 style="padding-top: 7px">${product.nameProduct}</h5>
                        <p style="color: red">Giá: ${product.price}00 VNĐ</p>
                        <button style="background-color: palevioletred; border-radius: 5px; color: white; width: 120px; box-shadow: 0 4px 6px rgba(0, 0.3, 0.4, 0.4); height: 30px; font-size: 19px" ><a href="store?action=info&idProduct=${product.idProduct}" style="color: white">Chi Tiết</a></button>
                    </div>
                </c:forEach>
            </div>
    </div>

    <div style="padding-top: 10px" id="productChildren">
        <h2>ĐỒ TRẺ EM</h2>
            <div style="display: flex; flex-wrap: wrap; gap: 30px; justify-content: center;">
                <c:forEach var="product" items="${showListProduc}">
                    <div style="border: 1px black solid; width: 450px; text-align: center; padding: 10px; box-sizing: border-box;">
                        <img style="width: 100%; height: 430px;" src="${product.image}" alt="${product.nameProduct}" />
                        <h5 style="padding-top: 7px">${product.nameProduct}</h5>
                        <p style="color: red">Giá: ${product.price}00 VNĐ</p>
                        <button style="background-color: palevioletred; border-radius: 5px; color: white; width: 120px; box-shadow: 0 4px 6px rgba(0, 0.3, 0.4, 0.4); height: 30px; font-size: 19px" ><a href="store?action=info&idProduct=${product.idProduct}" style="color: white">Chi Tiết</a></button>
                    </div>
                </c:forEach>
            </div>
    </div>




    <div class="my-5">
        <!-- Footer -->
        <footer
                class="text-center text-lg-start text-dark"
                style="background-color: #ECEFF1; width: 100%; margin: 0px; padding: 0px"
        >
            <!-- Section: Social media -->
            <section
                    class="d-flex justify-content-between p-4 text-white"
                    style="background-color: #21D192"
            >
                <!-- Left -->
                <div class="me-5">
                    <span>Hợp tác thân thiện, tiện lợi, đưa khách hàng đến trải nghiệm tốt nhất:</span>
                </div>
                <!-- Left -->

                <!-- Right -->
                <div>
                    <a href="" class="text-white me-4">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="" class="text-white me-4">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="" class="text-white me-4">
                        <i class="fab fa-google"></i>
                    </a>
                    <a href="" class="text-white me-4">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a href="" class="text-white me-4">
                        <i class="fab fa-linkedin"></i>
                    </a>
                    <a href="" class="text-white me-4">
                        <i class="fab fa-github"></i>
                    </a>
                </div>
                <!-- Right -->
            </section>
            <!-- Section: Social media -->

            <!-- Section: Links  -->
            <section class="">
                <div class="container text-center text-md-start mt-5">
                    <!-- Grid row -->
                    <div class="row mt-3">
                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                            <!-- Content -->
                            <h6 class="text-uppercase fw-bold">HARAVAN</h6>
                            <hr
                                    class="mb-4 mt-0 d-inline-block mx-auto"
                                    style="width: 60px; background-color: #7c4dff; height: 2px"
                            />
                            <p>
                                Haravan cam kết đem đến cho quý khách những trải nghiệm thân thiện và hài lòng nhất,
                                nếu có vấn đề gì khi trải nghiệm sản phẩm bên Haravan xin háy phàn hồi sớm nhất.
                            </p>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold">Sản Phẩm</h6>
                            <hr
                                    class="mb-4 mt-0 d-inline-block mx-auto"
                                    style="width: 60px; background-color: #7c4dff; height: 2px"
                            />
                            <p>
                                <a href="#!" class="text-dark">Chất lượng</a>
                            </p>
                            <p>
                                <a href="#!" class="text-dark">Đúng mô tả</a>
                            </p>
                            <p>
                                <a href="#!" class="text-dark">Uy tín</a>
                            </p>
                            <p>
                                <a href="#!" class="text-dark">An toàn</a>
                            </p>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold">Trợ Giúp</h6>
                            <hr
                                    class="mb-4 mt-0 d-inline-block mx-auto"
                                    style="width: 60px; background-color: #7c4dff; height: 2px"
                            />
                            <p>
                                <a href="#!" class="text-dark">Vấn đề sản phẩm</a>
                            </p>
                            <p>
                                <a href="#!" class="text-dark">Đổi trả</a>
                            </p>
                            <p>
                                <a href="#!" class="text-dark">Khyếu lại</a>
                            </p>
                            <p>
                                <a href="#!" class="text-dark">Tư vấn</a>
                            </p>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold">Thông Tin</h6>
                            <hr
                                    class="mb-4 mt-0 d-inline-block mx-auto"
                                    style="width: 60px; background-color: #7c4dff; height: 2px"
                            />
                            <p><i class="fas fa-home mr-3"></i> Hà Nội, ...Ngày...tháng..năm..</p>
                            <p><i class="fas fa-envelope mr-3"></i> levandanhh2@gmail.com</p>
                            <p><i class="fas fa-phone mr-3"></i> + 0328 640 157</p>
                            <p><i class="fas fa-print mr-3"></i> + 0974 218 405</p>
                        </div>
                        <!-- Grid column -->
                    </div>
                    <!-- Grid row -->
                </div>
            </section>
            <!-- Section: Links  -->

            <!-- Copyright -->
            <div
                    class="text-center p-3"
                    style="background-color: rgba(0, 0, 0, 0.2)"
            >
                © 2020 Copyright:
                <a class="text-dark" href="https://mdbootstrap.com/"
                >Haravan.com</a
                >
            </div>
            <!-- Copyright -->
        </footer>
        <!-- Footer -->
    </div>
    <!-- End of .container -->

</div>

</body>
</html>
