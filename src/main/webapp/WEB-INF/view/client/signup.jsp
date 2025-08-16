<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${env}/client/bootstrap/bootstrap.min.css">

    <!-- Css -->
    <link rel="stylesheet" href="${env}/client/css/Sign_up.css">

    <!-- JQuery -->
    <link rel="stylesheet" href="${env}/client/js/jquery-3.6.0.min.js">
    <title>Sign Up</title>
</head>
<body>
<div class="singup border">
    <div class="signup__title fs-4 text-center fw-bold ">
        Đăng ký tài khoản
    </div>
    <div class="signup__content">
        <div class="it1 signup__content--item border d-flex align-items-center gap-4">
            <div class="signup__content--left"></div>
            <div class="item__icon">
                <img src="${env}/client/images/sign_in/User.png" alt="logo">
            </div>
            <div class="gach border-start "></div>
            <div class="input">
                <input type="text" placeholder="Nhập tên đăng nhập " class="input__email">
            </div>
        </div>
    </div>
    <div class="signup__content">
        <div class="it1 signup__content--item border d-flex align-items-center gap-4">
            <div class="signup__content--left"></div>
            <div class="item__icon">
                <img src="${env}/client/images/sign_in/email.png" alt="logo">
            </div>
            <div class="gach border-start "></div>
            <div class="input">
                <input type="email" placeholder="Nhập  Email" class="input__email">
            </div>
        </div>
    </div>
    <div class="signup__content">
        <div class="it1 signup__content--item border d-flex align-items-center gap-4">
            <div class="signup__content--left"></div>
            <div class="item__icon">
                <img src="${env}/client/images/sign_in/key.png" alt="logo">
            </div>
            <div class="gach border-start "></div>
            <div class="input">
                <input type="password" placeholder="Nhập mật khẩu" class="input__email">
            </div>
        </div>
    </div>
    <div class="signup__content">
        <div class="it1 signup__content--item border d-flex align-items-center gap-4">
            <div class="signup__content--left"></div>
            <div class="item__icon">
                <img src="${env}/client/images/sign_in/key.png" alt="logo">
            </div>
            <div class="gach border-start "></div>
            <div class="input">
                <input type="password" placeholder="Nhập lại mật khẩu" class="input__email">
            </div>
        </div>
    </div>
    <div class="signup__content">
        <div class="signin">
            <span>Bạn đã có tài khoản?</span>
            <a href="./Sign_in.html">Đăng nhập ngay!</a>
        </div>
        <button type="submit" class="btn btn-primary but d-flex justify-content-center align-items-center gap-2 m-auto">
            <img src="${env}/client/images/sign_in/login.png" alt="logo">
            <span>Đăng ký</span>
        </button>
    </div>
</div>
<!-- Bootstrap -->
<script src="${env}/client/bootstrap/popper.min.js"></script>
<script src="${env}/client/bootstrap/bootstrap.min.js"></script>
</body>
</html>