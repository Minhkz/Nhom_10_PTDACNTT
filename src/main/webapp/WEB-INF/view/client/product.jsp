<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!--css-->
    <jsp:include page="/WEB-INF/view/client/layout/css.jsp"></jsp:include>
    <link rel="stylesheet" href="${env}/client/css/products-page.css" />

    <title>Trang sản phẩm</title>
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
                    <li class="breadcrumb-item" aria-current="page">Phones</li>
                </ol>
            </nav>
        </div>
        <!-- main  -->
        <div class="main d-flex">
            <div class="lefmenu">
                <div class="accordion" id="accordionPanelsStayOpenExample">
                    <!-- start -->
                    <div class="accordion-item left__item">
                        <h2 class="accordion-header" id="panelsStayOpen-headingBrand">
                            <button
                                    class="accordion-button collapsed"
                                    type="button"
                                    data-bs-toggle="collapse"
                                    data-bs-target="#panelsStayOpen-collapseBrand"
                                    aria-expanded="false"
                                    aria-controls="panelsStayOpen-collapseBrand"
                                    style="font-family: Inter"
                            >
                                Thương hiệu
                            </button>
                        </h2>
                        <div
                                id="panelsStayOpen-collapseBrand"
                                class="accordion-collapse collapse"
                                aria-labelledby="panelsStayOpen-headingBrand"
                        >
                            <div class="accordion-body">
                                <!-- body -->
                                <div
                                        class="leftmenu__search d-flex align-items-center gap-2"
                                >
                                    <a href="#" class="p-2">
                                        <img src="${env}/client/images/home/Icon/Search.png" alt="logo" />
                                    </a>
                                    <input
                                            type="text"
                                            placeholder="search..."
                                            class="header__search--input"
                                    />
                                </div>
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="apple"
                                            checked
                                    />
                                    <label class="form-check-label items__name" for="apple">
                                        Apple
                                    </label>
                                </div>
                                <!-- end -->
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="Xiaomi"
                                    />
                                    <label class="form-check-label items__name" for="Xiaomi">
                                        Xiaomi
                                    </label>
                                </div>
                                <!-- end -->
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="poco"
                                    />
                                    <label class="form-check-label items__name" for="poco">
                                        Poco
                                    </label>
                                </div>
                                <!-- end -->
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="oppo"
                                    />
                                    <label class="form-check-label items__name" for="oppo">
                                        OPPO
                                    </label>
                                </div>
                                <!-- end -->
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="honor"
                                    />
                                    <label class="form-check-label items__name" for="honor">
                                        Honor
                                    </label>
                                </div>
                                <!-- end -->
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="motorola"
                                    />
                                    <label
                                            class="form-check-label items__name"
                                            for="motorola"
                                    >
                                        Motorola
                                    </label>
                                </div>
                                <!-- end -->
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="nokia"
                                    />
                                    <label class="form-check-label items__name" for="nokia">
                                        Nokia
                                    </label>
                                </div>
                                <!-- end -->
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="realme"
                                    />
                                    <label class="form-check-label items__name" for="realme">
                                        Realme
                                    </label>
                                </div>
                                <!-- end -->
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="samsung"
                                    />
                                    <label class="form-check-label items__name" for="samsung">
                                        Samsung
                                    </label>
                                </div>
                                <!-- end -->
                            </div>
                        </div>
                    </div>
                    <!-- end -->
                    <!-- start -->
                    <div class="accordion-item left__item">
                        <h2 class="accordion-header" id="panelsStayOpen-headingPin">
                            <button
                                    class="accordion-button collapsed"
                                    type="button"
                                    data-bs-toggle="collapse"
                                    data-bs-target="#panelsStayOpen-collapsePin"
                                    aria-expanded="false"
                                    aria-controls="panelsStayOpen-collapsePin"
                                    style="font-family: Inter"
                            >
                                Dung lượng pin
                            </button>
                        </h2>
                        <div
                                id="panelsStayOpen-collapsePin"
                                class="accordion-collapse collapse"
                                aria-labelledby="panelsStayOpen-headingPin"
                        >
                            <div class="accordion-body">
                                <!-- body -->
                                <div
                                        class="leftmenu__search d-flex align-items-center gap-2"
                                >
                                    <a href="#" class="p-2">
                                        <img src="${env}/client/images/home/Icon/Search.png" alt="logo" />
                                    </a>
                                    <input
                                            type="text"
                                            placeholder="search..."
                                            class="header__search--input"
                                    />
                                </div>
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="3000mAh"
                                    />
                                    <label class="form-check-label items__name" for="3000mAh">
                                        3000mAh
                                    </label>
                                </div>
                                <!-- end -->
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="4000mAh"
                                    />
                                    <label class="form-check-label items__name" for="4000mAh">
                                        4000mAh
                                    </label>
                                </div>
                                <!-- end -->
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="5000mAh"
                                    />
                                    <label class="form-check-label items__name" for="5000mAh">
                                        5000mAh
                                    </label>
                                </div>
                                <!-- end -->
                            </div>
                        </div>
                    </div>
                    <!-- end -->
                    <!-- start -->
                    <div class="accordion-item left__item">
                        <h2 class="accordion-header" id="panelsStayOpen-headingScreen">
                            <button
                                    class="accordion-button collapsed"
                                    type="button"
                                    data-bs-toggle="collapse"
                                    data-bs-target="#panelsStayOpen-collapseScreen"
                                    aria-expanded="false"
                                    aria-controls="panelsStayOpen-collapseScreen"
                                    style="font-family: Inter"
                            >
                                Loại màn hình
                            </button>
                        </h2>
                        <div
                                id="panelsStayOpen-collapseScreen"
                                class="accordion-collapse collapse"
                                aria-labelledby="panelsStayOpen-headingScreen"
                        >
                            <div class="accordion-body">
                                <!-- body -->
                                <div
                                        class="leftmenu__search d-flex align-items-center gap-2"
                                >
                                    <a href="#" class="p-2">
                                        <img src="${env}/client/images/home/Icon/Search.png" alt="logo" />
                                    </a>
                                    <input
                                            type="text"
                                            placeholder="search..."
                                            class="header__search--input"
                                    />
                                </div>
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="AMOLED"
                                    />
                                    <label class="form-check-label items__name" for="AMOLED">
                                        AMOLED
                                    </label>
                                </div>
                                <!-- end -->
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id=" IPS Quantum"
                                    />
                                    <label
                                            class="form-check-label items__name"
                                            for=" IPS Quantum"
                                    >
                                        IPS Quantum
                                    </label>
                                </div>
                                <!-- end -->
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="Super LCD"
                                    />
                                    <label class="form-check-label items__name" for="Super LCD">
                                        Super LCD
                                    </label>
                                </div>
                                <!-- end -->
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="LED-backlit IPS LCD"
                                    />
                                    <label class="form-check-label items__name" for="LED-backlit IPS LCD">
                                        LED-backlit IPS LCD
                                    </label>
                                </div>
                                <!-- end -->
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="ClearBlack"
                                    />
                                    <label class="form-check-label items__name" for="ClearBlack">
                                        ClearBlack
                                    </label>
                                </div>
                                <!-- end -->
                            </div>
                        </div>
                    </div>
                    <!-- end -->
                    <!-- start -->
                    <div class="accordion-item left__item">
                        <h2
                                class="accordion-header"
                                id="panelsStayOpen-headingDiagonal"
                        >
                            <button
                                    class="accordion-button collapsed"
                                    type="button"
                                    data-bs-toggle="collapse"
                                    data-bs-target="#panelsStayOpen-collapseDiagonal"
                                    aria-expanded="false"
                                    aria-controls="panelsStayOpen-collapseDiagonal"
                                    style="font-family: Inter"
                            >
                                Đường chéo màn hình
                            </button>
                        </h2>
                        <div
                                id="panelsStayOpen-collapseDiagonal"
                                class="accordion-collapse collapse"
                                aria-labelledby="panelsStayOpen-headingDiagonal"
                        >
                            <div class="accordion-body">
                                <!-- body -->
                                <div
                                        class="leftmenu__search d-flex align-items-center gap-2"
                                >
                                    <a href="#" class="p-2">
                                        <img src="${env}/client/images/home/Icon/Search.png" alt="logo" />
                                    </a>
                                    <input
                                            type="text"
                                            placeholder="search..."
                                            class="header__search--input"
                                    />
                                </div>
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="nokia"
                                    />
                                    <label class="form-check-label items__name" for="nokia">
                                        Nokia
                                    </label>
                                </div>
                                <!-- end -->
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="realme"
                                    />
                                    <label class="form-check-label items__name" for="realme">
                                        Realme
                                    </label>
                                </div>
                                <!-- end -->
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="samsung"
                                    />
                                    <label class="form-check-label items__name" for="samsung">
                                        Samsung
                                    </label>
                                </div>
                                <!-- end -->
                            </div>
                        </div>
                    </div>
                    <!-- end -->
                    <!-- start -->
                    <div class="accordion-item left__item">
                        <h2
                                class="accordion-header"
                                id="panelsStayOpen-headingProtection"
                        >
                            <button
                                    class="accordion-button collapsed"
                                    type="button"
                                    data-bs-toggle="collapse"
                                    data-bs-target="#panelsStayOpen-collapseProtection"
                                    aria-expanded="false"
                                    aria-controls="panelsStayOpen-collapseProtection"
                                    style="font-family: Inter"
                            >
                                Chuẩn bảo vệ
                            </button>
                        </h2>
                        <div
                                id="panelsStayOpen-collapseProtection"
                                class="accordion-collapse collapse"
                                aria-labelledby="panelsStayOpen-headingProtection"
                        >
                            <div class="accordion-body">
                                <!-- body -->
                                <div
                                        class="leftmenu__search d-flex align-items-center gap-2"
                                >
                                    <a href="#" class="p-2">
                                        <img src="${env}/client/images/home/Icon/Search.png" alt="logo" />
                                    </a>
                                    <input
                                            type="text"
                                            placeholder="search..."
                                            class="header__search--input"
                                    />
                                </div>
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="IP67"
                                    />
                                    <label class="form-check-label items__name" for="IP67">
                                        IP67
                                    </label>
                                </div>
                                <!-- end -->
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="IP68"
                                    />
                                    <label class="form-check-label items__name" for="IP68">
                                        IP68
                                    </label>
                                </div>
                                <!-- end -->
                            </div>
                        </div>
                    </div>
                    <!-- end -->
                    <!-- start -->
                    <div class="accordion-item left__item">
                        <h2 class="accordion-header" id="panelsStayOpen-headingMemory">
                            <button
                                    class="accordion-button collapsed"
                                    type="button"
                                    data-bs-toggle="collapse"
                                    data-bs-target="#panelsStayOpen-collapseMemory"
                                    aria-expanded="false"
                                    aria-controls="panelsStayOpen-collapseMemory"
                                    style="font-family: Inter"
                            >
                                Bộ nhớ trong
                            </button>
                        </h2>
                        <div
                                id="panelsStayOpen-collapseMemory"
                                class="accordion-collapse collapse"
                                aria-labelledby="panelsStayOpen-headingMemory"
                        >
                            <div class="accordion-body">
                                <!-- body -->
                                <div
                                        class="leftmenu__search d-flex align-items-center gap-2"
                                >
                                    <a href="#" class="p-2">
                                        <img src="${env}/client/images/home/Icon/Search.png" alt="logo" />
                                    </a>
                                    <input
                                            type="text"
                                            placeholder="search..."
                                            class="header__search--input"
                                    />
                                </div>
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="4GB"
                                    />
                                    <label
                                            class="form-check-label items__name"
                                            for="4GB"
                                    >
                                        4GB
                                    </label>
                                </div>
                                <!-- end -->
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="8GB"
                                    />
                                    <label class="form-check-label items__name" for="8GB">
                                        8GB
                                    </label>
                                </div>
                                <!-- end -->
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="16GB"
                                    />
                                    <label class="form-check-label items__name" for="16GB">
                                        16GB
                                    </label>
                                </div>
                                <!-- end -->
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="32GB"
                                    />
                                    <label class="form-check-label items__name" for="32GB">
                                        32GB
                                    </label>
                                </div>
                                <!-- end -->
                            </div>
                        </div>
                    </div>
                    <!-- end -->
                </div>
            </div>
            <div class="main__product">
                <div class="product__top d-flex justify-content-between">
                    <div class="product__top--left">Sản phẩm đã chọn:85</div>
                    <div class="product__top--right">
                        <div class="accordion-item product__top--rank">
                            <h2 class="accordion-header" id="panelsStayOpen-headingRank">
                                <button
                                        class="accordion-button collapsed"
                                        type="button"
                                        data-bs-toggle="collapse"
                                        data-bs-target="#panelsStayOpen-collapseRank"
                                        aria-expanded="false"
                                        aria-controls="panelsStayOpen-collapseRank"
                                        style="font-family: Inter"
                                >
                                    Lọc theo đánh giá
                                </button>
                            </h2>
                            <div
                                    id="panelsStayOpen-collapseRank"
                                    class="accordion-collapse collapse"
                                    aria-labelledby="panelsStayOpen-headingRank"
                            >
                                <div class="accordion-body">
                                    <!-- body -->
                                    <!-- start -->
                                    <div class="form-check">
                                        <input
                                                class="form-check-input"
                                                type="checkbox"
                                                value=""
                                                id="five"
                                                checked
                                        />
                                        <label class="form-check-label items__name" for="five">
                                            5 sao
                                        </label>
                                    </div>
                                    <!-- end -->
                                    <!-- start -->
                                    <div class="form-check">
                                        <input
                                                class="form-check-input"
                                                type="checkbox"
                                                value=""
                                                id="four"
                                        />
                                        <label class="form-check-label items__name" for="four">
                                            Từ 4 sao trở lên
                                        </label>
                                    </div>
                                    <!-- end -->
                                    <!-- start -->
                                    <div class="form-check">
                                        <input
                                                class="form-check-input"
                                                type="checkbox"
                                                value=""
                                                id="three"
                                        />
                                        <label class="form-check-label items__name" for="three">
                                            Từ 3 sao trở lên
                                        </label>
                                    </div>
                                    <!-- end -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div
                        class="main__product--list d-flex flex-wrap justify-content-between"
                >
                    <!-- start -->
                    <div class="main__product--item">
                        <div class="product__item--box">
                            <div class="box__header d-flex justify-content-end">
                                <a href="#">
                                    <img src="${env}/client/images/home/Icon/heart.png" alt="logo" />
                                </a>
                            </div>
                            <div class="box__img">
                                <a href="./Product_Details_Page.html">
                                    <img
                                            src="${env}/client/images/productsPage/products/Iphone_14 pro_Gold.png"
                                            alt="logo"
                                    />
                                </a>
                            </div>
                            <div
                                    class="box__details d-flex flex-column justify-content-between align-items-center"
                            >
                                <div class="box__details--name text-center">
                                    Apple iPhone 14 Pro 512GB Gold (MQ233)
                                </div>
                                <div class="box__details--price mt-3 mb-4">$1437</div>
                                <div
                                        class="box__details--btn d-flex justify-content-center align-items-center"
                                >
                                    Mua ngay
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end -->
                    <!-- start -->
                    <div class="main__product--item">
                        <div class="product__item--box">
                            <div class="box__header d-flex justify-content-end">
                                <a href="#">
                                    <img src="${env}/client/images/home/Icon/heart.png" alt="logo" />
                                </a>
                            </div>
                            <div class="box__img">
                                <a href="#">
                                    <img
                                            src="${env}/client/images/productsPage/products/IPhone_11_128G.png"
                                            alt="logo"
                                    />
                                </a>
                            </div>
                            <div
                                    class="box__details d-flex flex-column justify-content-between align-items-center"
                            >
                                <div class="box__details--name text-center">
                                    Apple iPhone 11 128GB White (MQ233)
                                </div>
                                <div class="box__details--price mt-3 mb-4">$510</div>
                                <div
                                        class="box__details--btn d-flex justify-content-center align-items-center"
                                >
                                    Mua ngay
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end -->
                    <!-- start -->
                    <div class="main__product--item">
                        <div class="product__item--box">
                            <div class="box__header d-flex justify-content-end">
                                <a href="#">
                                    <img src="${env}/client/images/home/Icon/heart.png" alt="logo" />
                                </a>
                            </div>
                            <div class="box__img">
                                <a href="#">
                                    <img
                                            src="${env}/client/images/productsPage/products/IPhone_11_128G.png"
                                            alt="logo"
                                    />
                                </a>
                            </div>
                            <div
                                    class="box__details d-flex flex-column justify-content-between align-items-center"
                            >
                                <div class="box__details--name text-center">
                                    Apple iPhone 11 128GB White(MQ233)

                                </div>
                                <div class="box__details--price mt-3 mb-4">$550</div>
                                <div
                                        class="box__details--btn d-flex justify-content-center align-items-center"
                                >
                                    Mua ngay
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end -->
                    <!-- start -->
                    <div class="main__product--item">
                        <div class="product__item--box">
                            <div class="box__header d-flex justify-content-end">
                                <a href="#">
                                    <img src="${env}/client/images/home/Icon/heart.png" alt="logo" />
                                </a>
                            </div>
                            <div class="box__img">
                                <a href="#">
                                    <img
                                            src="${env}/client/images/productsPage/products/Iphone_14pro_1TB_Gold.png"
                                            alt="logo"
                                    />
                                </a>
                            </div>
                            <div
                                    class="box__details d-flex flex-column justify-content-between align-items-center"
                            >
                                <div class="box__details--name text-center">
                                    Apple iPhone 14 Pro 1TB Gold (MQ2V3)
                                </div>
                                <div class="box__details--price mt-3 mb-4">$1499</div>
                                <div
                                        class="box__details--btn d-flex justify-content-center align-items-center"
                                >
                                    Mua ngay
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end -->
                    <!-- start -->
                    <div class="main__product--item">
                        <div class="product__item--box">
                            <div class="box__header d-flex justify-content-end">
                                <a href="#">
                                    <img src="${env}/client/images/home/Icon/heart.png" alt="logo" />
                                </a>
                            </div>
                            <div class="box__img">
                                <a href="#">
                                    <img
                                            src="${env}/client/images/productsPage/products/Iphone_14 pro_Gold.png"
                                            alt="logo"
                                    />
                                </a>
                            </div>
                            <div
                                    class="box__details d-flex flex-column justify-content-between align-items-center"
                            >
                                <div class="box__details--name text-center">
                                    Apple iPhone 14 Pro 1TB Gold (MQ2V3)
                                </div>
                                <div class="box__details--price mt-3 mb-4">$1399</div>
                                <div
                                        class="box__details--btn d-flex justify-content-center align-items-center"
                                >
                                    Mua ngay
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end -->
                    <!-- start -->
                    <div class="main__product--item">
                        <div class="product__item--box">
                            <div class="box__header d-flex justify-content-end">
                                <a href="#">
                                    <img src="${env}/client/images/home/Icon/heart.png" alt="logo" />
                                </a>
                            </div>
                            <div class="box__img">
                                <a href="./Product_Details_Page.html">
                                    <img
                                            src="${env}/client/images/home/products/Iphone_14pro_1.png"
                                            alt="logo"
                                    />
                                </a>
                            </div>
                            <div
                                    class="box__details d-flex flex-column justify-content-between align-items-center"
                            >
                                <div class="box__details--name text-center">
                                    Apple iPhone 14 Pro 128GB Deep Purple (MQ0G3)
                                </div>
                                <div class="box__details--price mt-3 mb-4">$1600</div>
                                <div
                                        class="box__details--btn d-flex justify-content-center align-items-center"
                                >
                                    Mua ngay
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end -->
                    <!-- start -->
                    <div class="main__product--item">
                        <div class="product__item--box">
                            <div class="box__header d-flex justify-content-end">
                                <a href="#">
                                    <img src="${env}/client/images/home/Icon/heart.png" alt="logo" />
                                </a>
                            </div>
                            <div class="box__img">
                                <a href="#">
                                    <img
                                            src="${env}/client/images/productsPage/products/Iphone13miniPink.png"
                                            alt="logo"
                                    />
                                </a>
                            </div>
                            <div
                                    class="box__details d-flex flex-column justify-content-between align-items-center"
                            >
                                <div class="box__details--name text-center">
                                    Apple iPhone 13 mini 128GB Pink (MLK23)
                                </div>
                                <div class="box__details--price mt-3 mb-4">$850</div>
                                <div
                                        class="box__details--btn d-flex justify-content-center align-items-center"
                                >
                                    Mua ngay
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end -->
                    <!-- start -->
                    <div class="main__product--item">
                        <div class="product__item--box">
                            <div class="box__header d-flex justify-content-end">
                                <a href="#">
                                    <img src="${env}/client/images/home/Icon/heart.png" alt="logo" />
                                </a>
                            </div>
                            <div class="box__img">
                                <a href="#">
                                    <img
                                            src="${env}/client/images/productsPage/products/Iphone14 pro_SpaceBlack.png"
                                            alt="logo"
                                    />
                                </a>
                            </div>
                            <div
                                    class="box__details d-flex flex-column justify-content-between align-items-center"
                            >
                                <div class="box__details--name text-center">
                                    Apple iPhone 14 Pro 256GB Space Black (MQ0T3)
                                </div>
                                <div class="box__details--price mt-3 mb-4">$1399</div>
                                <div
                                        class="box__details--btn d-flex justify-content-center align-items-center"
                                >
                                    Mua ngay
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end -->
                    <!-- start -->
                    <div class="main__product--item">
                        <div class="product__item--box">
                            <div class="box__header d-flex justify-content-end">
                                <a href="#">
                                    <img src="${env}/client/images/home/Icon/heart.png" alt="logo" />
                                </a>
                            </div>
                            <div class="box__img">
                                <a href="#">
                                    <img
                                            src="${env}/client/images/productsPage/products/Iphone_14pro_1TB_Gold.png"
                                            alt="logo"
                                    />
                                </a>
                            </div>
                            <div
                                    class="box__details d-flex flex-column justify-content-between align-items-center"
                            >
                                <div class="box__details--name text-center">
                                    Apple iPhone 14 Pro 256GB Silver (MQ103)
                                </div>
                                <div class="box__details--price mt-3 mb-4">$1399</div>
                                <div
                                        class="box__details--btn d-flex justify-content-center align-items-center"
                                >
                                    Mua ngay
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end -->
                </div>
                <div class="paging d-flex justify-content-center align-items-center ">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination ">
                            <li class="page-item">
                                <a class="page-link text-dark" href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                            <li class="page-item"><a class="page-link text-dark" href="#">1</a></li>
                            <li class="page-item"><a class="page-link text-dark" href="#">2</a></li>
                            <li class="page-item"><a class="page-link text-dark" href="#">3</a></li>
                            <li class="page-item">
                                <a class="page-link text-dark" href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
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
