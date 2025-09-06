<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
                        <a href="/client/homes">Trang chủ</a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="/client/products">Phones</a>
                    </li>
                    <li class="breadcrumb-item" aria-current="page">iPhone 14 Pro Max</li>
                </ol>
            </nav>
        </div>
        <!-- Main -->

    </div>
    <div class="container">
        <!-- Main -->
        <div class="row">
            <div class="col-md-12 col-lg-6 g-2 main__left">
                <img src="${env}/admin/images/product/${productd.avatar}" alt="logo" width="414px">
            </div>
            <div class="col-md-12 col-lg-6 g-2 main__right">
                <div class="name m-2">
                    <h1>${productd.name}</h1>
                </div>
                <div class="price m-2">
                    <h2>$${productd.price}</h2>
                </div>
                <div class="shortDesc m-2">
                    ${productd.shortDesc}
                </div>

                <div class="counter d-flex align-items-center gap-2">
                    <button type="button" class="btn minus d-flex justify-content-center align-items-center">-</button>
                    <input type="text" value="   1" name="quanity" class="number">
                    <button type="button" class="btn plus d-flex justify-content-center align-items-center">+</button>
                </div>
                <div class="infos__btn d-flex justify-content-between m-2">
                    <button type="button" class="btn btn-outline-dark nut">Thêm vào yêu thích</button>
                    <button type="button" class="btn btn-outline-dark nut">Thêm vào giỏ hàng</button>
                    <button type="button" class="btn btn-outline-dark nut">Mua ngay</button>
                </div>
                <div class="infos__icons m-2">
                    <img src="${env}/client/images/productsDetailsPage/Icons.png" alt="logo">
                </div>
            </div>
        </div>
    </div>

    <div class="details">
        <div class="container">
            <div class="details__desc">
                <h1>Thông tin chi tiết</h1>
                <p>${productd.detailDesc}</p>
            </div>
            <div class="details__info">
                <h1>Thông số</h1>
                <div class="d-flex justify-content-between align-items-center m-2 border-bottom details__info--color">
                    <p class="m-0">Color</p>
                    <p class="m-0">${productd.specification.color}</p>
                </div>
                <div class="d-flex justify-content-between align-items-center m-2 border-bottom details__info--pin">
                    <p class="m-0">Pin</p>
                    <p class="m-0">${productd.specification.pin} mAh</p>
                </div>
                <div class="d-flex justify-content-between align-items-center m-2 border-bottom details__info--screens">
                    <p class="m-0">Screen size</p>
                    <p class="m-0">${productd.specification.screenSize} inchs</p>
                </div>
                <div class="d-flex justify-content-between align-items-center m-2 border-bottom details__info--screent">
                    <p class="m-0">Screen type</p>
                    <p class="m-0">${productd.specification.screenType}</p>
                </div>
                <div class="d-flex justify-content-between align-items-center m-2 border-bottom details__info--protection">
                    <p class="m-0">Protection</p>
                    <p class="m-0">${productd.specification.protection}</p>
                </div>
                <div class="d-flex justify-content-between align-items-center m-2 border-bottom details__info--rom">
                    <p class="m-0">Rom</p>
                    <p class="m-0">${productd.specification.ram} GB</p>
                </div>
            </div>
        </div>
    </div>
    <div class="Reviews">
        <div class="container">
            <div class="top">
                <h1 class="m-2">Đánh giá sản phẩm</h1>
                <img src="${env}/client/images/productsDetailsPage/Overall Rating.png">
                <div class="input_comment border m-2" style="height: 64px">
                    <form action="" method="post">
                        <input type="text" name="comment" id="comment"  placeholder="Hãy để lại bình luận cho sản phẩm">
                    </form>
                </div>
            </div>
            <div class="Review">
                <img src="${env}/client/images/productsDetailsPage/Reviews.png" alt="logo">
            </div>

        </div>
    </div>
    <div class="container">
        <div class="discounts">
            <div class="discounts__title">Sản phẩm liên quan</div>
            <div class="discounts__products">
                <div class="row g-4">
                    <div class="col-lg-12">
                        <div class="row g-4">
                            <c:forEach var="product" items="${products}">
                                <!-- start -->
                                <div class="col-md-6 col-lg-4 col-xl-3 product__item m-2">
                                    <div class="product__item--box">
                                        <div class="box__header d-flex justify-content-end">
                                            <a href="/admin">
                                                <img src="${env}/client/images/home/Icon/heart.png" alt="logo">
                                            </a>
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
</main>

<!--footer-->
<jsp:include page="/WEB-INF/view/client/layout/footer.jsp"></jsp:include>

<!--js-->
<jsp:include page="/WEB-INF/view/client/layout/js.jsp"></jsp:include>
</body>
</html>