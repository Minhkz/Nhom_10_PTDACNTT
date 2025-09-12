<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${env}/client/bootstrap/bootstrap.min.css">

    <!-- Css -->
    <link rel="stylesheet" href="${env}/client/css/Sign_in.css">

    <!-- JQuery -->
    <link rel="stylesheet" href="${env}/client/js/jquery-3.6.0.min.js">
    <title>Sign In</title>
</head>
<body>
<div class="signin border">
    <div class="signin__title fs-4 fw-bold text-center">Đăng nhập</div>
    <div class="signin__content">
        <form action="/client/homes/signin" method="post">
            <div class="it1 signin__content--item border d-flex align-items-center gap-4">
                <div class="signin__content--left"></div>
                <div class="item__icon">
                    <img src="${env}/client/images/sign_in/email.png" alt="logo">
                </div>
                <div class="gach border-start "></div>
                <div class="input">
                    <input type="text" name="username" placeholder="Nhập tên đăng nhập hoặc Email" class="input__email">
                </div>
            </div>
            <div class="it2 signin__content--item border d-flex align-items-center gap-4">
                <div class="signin__content--left"></div>
                <div class="item__icon">
                    <img src="${env}/client/images/sign_in/key.png" alt="logo">
                </div>
                <div class="gach border-start "></div>
                <div class="input">
                    <input type="password" name="password" placeholder="Nhập mật khẩu của bạn" class="input__email">
                </div>
            <div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </div>
            </div>
            <div class="remember-forgot d-flex justify-content-between align-items-center ">
                <div class="remember">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
                        <label class="form-check-label " for="flexCheckChecked">
                            Ghi nhớ đăng nhập
                        </label>
                    </div>
                </div>
                <div class="forgot">
                    <a href="" class="text-dark">
                        Quên mật khẩu?
                    </a>
                </div>

            </div>
            <div class="signup">
                <span>Chưa có tài khoản?</span>
                <a href="/client/homes/signup">Đăng ký ngay!</a>
            </div>
            <button type="submit" class="btn btn-primary but d-flex justify-content-center align-items-center gap-2 m-auto">
                <img src="${env}/client/images/sign_in/login.png" alt="logo">
                <span>Đăng nhập</span>
            </button>
        </form>
    </div>
</div>

<!-- Bootstrap -->
<script src="${env}/client/bootstrap/popper.min.js"></script>
<script src="${env}/client/bootstrap/bootstrap.min.js"></script>
</body>
</html>