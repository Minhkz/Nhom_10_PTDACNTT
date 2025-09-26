<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
    <div class="container">
        <nav>
            <ul class="d-flex justify-content-between align-items-center">
                <li class="d-flex align-items-center">
                    <a href="/client/payment/address">
                        <img src="${env}/client/images/checkout/address/Location.png" alt="logo">
                    </a>
                    <div class="address__title  ms-2">
                        <div class="address__title--step">Bước 1</div>
                        <div class="address__title--name">Address</div>
                    </div>
                </li>
                <li class="d-flex align-items-center">
                    <a href="/client/payment/shipping">
                        <img src="${env}/client/images/checkout/address/Shipping.png" alt="logo">
                    </a>
                    <div class="address__title text-muted m-2">
                        <div class="address__title--step">Bước 2</div>
                        <div class="address__title--name">Shipping</div>
                    </div>
                </li>
                <li class="d-flex align-items-center">
                    <a href="/client/payment">
                        <img src="${env}/client/images/checkout/address/Payment.png" alt="logo">
                    </a>
                    <div class="address__title text-muted m-2">
                        <div class="address__title--step">Bước 3</div>
                        <div class="address__title--name">Payment</div>
                    </div>
                </li>
            </ul>
        </nav>
        <div class="address__main">
            <div class="address__main--title" style="margin-bottom: 32px">
                Chọn địa chỉ
            </div>
            <div class="address__main--content d-flex justify-content-between align-items-center" style="height: 144px; background-color: #F6F6F6; border-radius: 5px; margin-bottom: 24px">
                <div class="main__content--left d-flex p-4">
                    <input type="radio" name="address" checked="checked" value="" style="width: 24px; height: 24px;"/>
                    <div class="ms-4">
                        <div class="d-flex align-items-center">
                            <strong>
                                2118 Thornridge
                            </strong>
                            <div class="status d-flex justify-content-center align-items-center"  style=" width: 53px; height: 23px;background-color: black; color: white; border-radius: 5px; font-size: 12px; margin-left: 16px">
                                HOME
                            </div>
                        </div>
                        <p>2118 Thornridge Cir. Syracuse, Connecticut 35624</p>
                    </div>
                </div>
                <div class="address__main--right me-4">
                    <a href="#">
                        <img src="${env}/client/images/checkout/address/To_edit.png" alt="logo">
                    </a>
                    <a href="#">
                        <img src="${env}/client/images/checkout/address/Close.png" alt="logo">
                    </a>
                </div>
            </div>
            <div style="margin-bottom: 64px">
                <a href="#">
                    <img src="${env}/client/images/checkout/address/Add_New_Line.png" alt="logo">
                </a>
            </div>
            <div class="d-flex justify-content-end align-items-center mb-5">
                <form method="get" action="/client/carts">
                    <button type="submit" class="btn btn-outline-dark" style="width: 208px; height: 64px; margin-right: 24px">Back</button>
                </form>
                <form action="/client/payment/shipping" method="GET">
                    <button type="submit" class="btn btn-dark" style="width: 208px; height: 64px;">Next</button>
                </form>

            </div>
        </div>
    </div>
</main>
<!-- Nút Scroll to Top -->
<button id="scrollTopBtn" title="Go to top">↑</button>
<!--Footer-->
<jsp:include page="/WEB-INF/view/client/layout/footer.jsp"></jsp:include>

<!--js-->
<jsp:include page="/WEB-INF/view/client/layout/js.jsp"></jsp:include>
</body>
</html>