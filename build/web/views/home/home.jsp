<%-- 
    Document   : home
    Created on : Jan 19, 2025, 9:13:17 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        <header class="header-03 sticky">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <nav class="navbar navbar-expand-lg">
                            <!-- logo Start-->
                            <a class="navbar-brand" href="index-2.html">
                                <img src="${pageContext.request.contextPath}/assets/images/logo3.png" alt="">
                            </a>
                            <!-- logo End-->

                            <!-- Select Cate Box -->
                        
                            <!-- Select Cate Box -->

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
                            <div class="collapse navbar-collapse">
                                <ul class="navbar-nav">
                                    <li class="menu-item-has-children">
                                        <a href="javascript:void(0);">Home</a>

                                    </li>
                                    <li class="menu-item-has-children">
                                        <a href="javascript:void(0);">Courses</a>

                                    </li>
                                    <li class="menu-item-has-children">
                                        <a href="javascript:void(0);">Pages</a>

                                    </li>
                                    <li class="menu-item-has-children">
                                        <a href="javascript:void(0);">Blog</a>

                                    </li>
                                    <li>
                                        <a href="contact.html">Contact</a>
                                    </li>
                                </ul>
                            </div>
                            <!-- Nav Menu End -->
                            <c:if test="${sessionScope.user == null}">
                                <a href="/project/login" class="join-btn">Login</a>
                                <a href="/project/register" class="join-btn">Sign Up</a>
                            </c:if>
                            <c:if test="${sessionScope.user != null}">
                                <a href="#" class="user-btn"><i class="ti-user"></i></a>
                                </c:if>
                            <!-- User Btn -->
                            
                            <!-- User Btn -->

                            <!-- Join Btn -->
                      
                            <!-- Join Btn -->
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        <!-- Header End -->

        <!-- Hero Slider Start -->
        <section class="hero-slider-section">
            <div class="hero-slider owl-carousel">
                <!-- Single Slider item  -->
                <div class="single-slide bg-img d-flex align-items-center" data-bg-image="${pageContext.request.contextPath}/assets/images/home3/slider-1.jpg">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="slider-content">
                                    <div class="sub animated">Superior Acodemic Achievement & Mastery</div>
                                    <h3 class="animated">
                                        An education product<br> like on other
                                    </h3>
                                    <a href="#" class="animated bisylms-btn-3">Let's Go</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single Slider item  -->
                <!-- Single Slider item  -->
                <div class="single-slide bg-img d-flex align-items-center" data-bg-image="${pageContext.request.contextPath}/assets/images/home3/slider-2.jpg">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="slider-content text-center">
                                    <div class="sub animated">Superior Acodemic Achievement & Mastery</div>
                                    <h3 class="animated">
                                        Online Courses From<br> The World’s Top Publishers
                                    </h3>
                                    <a href="#" class="animated bisylms-btn-3">Browse Online Courses</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single Slider item  -->
                <!-- Single Slider item  -->


                <!-- Single Slider item  -->
                <!-- Single Slider item  -->
                <div class="single-slide bg-img d-flex align-items-center" data-bg-image="${pageContext.request.contextPath}/assets/images/home3/slider-3.jpg">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="slider-content text-center">
                                    <div class="sub animated">Superior Acodemic Achievement & Mastery</div>
                                    <h3 class="animated">
                                        Online Courses From<br> The World’s Top Publishers
                                    </h3>
                                    <a href="#" class="animated bisylms-btn-3">Browse Online Courses</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single Slider item  -->
            </div>
        </section>
        <!-- Hero Slider End -->

        <!-- Feature Start -->
        <section class="feature-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="feature-item">
                            <img src="${pageContext.request.contextPath}/assets/images/home3/f1.png" alt="">
                            <h4>Earn a certificate<br> or degree</h4>
                            <p>Get ahead with expert-led training in coding, data, design, digital marketing, and more.</p>
                            <a href="#" class="bisylms-btn-3">Browse Courses</a>
                        </div> 
                    </div>
                    <div class="col-md-6">
                        <div class="feature-item">
                            <img src="${pageContext.request.contextPath}/assets/images/home3/f2.png" alt="">
                            <h4>Learn the latest<br> skills</h4>
                            <p>like business analytics, graphic design, Python, and more.</p>
                            <a href="#" class="bisylms-btn-3">Get Started</a>
                        </div> 
                    </div>
                </div>
            </div>
        </section>
        <!-- Feature End -->

        <!-- Course Start -->
        <section class="popular-course-section-3">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h2 class="sec-title mb-15">Popular Topics</h2>
                        <p class="sec-desc">
                            50+ million people are already learning on Coursera.
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="popular-course-slider owl-carousel">
                            <c:forEach var="c" items="${listC}">
                                <div class="course-item-3">
                                    <div class="ci-thumb">
                                        <img src="${c.thumbnail}">
                                        <a href="#" class="c-cate">Software</a>
                                    </div>
                                    <div class="course-details">
                                        <img class="line-bg" src="assets/images/home3/line.jpg" alt="">
                                        <div class="fcf-bottom">
                                            <a href="#"><i class="icon_book_alt"></i>14 Lessons</a>
                                            <a href="#"><i class="icon_profile"></i>203</a>
                                        </div>
                                        <h4><a href="#">${c.description}</a></h4>
                                        <p>
                                            Keep learning to achieve success
                                        </p>
                                        <div class="author">
                                            <a href="#">Dute Academy</a>
                                        </div>
                                        <div class="price-rate">
                                            <div class="course-price">
                                                ${c.price}
                                                <span>$250.85</span>
                                            </div>
                                            <div class="ratings">
                                                <i class="icon_star"></i>
                                                <i class="icon_star"></i>
                                                <i class="icon_star"></i>
                                                <i class="icon_star"></i>
                                                <i class="icon_star"></i>
                                                <span>4.5 (2 Reviews)</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

                        </div>
                    </div>
                </div>
        </section>
        <!-- Course End -->

        <!-- Feature Course Start -->
        <section class="feature-course-section-3" style="background-image: url(${pageContext.request.contextPath}/assets/images/home3/2.jpg);">
            <div class="container">
                <div class="row">
                    <div class="col-md-5">
                        <h2 class="sec-title">Help you learn<br> with Online Class</h2>
                    </div>
                    <div class="col-md-7">
                        <p class="sec-desc">
                            Why I say old chap that is spiffing starkers it's your round nancy boy,<br> knees up have it are you taking the piss.
                        </p>
                    </div>
                </div>
                <div class="row">
                    <c:forEach var="c" items="${listP}">
                        <div class="col-lg-4 col-md-6">

                            <div class="feature-course-item-3">
                                <div class="fcf-thumb">
                                    <img src="${c.thumbnail}">
                                    <a class="enroll" href="#">Enroll Now</a>
                                </div>
                                <div class="fci-details">
                                    <a href="#" class="c-cate"><i class="icon_tag_alt"></i>SoftWare</a>
                                    <h4><a href="#">${c.description}</a></h4>
                                    <div class="author">
                                        <img src="${pageContext.request.contextPath}/assets/images/home3/course/a1.png" alt="">
                                        <a href="#">DUTE ACADEMY</a>
                                    </div>
                                    <div class="price-rate">
                                        <div class="course-price">
                                            <span>$${c.price}</span>
                                        </div>
                                        <div class="ratings">
                                            <i class="icon_star"></i>
                                            <span>4.5 (2,420)</span>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </c:forEach>
                </div>
            </div>
        </section>
        <!-- Feature Course End -->

        <!-- Funfact Start -->
        <section class="funfact-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="sec-title">Our Global Community</h2>
                        <p class="sec-desc">
                            Join thousand of instructors and earn money hassle free!
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="funfact-item-3">
                            <img src="${pageContext.request.contextPath}/assets/images/home3/f3.png" alt=""/>
                            <h2><span data-counter="27" class="timer">27</span></h2>
                            <p>Million Learners</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="funfact-item-3 ml-15">
                            <img src="${pageContext.request.contextPath}/assets/images/home3/f4.png" alt=""/>
                            <h2><span data-counter="4" class="timer">4</span>.6</h2>
                            <p>Million Graduates</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="funfact-item-3 ml-40">
                            <img src="${pageContext.request.contextPath}/assets/images/home3/f5.png" alt=""/>
                            <h2><span data-counter="1400" class="timer">1400</span>+</h2>
                            <p>Online Courses</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="funfact-item-3 righ-align">
                            <img src="${pageContext.request.contextPath}/assets/images/home3/f6.png" alt=""/>
                            <h2><span data-counter="175" class="timer">175</span></h2>
                            <p>Countries</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Funfact End -->

        <!-- Teachers Section Start -->
        <section class="teachers-section-2">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h2 class="sec-title mb-15">Classes Taught by<br> Real Creators</h2>
                        <p class="sec-desc">
                            Online education is a flexible instructional delivery system that encompasses any<br> kind of learning that takes place via the Internet.
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="teacher-item-2">
                            <div class="teacher-thumb">
                                <img src="${pageContext.request.contextPath}/assets/images/home3/teacher/1.png" alt="">
                                <a href="profile.html" class="follow-btn">Follow</a>
                                <div class="teacher-social">
                                    <a href="#"><i class="social_facebook"></i></a>
                                    <a href="#"><i class="social_twitter"></i></a>
                                    <a href="#"><i class="social_vimeo"></i></a>
                                    <a href="#"><i class="social_linkedin"></i></a>
                                </div>
                            </div>
                            <div class="teacher-meta">
                                <h5><a href="profile.html">Dianne Ameter</a></h5>
                                <p>Illustrator</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="teacher-item-2">
                            <div class="teacher-thumb">
                                <img src="${pageContext.request.contextPath}/assets/images/home3/teacher/2.png" alt="">
                                <a href="profile.html" class="follow-btn">Follow</a>
                                <div class="teacher-social">
                                    <a href="#"><i class="social_facebook"></i></a>
                                    <a href="#"><i class="social_twitter"></i></a>
                                    <a href="#"><i class="social_vimeo"></i></a>
                                    <a href="#"><i class="social_linkedin"></i></a>
                                </div>
                            </div>
                            <div class="teacher-meta">
                                <h5><a href="profile.html">Hugh Saturation</a></h5>
                                <p>Photographer</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="teacher-item-2">
                            <div class="teacher-thumb">
                                <img src="${pageContext.request.contextPath}/assets/images/home3/teacher/3.png" alt="">
                                <a href="profile.html" class="follow-btn">Follow</a>
                                <div class="teacher-social">
                                    <a href="#"><i class="social_facebook"></i></a>
                                    <a href="#"><i class="social_twitter"></i></a>
                                    <a href="#"><i class="social_vimeo"></i></a>
                                    <a href="#"><i class="social_linkedin"></i></a>
                                </div>
                            </div>
                            <div class="teacher-meta">
                                <h5><a href="profile.html">Jim Séchen</a></h5>
                                <p>Stylist & Author</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="teacher-item-2">
                            <div class="teacher-thumb">
                                <img src="${pageContext.request.contextPath}/assets/images/home3/teacher/4.png" alt="">
                                <a href="profile.html" class="follow-btn">Follow</a>
                                <div class="teacher-social">
                                    <a href="#"><i class="social_facebook"></i></a>
                                    <a href="#"><i class="social_twitter"></i></a>
                                    <a href="#"><i class="social_vimeo"></i></a>
                                    <a href="#"><i class="social_linkedin"></i></a>
                                </div>
                            </div>
                            <div class="teacher-meta">
                                <h5><a href="profile.html">Eric Widget</a></h5>
                                <p>Designer</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 text-center">
                        <a href="instructor.html" class="bisylms-btn-3">View All Teachers</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- Teachers Section End -->

        <!-- Call To Action Start -->
        <section class="cta-section-2" style="background-image: url(${pageContext.request.contextPath}/assets/images/home3/4.jpg);">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2 text-center">
                        <h2 class="sec-title mb-15">Make the most of your<br> Online learning experience</h2>
                        <p>
                            Our Online Learning Resource Center has tips, tricks and inspiring stories to help you<br> learn while staying home.
                        </p>
                        <a href="#" class="bisylms-btn-3">Explore Resources</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- Call To Action End -->

        <!-- Footer Section Start -->
        <footer class="footer-1 f-3-color">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-3">
                        <aside class="widget">
                            <div class="about-widget">
                                <a href="index-2.html"><img src="${pageContext.request.contextPath}/assets/images/logo3.png" alt=""></a>
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