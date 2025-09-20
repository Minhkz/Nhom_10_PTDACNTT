<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--css-->
    <jsp:include page="/WEB-INF/view/client/layout/css.jsp"></jsp:include>
    <title>My Iphone</title>
</head>
<body>
<!--header-->
<jsp:include page="/WEB-INF/view/client/layout/header.jsp"></jsp:include>

<main>
    <!-- Banner -->
    <div class="d-none d-lg-block banner1 border-top border-bottom">
        <div class="banner1__list">
            <div class="banner1__list--item">
                <a href="#">
                    <img src="${env}/client/images/home/banner/banner10.png" alt="logo">
                </a>
            </div>
            <div class="banner1__list--item">
                <a href="#">
                    <img src="${env}/client/images/home/banner/banner9.png" alt="logo">
                </a>
            </div>
            <div class="banner1__list--item">
                <a href="#">
                    <img src="${env}/client/images/home/banner/banner8.png" alt="logo">
                </a>
            </div>
            <div class="banner1__list--item">
                <a href="#">
                    <img src="${env}/client/images/home/banner/banner7.png" alt="logo">
                </a>
            </div>
            <div class="banner1__list--item">
                <a href="#">
                    <img src="${env}/client/images/home/banner/banner6.png" alt="logo">
                </a>
            </div>
        </div>
    </div>
    <!-- Main -->
    <div class="container">
        <div class="category">
            <div class="category__top d-flex bd-highlight ">
                <div class="p-2 flex-grow-1 bd-highlight category__top--title">Danh mục sản phẩm</div>
                <div class="p-2 bd-highlight">
                    <a href="#">
                        <img src="${env}/client/images/home/Icon/ArrowL.png" alt="logo">
                    </a>
                </div>
                <div class="p-2 bd-highlight">
                    <a href="#">
                        <img src="${env}/client/images/home/Icon/ArrowR.png" alt="logo">
                    </a>
                </div>
            </div>

            <div class="categories container py-4">
                <div class="row row-cols-2 row-cols-sm-3 row-cols-md-4 row-cols-lg-6 g-3">
                    <!-- start -->
                    <div class="col">
                        <div class="category__card d-flex flex-column justify-content-center align-items-center">
                            <div class="category__card--icon">
                                <a href="/client/products">
                                    <img src="${env}/client/images/home/Icon/Phones.png" alt="logo">
                                </a>
                            </div>
                            <div class="category__card--title">Phones</div>
                        </div>
                    </div>
                    <!-- end -->

                    <div class="col">
                        <div class="category__card d-flex flex-column justify-content-center align-items-center">
                            <div class="category__card--icon">
                                <a href="#">
                                    <img src="${env}/client/images/home/Icon/Smart Watches.png" alt="logo">
                                </a>
                            </div>
                            <div class="category__card--title">Smart Watches</div>
                        </div>
                    </div>

                    <div class="col">
                        <div class="category__card d-flex flex-column justify-content-center align-items-center">
                            <div class="category__card--icon">
                                <a href="#">
                                    <img src="${env}/client/images/home/Icon/Cameras.png" alt="logo">
                                </a>
                            </div>
                            <div class="category__card--title">Cameras</div>
                        </div>
                    </div>

                    <div class="col">
                        <div class="category__card d-flex flex-column justify-content-center align-items-center">
                            <div class="category__card--icon">
                                <a href="#">
                                    <img src="${env}/client/images/home/Icon/Headphones.png" alt="logo">
                                </a>
                            </div>
                            <div class="category__card--title">Headphones</div>
                        </div>
                    </div>

                    <div class="col">
                        <div class="category__card d-flex flex-column justify-content-center align-items-center">
                            <div class="category__card--icon">
                                <a href="#">
                                    <img src="${env}/client/images/home/Icon/Computers.png" alt="logo">
                                </a>
                            </div>
                            <div class="category__card--title">Computers</div>
                        </div>
                    </div>

                    <div class="col">
                        <div class="category__card d-flex flex-column justify-content-center align-items-center">
                            <div class="category__card--icon">
                                <a href="#">
                                    <img src="${env}/client/images/home/Icon/Gaming.png" alt="logo">
                                </a>
                            </div>
                            <div class="category__card--title">Gaming</div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            <!-- Tag -->
            <div class="tag ">
                <ul class="d-flex">
                    <li class="active">
                        <a href="#">Sản phẩm mới</a>
                    </li>
                    <li>
                        <a href="#"> Bán chạy</a>
                    </li>
                    <li>
                        <a href="#">Sản phẩm nổi bật</a>
                    </li>
                </ul>
            </div>
            <!-- Products -->
            <div class="products ">
                <div class="row g-4">
                    <div class="col-lg-12">
                        <div class="row g-4">
                            <c:forEach var="product" items="${products}">
                                <!-- start -->
                                <div class="col-md-6 col-lg-4 col-xl-3 product__item m-2">
                                    <div class="product__item--box">
                                        <div class="box__header d-flex justify-content-end">
                                            <button type="button"
                                                    class="border-0 bg-transparent heart__item"
                                                    data-id="${product.id}">
                                                <c:choose>
                                                    <c:when test="${fn:contains(wishlistId, product.id)}">
                                                        <img src="${env}/client/images/home/Icon/heart-solid-full.png" alt="logo">
                                                    </c:when>
                                                    <c:otherwise>
                                                        <img src="${env}/client/images/home/Icon/heart.png" alt="logo">
                                                    </c:otherwise>
                                                </c:choose>

                                            </button>
                                        </div>
                                        <div class="box__img">
                                            <a href="/client/productdetails/${product.id}">
                                                <img src="${env}/admin/images/product/${product.avatar}" alt="logo">
                                            </a>
                                        </div>
                                        <div class="box__details d-flex flex-column justify-content-between align-items-center">
                                            <div class="box__details--name text-center">${product.name}</div>
                                            <div class="box__details--price mt-3 mb-4">$${product.price}</div>
                                            <button type="button" class="btn btn-dark box__details--btn">Mua ngay</button>
                                        </div>
                                    </div>
                                </div>
                                <!-- end -->
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- Big banner -->
    <div class="d-none d-lg-flex bigBanner justify-content-between mt-5">
        <!-- start -->
        <div class="bigBanner__item">
            <div class="bigBanner__item--img">
                <a href="#">
                    <img src="${env}/client/images/home/products/Popular.png" alt="logo">
                </a>
            </div>
            <div class="bigBanner__item--details ">
                <div class="bigBanner__item--name">Phổ biến nhất</div>
                <div class="bigBanner__item--describe mt-3 mb-3">iPad sở hữu màn hình Retina 10.2 inch tuyệt đẹp, hiệu năng ấn tượng, hỗ trợ đa nhiệm và cực kỳ dễ sử dụng.</div>
                <button type="button" class="btn btn-outline-secondary bigBanner__item--btn">Mua ngay</button>
            </div>
        </div>
        <!-- end -->
        <!-- start -->
        <div class="bigBanner__item" id="banner2">
            <div class="bigBanner__item--img">
                <a href="#">
                    <img src="${env}/client/images/home/products/IPadPro.png" alt="logo">
                </a>
            </div>
            <div class="bigBanner__item--details ">
                <div class="bigBanner__item--name">Ipad Pro</div>
                <div class="bigBanner__item--describe mt-3 mb-3">iPad sở hữu màn hình Retina 10.2 inch tuyệt đẹp, hiệu năng ấn tượng, hỗ trợ đa nhiệm và cực kỳ dễ sử dụng.</div>
                <button type="button" class="btn btn-outline-secondary bigBanner__item--btn">Mua ngay</button>
            </div>
        </div>
        <!-- end -->
        <!-- start -->
        <div class="bigBanner__item" id="banner3">
            <div class="bigBanner__item--img">
                <a href="#">
                    <img src="${env}/client/images/home/products/SSGalaxy.png" alt="logo">
                </a>
            </div>
            <div class="bigBanner__item--details ">
                <div class="bigBanner__item--name">Samsung Galaxy </div>
                <div class="bigBanner__item--describe mt-3 mb-3">iPad sở hữu màn hình Retina 10.2 inch tuyệt đẹp, hiệu năng ấn tượng, hỗ trợ đa nhiệm và cực kỳ dễ sử dụng.</div>
                <button type="button" class="btn btn-outline-secondary bigBanner__item--btn">Mua ngay</button>
            </div>
        </div>
        <!-- end -->
        <!-- start -->
        <div class="bigBanner__item" id="banner4">
            <div class="bigBanner__item--img">
                <a href="#">
                    <img src="${env}/client/images/home/products/Macbook .png" alt="logo">
                </a>
            </div>
            <div class="bigBanner__item--details ">
                <div class="bigBanner__item--name">Macbook Pro</div>
                <div class="bigBanner__item--describe mt-3 mb-3">iPad sở hữu màn hình Retina 10.2 inch tuyệt đẹp, hiệu năng ấn tượng, hỗ trợ đa nhiệm và cực kỳ dễ sử dụng.</div>
                <button type="button" class="btn btn-outline-secondary bigBanner__item--btn">Mua ngay</button>
            </div>
        </div>
        <!-- end -->

    </div>

    <div class="container">
        <div class="discounts">
            <div class="discounts__title">Ưu đãi lên đến 50%</div>
            <div class="discounts__products ">
                <div class="row g-4">
                    <div class="col-lg-12">
                        <div class="row g-4">
                            <c:forEach var="productDis" items="${productDiss}">
                                <!-- start -->
                                <div class="col-md-6 col-lg-4 col-xl-3 product__item m-2">
                                    <div class="product__item--box">
                                        <div class="box__header d-flex justify-content-end">
                                            <button type="button"
                                                    class="border-0 bg-transparent heart__item"
                                                    data-id="${productDis.id}">
                                                <c:choose>
                                                    <c:when test="${fn:contains(wishlistId, productDis.id)}">
                                                        <img src="${env}/client/images/home/Icon/heart-solid-full.png" alt="logo">
                                                    </c:when>
                                                    <c:otherwise>
                                                        <img src="${env}/client/images/home/Icon/heart.png" alt="logo">
                                                    </c:otherwise>
                                                </c:choose>

                                            </button>
                                        </div>
                                        <div class="box__img">
                                            <a href="/client/productdetails/${productDis.id}">
                                                <img src="${env}/admin/images/product/${productDis.avatar}" alt="logo">
                                            </a>
                                        </div>
                                        <div class="box__details d-flex flex-column justify-content-between align-items-center">
                                            <div class="box__details--name text-center">${productDis.name}</div>
                                            <div class="box__details--price mt-3 mb-4">$${productDis.price}</div>
                                            <button type="button" class="btn btn-dark box__details--btn">Mua ngay</button>
                                        </div>
                                    </div>
                                </div>
                                <!-- end -->
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="bigBanner2">
        <div class="bigBanner2__item">
            <a href="#">
                <img src="${env}/client/images/home/banner/Big_Banner.png" alt="logo">
            </a>
        </div>
    </div>
