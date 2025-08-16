<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--css-->
    <jsp:include page="/WEB-INF/view/client/layout/css.jsp"></jsp:include>
    <link rel="stylesheet" href="${env}/client/css/products-page.css" />
    <link rel="stylesheet" href="${env}/client/css/Product_Details_Page.css">
    <title>Product Details</title>
</head>
<body>
<!--header-->
<jsp:include page="/WEB-INF/view/client/layout/header.jsp"></jsp:include>
<main>
    <div class="container">
        <!-- Breadcrumbs -->
        <div class="breadcrumb">
            <nav style="--bs-breadcrumb-divider: '>'" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="./home.html">Trang chủ</a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="./products-Page.html">Phones</a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="./products-Page.html">Apple</a>
                    </li>
                    <li class="breadcrumb-item" aria-current="page">iPhone 14 Pro Max</li>
                </ol>
            </nav>
        </div>
        <!-- Main -->

    </div>
    <div class="container">
        <div class="main__info d-flex justify-content-between">
            <div class="main__info--images">
                <img src="${env}/client/images/productsDetailsPage/main_product.png" alt="logo">
            </div>
            <div class="main__info--infos">
                <div class="infos__content fw-bold fs-1 mb-3">Apple iPhone 14 Pro Max</div>
                <div class="infos__price mb-3">
                    <span class="infos__price--success fs-2 fw-normal pe-3">$1399</span>
                    <span class="infos__price--x fs-4 fw-light text-decoration-line-through text-black-50">$1499</span>
                </div>
                <div class="infos__color d-flex gap-2 align-items-center mb-4">
                    <span class="title pe-3">Chọn màu: </span>
                    <span class="color bgr1"></span>
                    <span class="color bgr2" ></span>
                    <span class="color bgr3"></span>
                    <span class="color bgr4"></span>
                    <span class="color bgr5"></span>
                </div>
                <div class="infos__memory d-flex gap-3 justify-content-between mb-4">
                    <div class="tab-memory1">
                        <input type="radio" name="memory" class="btn-check" id="128GB" checked autocomplete="off" >
                        <label class="btn btn-outline-secondary d-flex justify-content-center align-items-center" for="128GB" style="width: 122px; height: 48px;">128GB</label><br>
                    </div>
                    <div class="tab-memory1">
                        <input type="radio" name="memory" class="btn-check" id="256GB"  autocomplete="off" style="width: 100%;">
                        <label class="btn btn-outline-secondary d-flex justify-content-center align-items-center" for="256GB" style="width: 122px; height: 48px;">256GB</label><br>
                    </div>
                    <div class="tab-memory1">
                        <input type="radio" name="memory" class="btn-check" id="512GB"  autocomplete="off">
                        <label class="btn btn-outline-secondary d-flex justify-content-center align-items-center" for="512GB" style="width: 122px; height: 48px;">512GB</label><br>
                    </div>
                    <div class="tab-memory1">
                        <input type="radio" name="memory" class="btn-check" id="1TB"  autocomplete="off">
                        <label class="btn btn-outline-secondary d-flex justify-content-center align-items-center" for="1TB" style="width: 122px; height: 48px;">1TB</label><br>
                    </div>
                </div>
                <div class="infos__details--gird mb-4">
                    <img src="${env}/client/images/productsDetailsPage/Details_Grid.png" alt="logo">
                </div>
                <div class="infos__text">Hiệu năng vượt trội nhờ màn hình lớn 6.7 inch và thời lượng pin sử dụng cả ngày dài. Chụp ảnh ấn tượng trong cả điều kiện thiếu sáng lẫn ánh sáng mạnh với hệ thống camera kép mới. Và còn nhiều điều tuyệt vời khác...</div>
                <div class="infos__btn d-flex justify-content-between">
                    <button type="button" class="btn btn-outline-dark nut">Thêm vào yêu thích</button>
                    <button type="button" class="btn btn-outline-dark nut">Thêm vào giỏ hàng</button>
                </div>
                <div class="infos__icons">
                    <img src="${env}/client/images/productsDetailsPage/Icons.png" alt="logo">
                </div>
            </div>
        </div>
    </div>
    <div class="details">
        <div class="container">
            <img src="${env}/client/images/productsDetailsPage/Content.png" alt="logo" class="details__img">
        </div>
    </div>
    <div class="Reviews">
        <div class="container">
            <div class="top">
                <img src="${env}/client/images/productsDetailsPage/Top.png" alt="logo">
            </div>
            <div class="Review">
                <img src="${env}/client/images/productsDetailsPage/Reviews.png" alt="logo">
            </div>

        </div>
    </div>
    <div class="container">
        <div class="discounts">
            <div class="discounts__title">Sản phẩm liên quan</div>
            <div class="discounts__products d-flex justify-content-between">
                <!-- start -->
                <div class="product__item">
                    <div class="product__item--box">
                        <div class="box__header d-flex justify-content-end">
                            <a href="#">
                                <img src="${env}/client/images/home/Icon/heart.png" alt="logo">
                            </a>
                        </div>
                        <div class="box__img">
                            <a href="#">
                                <img src="${env}/client/images/home/products/Iphone_14pro_Gold.png" alt="logo">
                            </a>
                        </div>
                        <div class="box__details d-flex flex-column justify-content-between align-items-center">
                            <div class="box__details--name text-center">
                                Apple iPhone 14 Pro 512GB Gold (MQ233)
                            </div>
                            <div class="box__details--price mt-3 mb-4">$1437</div>
                            <div class="box__details--btn d-flex justify-content-center align-items-center">Mua ngay</div>
                        </div>
                    </div>
                </div>
                <!-- end -->
                <!-- start -->
                <div class="product__item">
                    <div class="product__item--box">
                        <div class="box__header d-flex justify-content-end">
                            <a href="#">
                                <img src="${env}/client/images/home/Icon/heart.png" alt="logo">
                            </a>
                        </div>
                        <div class="box__img">
                            <a href="#">
                                <img src="${env}/client/images/home/products/AirPost_sliver.png" alt="logo">
                            </a>
                        </div>
                        <div class="box__details d-flex flex-column justify-content-between align-items-center">
                            <div class="box__details--name text-center">
                                AirPods Max Silver Starlight Aluminium
                            </div>
                            <div class="box__details--price mt-3 mb-4">$549</div>
                            <div class="box__details--btn d-flex justify-content-center align-items-center">Mua ngay</div>
                        </div>
                    </div>
                </div>
                <!-- end -->
                <!-- start -->
                <div class="product__item">
                    <div class="product__item--box">
                        <div class="box__header d-flex justify-content-end">
                            <a href="#">
                                <img src="${env}/client/images/home/Icon/heart.png" alt="logo">
                            </a>
                        </div>
                        <div class="box__img">
                            <a href="#">
                                <img src="${env}/client/images/home/products/AW_series9.png" alt="logo">
                            </a>
                        </div>
                        <div class="box__details d-flex flex-column justify-content-between align-items-center">
                            <div class="box__details--name text-center">
                                Apple Watch Series 9 GPS 41mm Starlight Aluminium
                            </div>
                            <div class="box__details--price mt-3 mb-4">$399</div>
                            <div class="box__details--btn d-flex justify-content-center align-items-center">Mua ngay</div>
                        </div>
                    </div>
                </div>
                <!-- end -->
                <!-- start -->
                <div class="product__item">
                    <div class="product__item--box">
                        <div class="box__header d-flex justify-content-end">
                            <a href="#">
                                <img src="${env}/client/images/home/Icon/heart.png" alt="logo">
                            </a>
                        </div>
                        <div class="box__img">
                            <a href="#">
                                <img src="${env}/client/images/home/products/Iphone_14pro_1TB_Gold.png" alt="logo">
                            </a>
                        </div>
                        <div class="box__details d-flex flex-column justify-content-between align-items-center">
                            <div class="box__details--name text-center">
                                Apple iPhone 14 Pro 1TB Gold (MQ2V3)
                            </div>
                            <div class="box__details--price mt-3 mb-4">$1499</div>
                            <div class="box__details--btn d-flex justify-content-center align-items-center">Mua ngay</div>
                        </div>
                    </div>
                </div>
                <!-- end -->
            </div>
        </div>
    </div>
</main>

<!--footer-->
<jsp:include page="/WEB-INF/view/client/layout/footer.jsp"></jsp:include>

<!--js-->
<jsp:include page="/WEB-INF/view/client/layout/js.jsp"></jsp:include>
</body>
</html>