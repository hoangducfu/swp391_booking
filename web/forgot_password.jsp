<%-- 
    Document   : forgot_password
    Created on : May 20, 2024, 11:23:13 AM
    Author     : hoangduc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!DOCTYPE html>
<html lang="en" class="h-100">

    <!-- Mirrored from www.gambolthemes.net/html-items/barren-html/disable-demo-link/forgot_password.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 09 May 2024 08:09:04 GMT -->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, shrink-to-fit=9">
        <meta name="description" content="Gambolthemes">
        <meta name="author" content="Gambolthemes">		
        <title>Barren - Simple Online Event Ticketing System</title>

        <!-- Favicon Icon -->
        <link rel="icon" type="image/png" href="images/fav.png">

        <!-- Stylesheets -->
        <link rel="preconnect" href="https://fonts.googleapis.com/">
        <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap" rel="stylesheet">
        <link href='vendor/unicons-2.0.1/css/unicons.css' rel='stylesheet'>
        <link href="css/style.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
        <link href="css/night-mode.css" rel="stylesheet">

        <!-- Vendor Stylesheets -->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
        <link href="vendor/OwlCarousel/assets/owl.carousel.css" rel="stylesheet">
        <link href="vendor/OwlCarousel/assets/owl.theme.default.min.css" rel="stylesheet">
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="vendor/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet">		

    </head>

    <body>				
        <div class="form-wrapper">
            <div class="app-form">
                <div>
                    <img style="height: 95%; width:  80vh;" src="${pageContext.request.contextPath}/image/icon/ve.jpg" alt="">
                </div>

                <div class="app-form-content">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-10 col-md-10">
                                <div class="app-top-items">
                                    <a href="index.html">
                                        <div class="sign-logo" id="logo">
                                            <img src="images/logo.svg" alt="">
                                            <img class="logo-inverse" src="images/dark-logo.svg" alt="">
                                        </div>
                                    </a>
                                    <div class="app-top-right-link">
                                        <a class="sidebar-register-link" href="loginGoogleHandler"><i class="fa-regular fa-circle-left me-2"></i>Quay về đăng nhập</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-5 col-lg-6 col-md-7">
                                <div class="registration">
                                    <form action="forgot" method="post">
                                        <h2 class="registration-title">Quên mật khẩu</h2>
                                        <div class="form-group mt-5">
                                            <label class="form-label">Nhập Email*</label>
                                            <input class="form-control h_50" type="email" name="username" placeholder="Nhập email của bạn tại đây" value="">																								
                                        </div>
                                        <div class="col-lg-12 col-md-12">	
                                            <div class="form-group mt-4">
                                                <div class="field-password">
                                                    <label class="form-label">Mật khẩu mới*</label>
                                                </div>
                                                <div class="loc-group position-relative">
                                                    <input class="form-control h_50" type="password" name="password" placeholder="" required>
                                                </div>
                                            </div>

                                        </div>

                                        <div class="col-lg-12 col-md-12">	
                                            <div class="form-group mt-4">
                                                <div class="field-password">
                                                    <label class="form-label">Xác nhận mật khẩu*</label>
                                                </div>
                                                <div class="loc-group position-relative">
                                                    <input class="form-control h_50" type="password" name="repassword" required placeholder="">
                                                </div>
                                            </div>
                                        </div>
                                        <button class="main-btn btn-hover w-100 mt-4" type="submit">Tiếp tục</button>
                                    </form>
                                    
                                </div>							
                            </div>
                        </div>
                    </div>
                    <div class="copyright-footer">
                    </div>
                </div>			
            </div>
        </div>

        <script src="js/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="vendor/OwlCarousel/owl.carousel.js"></script>
        <script src="vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>	
        <script src="js/custom.js"></script>
        <script src="js/night-mode.js"></script>

    </body>

    <!-- Mirrored from www.gambolthemes.net/html-items/barren-html/disable-demo-link/forgot_password.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 09 May 2024 08:09:04 GMT -->
</html>
