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
                        <img src="${env}/client/images/checkout/payment/Location.png" alt="logo">
                    </a>
                    <div class="address__title text-muted ms-2">
                        <div class="address__title--step">Bước 1</div>
                        <div class="address__title--name">Address</div>
                    </div>
                </li>
                <li class="d-flex align-items-center">
                    <a href="/client/payment/shipping">
                        <img src="${env}/client/images/checkout/payment/Shipping.png" alt="logo">
                    </a>
                    <div class="address__title text-muted m-2">
                        <div class="address__title--step">Bước 2</div>
                        <div class="address__title--name">Shipping</div>
                    </div>
                </li>
                <li class="d-flex align-items-center">
                    <a href="/client/payment">
                        <img src="${env}/client/images/checkout/payment/Payment.png" alt="logo">
                    </a>
                    <div class="address__title  m-2">
                        <div class="address__title--step">Bước 3</div>
                        <div class="address__title--name">Payment</div>
                    </div>
                </li>
            </ul>
        </nav>
        <div class="address__main">

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