</main>
<!-- Nút Scroll to Top -->
<button id="scrollTopBtn" title="Go to top">↑</button>
<!--Footer-->
<jsp:include page="/WEB-INF/view/client/layout/footer.jsp"></jsp:include>

<!--js-->
<jsp:include page="/WEB-INF/view/client/layout/js.jsp"></jsp:include>
<script>
    // Lấy phần tử nút
    let scrollBtn = document.getElementById("scrollTopBtn");

    // Hiện nút khi scroll xuống 200px
    window.onscroll = function() {
        if (document.body.scrollTop > 200 || document.documentElement.scrollTop > 200) {
            scrollBtn.style.display = "block";
        } else {
            scrollBtn.style.display = "none";
        }
    };

    // Khi click thì scroll về top
    scrollBtn.onclick = function() {
        window.scrollTo({
            top: 0,
            behavior: "smooth"
        });
    };

    $(document).ready(function () {
        $(".heart__item").click(function (e) {
            e.preventDefault();

            let btn = $(this);
            let img = btn.find("img");
            let productId = btn.data("id");

            $.ajax({
                url: "/client/homes/add-to-wishlist/" + productId,
                type: "POST",
                headers: {
                    "X-CSRF-TOKEN": "${_csrf.token}" // CSRF token
                },
                success: function (response) {
                    // Toggle icon
                    if (response.status === "added") {
                        img.attr("src", "${env}/client/images/home/Icon/heart-solid-full.png");
                    } else if (response.status === "removed") {
                        img.attr("src", "${env}/client/images/home/Icon/heart.png");
                    }
                },
                error: function () {
                    alert("Có lỗi xảy ra khi thêm vào wishlist!");
                }
            });
        });
    });
</script>
</body>
</html>