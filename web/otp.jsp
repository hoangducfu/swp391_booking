<%-- 
    Document   : sign_up
    Created on : May 15, 2024, 7:31:42 AM
    Author     : mactu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="h-100">

    <!-- Mirrored from www.gambolthemes.net/html-items/barren-html/disable-demo-link/sign_up.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 09 May 2024 08:09:04 GMT -->
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
        <link href='${pageContext.request.contextPath}/vendor/unicons-2.0.1/css/unicons.css' rel='stylesheet'>
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/night-mode.css" rel="stylesheet">

        <!-- Vendor Stylesheets -->
        <link href="${pageContext.request.contextPath}/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/vendor/OwlCarousel/assets/owl.carousel.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/vendor/OwlCarousel/assets/owl.theme.default.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/vendor/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet">		

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
                                    
                                </div>
                            </div>
                            <div class="col-xl-5 col-lg-6 col-md-7">
                                <div class="registration">
                                    <form action="otp" method="post">
                                        <h2 class="registration-title">Xác nhận đăng nhập</h2>
                                        <p>Hãy cho chúng tôi biết rằng địa chỉ email này thuộc về bạn. Nhập mã từ email được gửi tới ${account.getUsername()}</p>
                                        <div class="row mt-3">
                                            <h3 style="color: red">${err}</h3>
                                            <div class="col-lg-12 col-md-12">
                                                <div class="form-group mt-4">
                                                    <label class="form-label">User Name*</label>
                                                    <input class="form-control h_50" type="email" readonly name="username" required placeholder="" value="${account.getUsername()}">																								
                                                </div>
                                            </div>

                                            
                                            <div class="col-lg-12 col-md-12">	
                                                <div class="form-group mt-4">
                                                    <div class="field-otp">
                                                        <label class="form-label">OTP*</label>
                                                    </div>
                                                    <div class="loc-group position-relative d-flex">
                                                        <input class="form-control h_50" type="text" name="otp" placeholder="" >
                                                        <button class="btn btn-primary ml-2" type="submit" formaction="otp" formmethod="get">Gửi lại OTP</button>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-lg-12 col-md-12">		
                                                <button class="main-btn btn-hover w-100 mt-4" type="submit">Xác nhận</button>
                                            </div>
                                        </div>
                                    </form>
<!--                                          quay lại trang đăng nhập và xóa session-->
                                    <div class="agree-text">
                                        Muốn quay lại đăng nhập? <a href="loginGoogleHandler">Đăng Nhập</a>.
                                    </div>								
                                    
                                                
                                </div>							
                            </div>
                        </div>
                    </div>
                   
                </div>			
            </div>
        </div>

        <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/vendor/OwlCarousel/owl.carousel.js"></script>
        <script src="${pageContext.request.contextPath}/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>	
        <script src="${pageContext.request.contextPath}/js/custom.js"></script>
        <script src="${pageContext.request.contextPath}/js/night-mode.js"></script>

    </body>

    <!-- Mirrored from www.gambolthemes.net/html-items/barren-html/disable-demo-link/sign_up.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 09 May 2024 08:09:04 GMT -->
</html>