<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
                        <a href="/client/homes">Trang chủ</a>
                    </li>
                    <li class="breadcrumb-item" aria-current="page">Phones</li>
                </ol>
            </nav>
        </div>
        <!-- main  -->
        <div class="main d-flex">
            <div class="d-none d-lg-block lefmenu">
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
                                Kích thước màn hình
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
                                            id="6.1inch"
                                    />
                                    <label class="form-check-label items__name" for="6.1inch">
                                        6.1 inch
                                    </label>
                                </div>
                                <!-- end -->
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="6.7inch"
                                    />
                                    <label class="form-check-label items__name" for="6.7inch">
                                        6.7 inch
                                    </label>
                                </div>
                                <!-- end -->
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="5.8inch"
                                    />
                                    <label class="form-check-label items__name" for="5.8inch">
                                        Dưới 5.8 inch
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
                                Ram
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
                                            id="64GB"
                                    />
                                    <label
                                            class="form-check-label items__name"
                                            for="64GB"
                                    >
                                        64GB
                                    </label>
                                </div>
                                <!-- end -->
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="128GB"
                                    />
                                    <label class="form-check-label items__name" for="128GB">
                                        128GB
                                    </label>
                                </div>
                                <!-- end -->
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="256GB"
                                    />
                                    <label class="form-check-label items__name" for="256GB">
                                        256GB
                                    </label>
                                </div>
                                <!-- end -->
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="512GB"
                                    />
                                    <label class="form-check-label items__name" for="512GB">
                                        512GB
                                    </label>
                                </div>
                                <!-- end -->
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="1T"
                                    />
                                    <label class="form-check-label items__name" for="1T">
                                        1T
                                    </label>
                                </div>
                                <!-- end -->
                            </div>
                        </div>
                    </div>
                    <!-- end -->
                    <!-- start -->
                    <div class="accordion-item left__item">
                        <h2 class="accordion-header" id="panelsStayOpen-headingPrice">
                            <button
                                    class="accordion-button collapsed"
                                    type="button"
                                    data-bs-toggle="collapse"
                                    data-bs-target="#panelsStayOpen-collapsePrice"
                                    aria-expanded="false"
                                    aria-controls="panelsStayOpen-collapsePrice"
                                    style="font-family: Inter"
                            >
                                Giá tiền
                            </button>
                        </h2>
                        <div
                                id="panelsStayOpen-collapsePrice"
                                class="accordion-collapse collapse"
                                aria-labelledby="panelsStayOpen-headingPrice"
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
                                            id="500"
                                    />
                                    <label
                                            class="form-check-label items__name"
                                            for="500"
                                    >
                                        Dưới $500
                                    </label>
                                </div>
                                <!-- end -->
                                <!-- start -->
                                <div class="form-check">
                                    <input
                                            class="form-check-input"
                                            type="checkbox"
                                            value=""
                                            id="501"
                                    />
                                    <label class="form-check-label items__name" for="501">
                                        Trên $500
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
                        class="main__product--list"
                >
                    <div class="row g-4">
                        <div class="col-lg-12">
                            <div class="row g-2">
                                <c:forEach var="product" items="${products}">
                                    <!-- start -->
                                    <div class="col-lg-4 main__product--item m-1">
                                        <div class="product__item--box">
                                            <div class="box__header d-flex justify-content-end">
                                                <a href="#">
                                                    <img src="${env}/client/images/home/Icon/heart.png" alt="logo" />
                                                </a>
                                            </div>
                                            <div class="box__img">
                                                <a href="/client/productdetails/${product.id}">
                                                    <img src="${env}/admin/images/product/${product.avatar}" alt="logo"/>
                                                </a>
                                            </div>
                                            <div class="box__details d-flex flex-column justify-content-between align-items-center">
                                                <div class="box__details--name text-center">
                                                        ${product.name}
                                                </div>
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
                <div class="paging d-flex justify-content-center align-items-center ">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination ">
                            <li class="page-item">
                                <a class="${1 eq currentPage ? 'd-none' : 'page-link'}" href="/client/products?page=${currentPage -1}" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                            <c:forEach begin="0" end="${totalPages -1}" varStatus="pageNum">
                                <li class="page-item">
                                    <a class="${(pageNum.index + 1) eq currentPage ? 'active page-link' : 'page-link'}"
                                       href="/client/products?page=${pageNum.index + 1}">${pageNum.index + 1}</a>
                                </li>
                            </c:forEach>

                            <li class="page-item">
                                <a class="${currentPage eq totalPages? 'd-none' : 'page-link'}" href="/client/products?page=${currentPage +1}" aria-label="Next">
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
