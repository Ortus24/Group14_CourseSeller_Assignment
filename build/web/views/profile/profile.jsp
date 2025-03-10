<%-- 
    Document   : profile
    Created on : Jan 19, 2025, 9:40:06 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    
<!-- Mirrored from quomodosoft.com/html/bisy/profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Jan 2025 07:14:54 GMT -->
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

        <!-- Favicon Icon -->
        <link rel="icon"  type="image/png" href="${pageContext.request.contextPath}/assets/images/favicon.png">
        <!-- Favicon Icon -->
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
        </div>
        <!-- Preloader Icon -->

        <!-- Header Start -->
        <header class="header-01 sticky">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <nav class="navbar navbar-expand-lg">
                            <!-- logo Start-->
                            <a class="navbar-brand" href="index-2.html">
                                <img src="${pageContext.request.contextPath}/assets/images/logo4.png" alt="">
                                <img class="sticky-logo" src="assets/images/logo4.png" alt="">
                            </a>
                            <!-- logo End-->

                            <!-- Moblie Btn Start -->
                            <button class="navbar-toggler" type="button">
                                <i class="fal fa-bars"></i>
                            </button>
                            <!-- Moblie Btn End -->

                            <!-- Nav Menu Start -->
                            <div class="collapse navbar-collapse">
                                <ul class="navbar-nav">
                                    <li class="menu-item-has-children">
                                        <a href="javascript:void(0);">Home</a>
                                        <ul class="sub-menu">
                                            <li><a href="index-2.html">Home One</a></li>
                                            <li><a href="index-3.html">Home Two</a></li>
                                            <li><a href="index-4.html">Home Three</a></li>
                                        </ul>
                                    </li>
                                    <li class="menu-item-has-children">
                                        <a href="javascript:void(0);">Courses</a>
                                        <ul class="sub-menu">
                                            <li><a href="course-1.html">Course 01</a></li>
                                            <li><a href="course-2.html">Course 02</a></li>
                                            <li><a href="course-3.html">Course 03</a></li>
                                            <li><a href="single-course.html">Course Details</a></li>
                                        </ul>
                                    </li>
                                    <li class="menu-item-has-children">
                                        <a href="javascript:void(0);">Pages</a>
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
                                        <a href="javascript:void(0);">Blog</a>
                                        <ul class="sub-menu">
                                            <li><a href="blog.html">Blog Page</a></li>
                                            <li><a href="single-post.html">Blog Details</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="contact.html">Contact</a>
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

        <!-- Banner Start -->
        <section class="page-banner" style="background-image: url(assets/images/banner.jpg);">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="banner-title">Profile</h2>
                        <div class="bread-crumbs">
                            <a href="index-2.html">Home</a> <span></span> Profile
                        </div>
                    </div>
                </div>
            </div>
        </section>  
        <!-- Banner End -->

        <!-- Teachers Section Start -->
        <section class="profile-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="teacher-profile">
                            <div class="teacher-thumb">
                                <img src="${pageContext.request.contextPath}/assets/images/home2/teacher/1.png" alt="">
                            </div>
                            <div class="teacher-meta">
                                <h5>Dianne Ameter</h5>
                                <p>Illustrator</p>
                            </div>
                            <p>
                                Cup of char skive off bodge bobby blower tickety-boo quaint a blinding shot pear shaped squiffy harry, young delinquent grub so I said cuppa faff about bum bag bugger.
                            </p>
                            <div class="ab-social">
                                <h5>Follow Us</h5>
                                <a class="fac" href="#"><i class="social_facebook"></i></a>
                                <a class="twi" href="#"><i class="social_twitter"></i></a>
                                <a class="you" href="#"><i class="social_youtube"></i></a>
                                <a class="lin" href="#"><i class="social_linkedin"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <!-- Tab Title -->
                        <ul class="tab-title nav nav-tabs">
                            <li><a class="active" href="#owned" data-toggle="tab">Owned</a></li>
                            <li><a href="#purchased" data-toggle="tab" class="">Purchased</a></li>
                        </ul>
                        <!-- Tab Title -->
                        <!-- Tab Content -->
                        <div class="tab-content">
                            <!-- Owned Tab -->
                            <div class="tab-pane fade show in active" id="owned" role="tabpanel">
                                <h3 class="course-title">My Courses</h3>
                                <div class="row">
                                    <div class="col-lg-4 col-md-6">
                                        <div class="feature-course-item-4">
                                            <div class="fcf-thumb">
                                                <img src="${pageContext.request.contextPath}/assets/images/profile/1.jpg" alt="">
                                                <a class="enroll" href="#">Enroll Now</a>
                                            </div>
                                            <div class="fci-details">
                                                <a href="#" class="c-cate"><i class="icon_tag_alt"></i>Computer Science</a>
                                                <h4><a href="#">Using Creative Problem Solving</a></h4>
                                                <div class="author">
                                                    <img src="${pageContext.request.contextPath}/assets/images/home3/course/a1.png" alt="">
                                                    <a href="#">Anthony</a>
                                                </div>
                                                <div class="price-rate">
                                                    <div class="course-price">
                                                        Free
                                                        <span>$42.85</span>
                                                    </div>
                                                    <div class="ratings">
                                                        <i class="icon_star"></i>
                                                        <span>4.5 (2,420)</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6">
                                        <div class="feature-course-item-4">
                                            <div class="fcf-thumb">
                                                <img src="${pageContext.request.contextPath}/assets/images/profile/2.jpg" alt="">
                                                <a class="enroll" href="#">Enroll Now</a>
                                            </div>
                                            <div class="fci-details">
                                                <a href="#" class="c-cate"><i class="icon_tag_alt"></i>Art &amp; Design</a>
                                                <h4><a href="#">The Art of Black and White Photography</a></h4>
                                                <div class="author">
                                                    <img src="${pageContext.request.contextPath}/assets/images/home3/course/a2.png" alt="">
                                                    <a href="#">Giles Posture</a>
                                                </div>
                                                <div class="price-rate">
                                                    <div class="course-price">
                                                        $75.00
                                                        <span>$92.00</span>
                                                    </div>
                                                    <div class="ratings">
                                                        <i class="icon_star"></i>
                                                        <span>4.2 (1,203)</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6">
                                        <div class="feature-course-item-4">
                                            <div class="fcf-thumb">
                                                <img src="${pageContext.request.contextPath}/assets/images/profile/3.jpg" alt="">
                                                <a class="enroll" href="#">Enroll Now</a>
                                            </div>
                                            <div class="fci-details">
                                                <a href="#" class="c-cate"><i class="icon_tag_alt"></i>Business Study</a>
                                                <h4><a href="#">Learning jQuery mobile for Beginners</a></h4>
                                                <div class="author">
                                                    <img src="${pageContext.request.contextPath}/assets/images/home3/course/a3.png" alt="">
                                                    <a href="#">Hans Down</a>
                                                </div>
                                                <div class="price-rate">
                                                    <div class="course-price">
                                                        $53.00
                                                        <span>$74.00</span>
                                                    </div>
                                                    <div class="ratings">
                                                        <i class="icon_star"></i>
                                                        <span>4.5 (2,420)</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6">
                                        <div class="feature-course-item-4">
                                            <div class="fcf-thumb">
                                                <img src="${pageContext.request.contextPath}/assets/images/profile/4.jpg" alt="">
                                                <a class="enroll" href="#">Enroll Now</a>
                                            </div>
                                            <div class="fci-details">
                                                <a href="#" class="c-cate"><i class="icon_tag_alt"></i>Data Science</a>
                                                <h4><a href="#">Buddhism and modern Psychology</a></h4>
                                                <div class="author">
                                                    <img src="${pageContext.request.contextPath}/assets/images/home3/course/a4.png" alt="">
                                                    <a href="#">Richard Tea</a>
                                                </div>
                                                <div class="price-rate">
                                                    <div class="course-price">
                                                        $62.00
                                                        <span>$97.00</span>
                                                    </div>
                                                    <div class="ratings">
                                                        <i class="icon_star"></i>
                                                        <span>4.5 (2,420)</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6">
                                        <div class="feature-course-item-4">
                                            <div class="fcf-thumb">
                                                <img src="${pageContext.request.contextPath}/assets/images/profile/5.jpg" alt="">
                                                <a class="enroll" href="#">Enroll Now</a>
                                            </div>
                                            <div class="fci-details">
                                                <a href="#" class="c-cate"><i class="icon_tag_alt"></i>Web Development</a>
                                                <h4><a href="#">Making music with Other people</a></h4>
                                                <div class="author">
                                                    <img src="${pageContext.request.contextPath}/assets/images/home3/course/a6.png" alt="">
                                                    <a href="#">Hilary Ouse</a>
                                                </div>
                                                <div class="price-rate">
                                                    <div class="course-price">
                                                        #34.00
                                                        <span>$55.00</span>
                                                    </div>
                                                    <div class="ratings">
                                                        <i class="icon_star"></i>
                                                        <span>4.5 (2,420)</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Owned Tab -->

                            <!-- Purchase Tab -->
                            <div class="tab-pane fade in" id="purchased" role="tabpanel">
                                <ul class="restult-tab-title nav nav-tabs">
                                    <li><a class="active" href="#all" data-toggle="tab">All</a></li>
                                    <li><a href="#finished" data-toggle="tab" class="">Finished</a></li>
                                    <li><a href="#passed" data-toggle="tab" class="">Passed</a></li>
                                    <li><a href="#failed" data-toggle="tab" class="">Failed</a></li>
                                </ul>
                                <!-- Tab Content -->
                                <div class="tab-content">
                                    <div class="tab-pane fade show in active" id="all" role="tabpanel">
                                        <table class="result-table">
                                            <thead>
                                                <tr>
                                                    <th class="course">Course</th>
                                                    <th class="date">Date</th>
                                                    <th class="grade">Passing Grade</th>
                                                    <th class="progres">Progress</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="course">
                                                        <a href="#">Getting Started with LESS</a>      
                                                    </td>
                                                    <td class="date">24/03/2020</td>
                                                    <td class="grade">50%</td>
                                                    <td class="progres">0% In Progress</td>
                                                </tr>
                                                <tr>
                                                    <td class="course">
                                                        <a href="#">LMS Interactive Content</a>      
                                                    </td>
                                                    <td class="date">24/03/2020</td>
                                                    <td class="grade">40%</td>
                                                    <td class="progres">0% In Progress</td>
                                                </tr>
                                                <tr>
                                                    <td class="course">
                                                        <a href="#">From Zero to Hero with Nodejs</a>      
                                                    </td>
                                                    <td class="date">14/04/2019</td>
                                                    <td class="grade">70%</td>
                                                    <td class="progres">0% In Progress</td>
                                                </tr>
                                                <tr>
                                                    <td class="course">
                                                        <a href="#">Helping to change the world</a>      
                                                    </td>
                                                    <td class="date">04/07/2018</td>
                                                    <td class="grade">50%</td>
                                                    <td class="progres">0% In Progress</td>
                                                </tr>
                                                <tr>
                                                    <td class="show-item">Displaying 1 to 4 of 4 courses.</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="tab-pane show in" id="finished" role="tabpanel">
                                        <table class="result-table">
                                            <thead>
                                                <tr>
                                                    <th class="course">Course</th>
                                                    <th class="date">Date</th>
                                                    <th class="grade">Passing Grade</th>
                                                    <th class="progres">Progress</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="course">
                                                        <a href="#">Getting Started with LESS</a>      
                                                    </td>
                                                    <td class="date">24/03/2020</td>
                                                    <td class="grade">50%</td>
                                                    <td class="progres">0% In Progress</td>
                                                </tr>
                                                <tr>
                                                    <td class="course">
                                                        <a href="#">LMS Interactive Content</a>      
                                                    </td>
                                                    <td class="date">24/03/2020</td>
                                                    <td class="grade">40%</td>
                                                    <td class="progres">0% In Progress</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="tab-pane show in" id="passed" role="tabpanel">
                                        <table class="result-table">
                                            <thead>
                                                <tr>
                                                    <th class="course">Course</th>
                                                    <th class="date">Date</th>
                                                    <th class="grade">Passing Grade</th>
                                                    <th class="progres">Progress</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="course">
                                                        <a href="#">From Zero to Hero with Nodejs</a>      
                                                    </td>
                                                    <td class="date">14/04/2019</td>
                                                    <td class="grade">70%</td>
                                                    <td class="progres">0% In Progress</td>
                                                </tr>
                                                <tr>
                                                    <td class="course">
                                                        <a href="#">Helping to change the world</a>      
                                                    </td>
                                                    <td class="date">04/07/2018</td>
                                                    <td class="grade">50%</td>
                                                    <td class="progres">0% In Progress</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="tab-pane show in" id="failed" role="tabpanel">
                                        <table class="result-table">
                                            <thead>
                                                <tr>
                                                    <th class="course">Course</th>
                                                    <th class="date">Date</th>
                                                    <th class="grade">Passing Grade</th>
                                                    <th class="progres">Progress</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="course">
                                                        <a href="#">Getting Started with LESS</a>      
                                                    </td>
                                                    <td class="date">24/03/2020</td>
                                                    <td class="grade">50%</td>
                                                    <td class="progres">0% In Progress</td>
                                                </tr>
                                                <tr>
                                                    <td class="course">
                                                        <a href="#">LMS Interactive Content</a>      
                                                    </td>
                                                    <td class="date">24/03/2020</td>
                                                    <td class="grade">40%</td>
                                                    <td class="progres">0% In Progress</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <!-- Tab Content -->
                            </div>
                            <!-- Purchase Tab -->
                        </div>
                        <!-- Tab Content -->
                    </div>
                </div>
            </div>
        </section>
        <!-- Teachers Section End -->
        
        <!-- Footer Section Start -->
        <footer class="footer-1">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="cta-wrapper">
                            <img src="${pageContext.request.contextPath}/assets/images/home/2.png" alt="">
                            <h3>You can be your own Guiding star with our help!</h3>
                            <a href="#" class="bisylms-btn">Get Started Now</a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-3">
                        <aside class="widget">
                            <div class="about-widget">
                                <a href="index-2.html"><img src="${pageContext.request.contextPath}/assets/images/logo.png" alt=""></a>
                                <p>
                                    Lost the plot Richard you mug cup of tea knackered boot bender.
                                </p>
                                <div class="ab-social">
                                    <a class="fac" href="#"><i class="social_facebook"></i></a>
                                    <a class="twi" href="#"><i class="social_twitter"></i></a>
                                    <a class="you" href="#"><i class="social_youtube"></i></a>
                                    <a class="lin" href="#"><i class="social_linkedin"></i></a>
                                </div>
                            </div>
                        </aside>
                    </div>
                    <div class="col-lg-3 col-md-3">
                        <aside class="widget">
                            <h3 class="widget-title">Explore</h3>
                            <ul>
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Success Story</a></li>
                                <li><a href="#">Careers</a></li>
                                <li><a href="#">Resource Center</a></li>
                                <li><a href="#">Courses</a></li>
                                <li><a href="#">Contact Us</a></li>
                            </ul>
                        </aside>
                    </div>
                    <div class="col-lg-3 col-md-3">
                        <aside class="widget">
                            <h3 class="widget-title">Catecories</h3>
                            <ul>
                                <li><a href="#">All Courses</a></li>
                                <li><a href="#">Storytelling & Voice Over</a></li>
                                <li><a href="#">Digital Marketing</a></li>
                                <li><a href="#">Design & Branding</a></li>
                                <li><a href="#">Nanodegree Plus</a></li>
                                <li><a href="#">Veterans</a></li>
                            </ul>
                        </aside>
                    </div>
                    <div class="col-lg-2 col-md-3">
                        <aside class="widget">
                            <h3 class="widget-title">Support</h3>
                            <ul>
                                <li><a href="#">Help Center</a></li>
                                <li><a href="#">System Requirements</a></li>
                                <li><a href="#">Register Activation Key</a></li>
                                <li><a href="#">Site Feedback</a></li>
                                <li><a href="#">Documentation</a></li>
                                <li><a href="#">Forums</a></li>
                            </ul>
                        </aside>
                    </div>
                </div>
                <!-- Copyrigh -->
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="copyright">
                            <p>© 2021 Copyright all Right Reserved Design by <a href="http://quomodosoft.com/">Quomodosoft</a></p>
                        </div>
                    </div>
                </div>
                <!-- Copyrigh -->
            </div>
        </footer>
        <!-- Footer Section End -->

        <!-- Back To Top -->
        <a href="#" id="back-to-top">
            <i class="fal fa-angle-double-up"></i>
        </a>
        <!-- Back To Top -->

        <!-- Start Include All JS -->
        <script src="${pageContext.request.contextPath}/assets/js/jquery.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.appear.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/owl.carousel.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/slick.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.nice-select.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/swiper-bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/TweenMax.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/lightcase.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.plugin.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.countdown.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.easing.1.3.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.shuffle.min.js"></script>

        <script src="${pageContext.request.contextPath}/assets/js/theme.js"></script>
        <!-- End Include All JS -->
        
    </body>

<!-- Mirrored from quomodosoft.com/html/bisy/profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Jan 2025 07:14:54 GMT -->
</html>
