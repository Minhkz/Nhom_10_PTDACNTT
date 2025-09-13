<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- Header -->
<nav class="navbar navbar-expand-lg header">
    <div class="container d-flex justify-content-between align-items-center">
        <!-- Logo -->
        <a class="navbar-brand header__logo" href="/client/homes">
            <img src="${env}/client/images/logo.png" alt="logo" style="height: 66px;width: 66px;">
        </a>

        <!-- Nút toggle khi mobile -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mainNavbar"
                aria-controls="mainNavbar" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Nội dung navbar -->
        <div class="collapse navbar-collapse" id="mainNavbar">
            <!-- Search -->
            <div class="header__search d-flex align-items-center gap-2 ms-lg-4 my-3 my-lg-0">
                <a href="#" class="p-2">
                    <img src="${env}/client/images/home/Icon/Search.png" alt="search">
                </a>
                <input type="text" placeholder="Search..." class="header__search--input">
            </div>

            <!-- Menu chính -->
            <ul class="navbar-nav mx-lg-auto menu text-center text-lg-start">
                <li class="nav-item"><a class="nav-link" href="/client/homes">Trang chủ</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Giới thiệu</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Liên hệ</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Tin tức</a></li>
            </ul>

            <!-- Icon phải -->
            <c:if test="${not empty pageContext.request.userPrincipal}">
                <ul class="navbar-nav ms-lg-auto d-flex flex-row gap-4 align-items-center menu--icons">
                    <li class="nav-item">
                        <a href="#"><img src="${env}/client/images/home/Icon/heart.png" alt="heart"/></a>
                    </li>
                    <li class="nav-item position-relative icons__cart">
                        <a href="./Shopping_Cart.html">
                            <img src="${env}/client/images/home/Icon/cart.png" alt="cart"/>
                        </a>
                        <div class="quantity d-flex justify-content-center align-items-center">0</div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link p-0" href="#" id="userDropdown" role="button" data-bs-toggle="dropdown"
                           aria-expanded="false">
                            <img src="${env}/client/images/home/Icon/User.png" alt="user" width="40" height="40"/>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="userDropdown">
                            <li><a class="dropdown-item" href="pages-profile.html">Profile</a></li>
                            <li><a class="dropdown-item" href="#">Analytics</a></li>
                            <li><hr class="dropdown-divider"/></li>
                            <li><a class="dropdown-item" href="pages-settings.html">Settings & Privacy</a></li>
                            <li><a class="dropdown-item" href="#">Help</a></li>
                            <li>
                                <form action="/logout" method="post">
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                    <button  class="dropdown-item">Sign out</button>
                                </form>
                            </li>
                        </ul>
                    </li>
                </ul>
            </c:if>
            <c:if test="${empty pageContext.request.userPrincipal}">
                <a href="/client/homes/signin" class="text-black">Đăng nhập</a>
            </c:if>
        </div>
    </div>
</nav>
