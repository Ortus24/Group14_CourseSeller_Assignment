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
                            <div class="catecories-box">
                               <div class="select-item">
                                <select name="categories">
                                    <option value="1" selected="selected">Explore</option>
                                    <option value="2">Option 01</option>
                                    <option value="3">Option 02</option>
                                    <option value="4">Option 03</option>
                                    <option value="5">Option 04</option>
                                </select>
                               </div>
                            </div>
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
                <div class="single-slide bg-img d-flex align-items-center" data-bg-image="${pageContext.request.contextPath}/assets/images/home3/slider-4.jpg">
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
                            <div class="course-item-3">
                                <div class="ci-thumb">
                                    <img src="${pageContext.request.contextPath}/assets/images/home3/p1.jpg" alt="">
                                    <a href="#" class="c-cate">Software</a>
                                </div>
                                <div class="course-details">
                                    <img class="line-bg" src="assets/images/home3/line.jpg" alt="">
                                    <div class="fcf-bottom">
                                        <a href="#"><i class="icon_book_alt"></i>14 Lessons</a>
                                        <a href="#"><i class="icon_profile"></i>203</a>
                                    </div>
                                    <h4><a href="#">The Art of Black and White Photography</a></h4>
                                    <p>
                                        Discover how to become a successful Project Manager with this free online introductory course.
                                    </p>
                                    <div class="author">
                                        <img src="${pageContext.request.contextPath}/assets/images/home3/author.png" alt="">
                                        <a href="#">Anthony</a>
                                    </div>
                                    <div class="price-rate">
                                        <div class="course-price">
                                            $42.76
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
                            <div class="course-item-3">
                                <div class="ci-thumb">
                                    <img src="${pageContext.request.contextPath}/assets/images/home3/p2.jpg" alt="">
                                    <a href="#" class="c-cate">Data Science</a>
                                </div>
                                <div class="course-details">
                                    <img class="line-bg" src="assets/images/home3/line.jpg" alt="">
                                    <div class="fcf-bottom">
                                        <a href="#"><i class="icon_book_alt"></i>18 Lessons</a>
                                        <a href="#"><i class="icon_profile"></i>228</a>
                                    </div>
                                    <h4><a href="#">Buddhism and Modern Psychology</a></h4>
                                    <p>
                                        Discover how to become a successful Project Manager with this free online introductory course.
                                    </p>
                                    <div class="author">
                                        <img src="${pageContext.request.contextPath}/assets/images/home3/author.png" alt="">
                                        <a href="#">Anthony</a>
                                    </div>
                                    <div class="price-rate">
                                        <div class="course-price">
                                            $65.50
                                            <span>$220.65</span>
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
                            <div class="course-item-3">
                                <div class="ci-thumb">
                                    <img src="${pageContext.request.contextPath}/assets/images/home3/p1.jpg" alt="">
                                    <a href="#" class="c-cate">Software</a>
                                </div>
                                <div class="course-details">
                                    <img class="line-bg" src="assets/images/home3/line.jpg" alt="">
                                    <div class="fcf-bottom">
                                        <a href="#"><i class="icon_book_alt"></i>10 Lessons</a>
                                        <a href="#"><i class="icon_profile"></i>199</a>
                                    </div>
                                    <h4><a href="#">Learning jQuery Mobile for Beginners</a></h4>
                                    <p>
                                        Discover how to become a successful Project Manager with this free online introductory course.
                                    </p>
                                    <div class="author">
                                        <img src="${pageContext.request.contextPath}/assets/images/home3/author.png" alt="">
                                        <a href="#">Anthony</a>
                                    </div>
                                    <div class="price-rate">
                                        <div class="course-price">
                                            $42.76
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
                        </div>
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
                    <div class="col-lg-4 col-md-6">
                        <div class="feature-course-item-3">
                            <div class="fcf-thumb">
                                <img src="${pageContext.request.contextPath}/assets/images/home3/course/1.jpg" alt="">
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
                        <div class="feature-course-item-3">
                            <div class="fcf-thumb">
                                <img src="${pageContext.request.contextPath}/assets/images/home3/course/2.jpg" alt="">
                                <a class="enroll" href="#">Enroll Now</a>
                            </div>
                            <div class="fci-details">
                                <a href="#" class="c-cate"><i class="icon_tag_alt"></i>Art & Design</a>
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
                        <div class="feature-course-item-3">
                            <div class="fcf-thumb">
                                <img src="${pageContext.request.contextPath}/assets/images/home3/course/3.jpg" alt="">
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
                        <div class="feature-course-item-3">
                            <div class="fcf-thumb">
                                <img src="${pageContext.request.contextPath}/assets/images/home3/course/4.jpg" alt="">
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
                        <div class="feature-course-item-3">
                            <div class="fcf-thumb">
                                <img src="${pageContext.request.contextPath}/assets/images/home3/course/5.jpg" alt="">
                                <a class="enroll" href="#">Enroll Now</a>
                            </div>
                            <div class="fci-details">
                                <a href="#" class="c-cate"><i class="icon_tag_alt"></i>UI/UXDesign</a>
                                <h4><a href="#">Fundamentals of<br> UI Design</a></h4>
                                <div class="author">
                                    <img src="${pageContext.request.contextPath}/assets/images/home3/course/a5.png" alt="">
                                    <a href="#">Weir Doe</a>
                                </div>
                                <div class="price-rate">
                                    <div class="course-price">
                                        Free
                                        <span>$76.00</span>
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
                        <div class="feature-course-item-3">
                            <div class="fcf-thumb">
                                <img src="${pageContext.request.contextPath}/assets/images/home3/course/6.jpg" alt="">
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
                                        $34.00
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