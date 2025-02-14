<%-- 
    Document   : home
    Created on : Jan 19, 2025, 9:13:17 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from quomodosoft.com/html/bisy/index-3.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Jan 2025 07:14:18 GMT -->
    <!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
    <head>
        <title>Bisylms - Education HTML5 Responsive Template</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <!-- Start Include All CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/elegant-icons.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/themify-icons.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/animate.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.theme.default.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/slick.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/nice-select.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/swiper-bundle.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lightcase.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/preset.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/theme.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/responsive.css" />
        <!-- End Include All CSS -->

    </head>
    <body>

        <!-- Preloader Icon -->      
        <div class="preloader">
            <div class="loaderInner">
                <div id="top" class="mask">
                    <div class="plane"></div>
                </div>
                <div id="middle" class="mask">
                    <div class="plane"></div>
                </div>
                <div id="bottom" class="mask">
                    <div class="plane"></div>
                </div>
                <p>LOADING...</p>
            </div>
            <!--
            </div>-->
            <!-- Preloader Icon -->

            <!-- Header Start -->
            <header class="header-03 sticky" style="background: #333; padding-left: 40px ">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12" >
                            <nav class="navbar navbar-expand-lg" style="height: 90px">
                                <!-- logo Start-->
                                <a class="navbar-brand" href="${pageContext.request.contextPath}/views/home/home.jsp">
                                    <img style="width: auto; height: 64px; margin-top: 10px; margin-right: 50px" src="${pageContext.request.contextPath}/assets/images/logo5.png" alt="">
                                </a>
                                <!-- logo End-->



                                <!-- Search Box -->
                                <form class="search-box" method="post" action="#">
                                    <input type="search" name="s" placeholder="Search Courses...">
                                    <button type="submit"><i class="ti-search"></i></button>
                                </form>
                                <!-- Search Box -->

                                <!-- Moblie Btn Start -->
                                <button class="navbar-toggler" type="button">
                                    <i class="fal fa-bars"></i>
                                </button>
                                <!-- Moblie Btn End -->

                                <!-- Nav Menu Start -->
                                <div class="collapse navbar-collapse" style="padding-left: 180px">
                                    <ul class="navbar-nav">
                                        <li class="menu-item-has-children">
                                            <a style="color: white" href="javascript:void(0);">Home</a>
                                            <ul class="sub-menu">
                                                <li><a href="index-2.html">Home One</a></li>
                                                <li><a href="index-3.html">Home Two</a></li>
                                                <li><a href="index-4.html">Home Three</a></li>
                                            </ul>
                                        </li>
                                        <li class="menu-item-has-children">
                                            <a style="color: white" href="javascript:void(0);">Courses</a>
                                            <ul class="sub-menu">
                                                <li><a href="course-1.html">Course 01</a></li>
                                                <li><a href="course-2.html">Course 02</a></li>
                                                <li><a href="course-3.html">Course 03</a></li>
                                                <li><a href="single-course.html">Course Details</a></li>
                                            </ul>
                                        </li>
                                        <li class="menu-item-has-children">
                                            <a style="color: white" href="javascript:void(0);">Pages</a>
                                            <ul class="sub-menu">
                                                <li class="menu-item-has-children">
                                                    <a href="javascript:void(0);">About Pages</a>
                                                    <ul class="sub-menu">
                                                        <li><a href="about-1.html">About 01</a></li>
                                                        <li><a href="about-2.html">About 02</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="instructor.html">Instructor Page</a></li>
                                                <li><a href="profile.html">Instructor Profile</a></li>
                                                <li><a href="404.html">404 Page</a></li>
                                            </ul>
                                        </li>
                                        <li class="menu-item-has-children">
                                            <a style="color: white" href="javascript:void(0);">Blog</a>
                                            <ul class="sub-menu">
                                                <li><a href="blog.html">Blog Page</a></li>
                                                <li><a href="single-post.html">Blog Details</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a style="color: white" href="contact.html">Contact</a>
                                        </li>
                                    </ul>
                                </div>
                                <!-- Nav Menu End -->

                                <!-- User Btn -->
                                <a href="#" class="user-btn"><i class="ti-user"></i></a>
                                <!-- User Btn -->

                                <!-- Join Btn -->
                                <a href="#" class="join-btn">Join for Free</a>
                                <!-- Join Btn -->
                            </nav>
                        </div>
                    </div>
                </div>
            </header>
            <!-- Header End -->



            <!-- Back To Top -->
            <a href="#" id="back-to-top">
                <i class="fal fa-angle-double-up"></i>
            </a>
            <!-- Back To Top -->

            <!-- Start Include All JS -->
            <script src="${pageContext.request.contextPath}//assets/js/jquery.js"></script>
            <script src="${pageContext.request.contextPath}//assets/js/bootstrap.min.js"></script>
            <script src="${pageContext.request.contextPath}//assets/js/jquery.appear.js"></script>
            <script src="${pageContext.request.contextPath}//assets/js/owl.carousel.min.js"></script>
            <script src="${pageContext.request.contextPath}//assets/js/slick.js"></script>
            <script src="${pageContext.request.contextPath}//assets/js/jquery.nice-select.min.js"></script>
            <script src="${pageContext.request.contextPath}//assets/js/swiper-bundle.min.js"></script>
            <script src="${pageContext.request.contextPath}//assets/js/TweenMax.min.js"></script>
            <script src="${pageContext.request.contextPath}//assets/js/lightcase.js"></script>
            <script src="${pageContext.request.contextPath}//assets/js/jquery.plugin.min.js"></script>
            <script src="${pageContext.request.contextPath}//assets/js/jquery.countdown.min.js"></script>
            <script src="${pageContext.request.contextPath}//assets/js/jquery.easing.1.3.js"></script>
            <script src="${pageContext.request.contextPath}//assets/js/jquery.shuffle.min.js"></script>

            <script src="${pageContext.request.contextPath}//assets/js/theme.js"></script>
            <!-- End Include All JS -->

    </body>

    <!-- Mirrored from quomodosoft.com/html/bisy/index-3.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Jan 2025 07:14:36 GMT -->
</html>