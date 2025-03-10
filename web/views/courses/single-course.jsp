<%-- 
    Document   : single-course
    Created on : Jan 19, 2025, 9:29:26 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    
<!-- Mirrored from quomodosoft.com/html/bisy/single-course.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Jan 2025 07:14:46 GMT -->
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
        <section class="page-banner" style="background-image: url(${pageContext.request.contextPath}/assets/images/banner5.jpg);">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="banner-title">Courses Single</h2>
                        <div class="bread-crumbs">
                            <a href="index-2.html">Home</a> <span></span> Courses Single
                        </div>
                    </div>
                </div>
            </div>
        </section>  
        <!-- Banner End -->

        <!-- Course Section Start -->
        <section class="course-details-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9">
                        <div class="single-course-area">
                            <div class="course-top">
                                <h4>Using Creative Problem Solving</h4>
                                <div class="course-meta">
                                    <div class="author">
                                        <img src="${pageContext.request.contextPath}/assets/images/home3/course/a1.png" alt="">
                                        <span>Teacher</span>
                                        <a href="#">Anthony</a>
                                    </div>
                                    <div class="categories">
                                        <span>Categories:</span>
                                        <a href="#">Art & Design</a>
                                    </div>
                                    <div class="ratings">
                                        <span>4.5 (9 Reviews)</span>
                                        <i class="icon_star"></i>
                                        <i class="icon_star"></i>
                                        <i class="icon_star"></i>
                                        <i class="icon_star"></i>
                                        <i class="icon_star"></i>
                                    </div>
                                </div>
                                <div class="course-price">
                                    $75.00
                                    <span>$92.00</span>
                                </div>
                            </div>
                            <div class="sc-thumb">
                                <img src="${pageContext.request.contextPath}/assets/images/single-course/1.jpg" alt="">
                            </div>
                            <div class="course-tab-wrapper">
                                <ul class="course-tab-btn nav nav-tabs">
                                    <li><a href="#overview" data-toggle="tab"><i class="icon_ribbon_alt"></i>Overview</a></li>
                                    <li><a href="#curriculum" data-toggle="tab"><i class="icon_book_alt"></i>Curriculum</a></li>
                                    <li><a class="active" href="#instructors" data-toggle="tab"><i class="icon_profile"></i>Instructors</a></li>
                                    <li><a href="#reviews" data-toggle="tab"><i class="icon_star"></i>Reviews</a></li>
                                </ul>
                                <!-- Tab Content -->
                                <div class="tab-content">
                                    <!-- Overview Tab -->
                                    <div class="tab-pane fade in" id="overview" role="tabpanel">
                                        <div class="overview-content">
                                            <h4>Course Description</h4>
                                            <p>
                                                You mug tickety-boo bite your arm off David bamboozled easy peasy in my flat bugger argy-bargy, Oxford starkers barney bender haggle barmy A bit of how's your father, pear shaped arse over tit dropped a clanger cup of char bloke mufty pukka. He legged it some dodgy chav pardon you vagabond old bubble and squeak posh young delinquent mufty Charles quaint, bloke spend a penny sloshed Harry car boot bugger all mate bamboozled blatant cack, skive off hanky panky cheeky chap hotpot burke such a fibber cheeky bugger blag. Chinwag Eaton owt to do with me Charles excuse my French cor blimey guvnor bender give us a bell gosh bamboozled, wind up in my flat David bog lurgy the full monty cup of char cockup, brolly bevvy super bubble and squeak well starkers cobblers smashing. Only a quid amongst well argy-bargy hotpot bugger all mate chimney pot cup of char do one barmy fantastic, Eaton bloke barney blower haggle cheesed off Elizabeth daft. 
                                            </p>
                                            <p>
                                                Chimney pot barmy easy peasy he lost his bottle nancy boy old cor blimey guvnor bog tickety-boo geeza, Richard on your bike mate down the pub are you taking the piss cack super hunky-dory haggle I spend a penny, hanky panky zonked cobblers spiffing good time cup of tea in my flat faff about the full monty.
                                            </p>
                                            <h4>Course Description</h4>
                                            <ul>
                                                <li><i class="icon_check_alt2"></i>Learn The Latest Skills
                                                    <span>
                                                        He lost his bottle starkers up the duff wind up easy peasy cracking goal cheers I butty only a quid he legged it, cuppa the little rotter bevvy bugger all mate spiffing good time.
                                                    </span>
                                                </li>
                                                <li><i class="icon_check_alt2"></i>Earn a Certificate or Degree
                                                    <span>
                                                        Chimney pot barmy easy peasy he lost his bottle nancy boy old cor blimey guvnor bog tickety-boo geeza, Richard on your bike mate down the pub are you taking.
                                                    </span>
                                                </li>
                                                <li><i class="icon_check_alt2"></i>Get Ready for a Career
                                                    <span>
                                                        Lost the plot plastered he lost his bottle blatant barney butty are you taking the piss porkies me old mucker young delinquent smashing so I said pear shaped cheeky say.
                                                    </span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- Overview Tab -->
                                    <!-- Curriculum Tab -->
                                    <div class="tab-pane fade in" id="curriculum" role="tabpanel">
                                        <div class="curriculum-item" id="id_1">
                                            <div class="card-header" id="cc_1">
                                                <h5 class="mb-0">
                                                    <button class="btn btn-link" data-toggle="collapse" data-target="#acc_1" aria-expanded="true" aria-controls="acc_1">
                                                        Understanding Customer Service
                                                    </button>
                                                </h5>
                                            </div>
                                            <div id="acc_1" class="collapse show" aria-labelledby="cc_1" data-parent="#id_1">
                                                <div class="card-body">
                                                    <div class="ci-item with-bg">
                                                        <h5>
                                                            <i class="icon_menu-square_alt2"></i>
                                                            <a href="#">Identifying Customer Expectations</a>
                                                        </h5>
                                                        <div class="ci-tools">
                                                            <a href="#" class="time">02 hour</a>
                                                            <a href="#" class="lock"><i class="icon_lock_alt"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="ci-item">
                                                        <h5>
                                                            <i class="icon_menu-square_alt2"></i>
                                                            <a href="#">Customer Service And The Telephone</a>
                                                        </h5>
                                                        <div class="ci-tools">
                                                            <a href="#" class="time">04 hour</a>
                                                            <a href="#" class="lock"><i class="icon_lock_alt"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="ci-item with-bg">
                                                        <h5>
                                                            <i class="icon_menu-square_alt2"></i>
                                                            <a href="#">Handling Complaints</a>
                                                        </h5>
                                                        <div class="ci-tools">
                                                            <a href="#" class="time">03 hour</a>
                                                            <a href="#" class="lock"><i class="icon_lock_alt"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="ci-item">
                                                        <h5>
                                                            <i class="icon_menu-square_alt2"></i>
                                                            <a href="#">Customer Service Skills - Course Assessment</a>
                                                        </h5>
                                                        <div class="ci-tools">
                                                            <a href="#" class="time">03 hour</a>
                                                            <a href="#" class="lock"><i class="icon_lock_alt"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="ci-item with-bg">
                                                        <h5>
                                                            <i class="icon_menu-square_alt2"></i>
                                                            <a href="#">Focusing On The Customer</a>
                                                        </h5>
                                                        <div class="ci-tools">
                                                            <a href="#" class="time">01 hour</a>
                                                            <a href="#" class="lock"><i class="icon_lock_alt"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="curriculum-item" id="id_2">
                                            <div class="card-header" id="cc_2">
                                                <h5 class="mb-0">
                                                    <button class="btn btn-link" data-toggle="collapse" data-target="#acc_2" aria-expanded="true" aria-controls="acc_2">
                                                        Handling Complaints
                                                    </button>
                                                </h5>
                                            </div>
                                            <div id="acc_2" class="collapse show" aria-labelledby="cc_2" data-parent="#id_2">
                                                <div class="card-body">
                                                    <div class="ci-item with-bg">
                                                        <h5>
                                                            <i class="icon_menu-square_alt2"></i>
                                                            <a href="#">Handling Complaints</a>
                                                        </h5>
                                                        <div class="ci-tools">
                                                            <a href="#" class="time">02 hour</a>
                                                            <a href="#" class="lock"><i class="icon_lock_alt"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="ci-item">
                                                        <h5>
                                                            <i class="icon_menu-square_alt2"></i>
                                                            <a href="#">Customer Service And The Telephone</a>
                                                        </h5>
                                                        <div class="ci-tools">
                                                            <a href="#" class="time">04 hour</a>
                                                            <a href="#" class="lock"><i class="icon_lock_alt"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="ci-item with-bg">
                                                        <h5>
                                                            <i class="icon_menu-square_alt2"></i>
                                                            <a href="#">WooCommerce Payments</a>
                                                        </h5>
                                                        <div class="ci-tools">
                                                            <a href="#" class="questions">4 questions</a>
                                                            <a href="#" class="time">03 hour</a>
                                                            <a href="#" class="lock"><i class="icon_lock_alt"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="curriculum-item" id="id_3">
                                            <div class="card-header" id="cc_3">
                                                <h5 class="mb-0">
                                                    <button class="btn btn-link" data-toggle="collapse" data-target="#acc_3" aria-expanded="true" aria-controls="acc_3">
                                                        Pellentesque Pretium
                                                    </button>
                                                </h5>
                                            </div>
                                            <div id="acc_3" class="collapse show" aria-labelledby="cc_3" data-parent="#id_3">
                                                <div class="card-body">
                                                    <div class="ci-item with-bg">
                                                        <h5>
                                                            <i class="icon_menu-square_alt2"></i>
                                                            <a href="#">How to Use WordPress</a>
                                                        </h5>
                                                        <div class="ci-tools">
                                                            <a href="#" class="time">02 hour</a>
                                                            <a href="#" class="lock"><i class="icon_lock_alt"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="ci-item">
                                                        <h5>
                                                            <i class="icon_menu-square_alt2"></i>
                                                            <a href="#">Certificate On Theme Development</a>
                                                        </h5>
                                                        <div class="ci-tools">
                                                            <a href="#" class="time">04 hour</a>
                                                            <a href="#" class="lock"><i class="icon_lock_alt"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="ci-item with-bg">
                                                        <h5>
                                                            <i class="icon_menu-square_alt2"></i>
                                                            <a href="#">Focusing On The Customer</a>
                                                        </h5>
                                                        <div class="ci-tools">
                                                            <a href="#" class="questions">4 questions</a>
                                                            <a href="#" class="time">03 hour</a>
                                                            <a href="#" class="lock"><i class="icon_lock_alt"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="ci-item">
                                                        <h5>
                                                            <i class="icon_menu-square_alt2"></i>
                                                            <a href="#">Identifying Customer Expectations</a>
                                                        </h5>
                                                        <div class="ci-tools">
                                                            <a href="#" class="time">03 hour</a>
                                                            <a href="#" class="lock"><i class="icon_lock_alt"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Curriculum Tab -->
                                    <!-- Instructors Tab -->
                                    <div class="tab-pane fade in show active" id="instructors" role="tabpanel">
                                        <div class="teacher-item-3">
                                            <div class="teacher-thumb">
                                                <img src="${pageContext.request.contextPath}/assets/images/single-course/i1.jpg" alt="">
                                            </div>
                                            <div class="teacher-meta">
                                                <h5><a href="#">Dianne Ameter</a></h5>
                                                <span>Illustrator</span>
                                                <p>
                                                    I don't want no agro car boot lavatory wind up twit haggle spiffing show off show off pick your nose and blow off spend a penny David zonked what a plonker are you taking.
                                                </p>
                                                <div class="teacher-social">
                                                    <a href="#"><i class="social_facebook"></i></a>
                                                    <a href="#"><i class="social_twitter"></i></a>
                                                    <a href="#"><i class="social_linkedin"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="teacher-item-3">
                                            <div class="teacher-thumb">
                                                <img src="${pageContext.request.contextPath}/assets/images/single-course/i2.jpg" alt="">
                                            </div>
                                            <div class="teacher-meta">
                                                <h5><a href="#">Hugh Saturation</a></h5>
                                                <span>Photographer</span>
                                                <p>
                                                    I don't want no agro car boot lavatory wind up twit haggle spiffing show off show off pick your nose and blow off spend a penny David zonked what a plonker are you taking.
                                                </p>
                                                <div class="teacher-social">
                                                    <a href="#"><i class="social_facebook"></i></a>
                                                    <a href="#"><i class="social_twitter"></i></a>
                                                    <a href="#"><i class="social_linkedin"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="teacher-item-3">
                                            <div class="teacher-thumb">
                                                <img src="${pageContext.request.contextPath}/assets/images/single-course/i3.jpg" alt="">
                                            </div>
                                            <div class="teacher-meta">
                                                <h5><a href="#">Jim Séchen</a></h5>
                                                <span>Stylist & Author</span>
                                                <p>
                                                    I don't want no agro car boot lavatory wind up twit haggle spiffing show off show off pick your nose and blow off spend a penny David zonked what a plonker are you taking.
                                                </p>
                                                <div class="teacher-social">
                                                    <a href="#"><i class="social_facebook"></i></a>
                                                    <a href="#"><i class="social_twitter"></i></a>
                                                    <a href="#"><i class="social_linkedin"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Instructors Tab -->
                                    <!-- Reviews Tab -->
                                    <div class="tab-pane fade in" id="reviews" role="tabpanel">
                                        <div class="reviw-area">
                                            <h4>Reviews</h4>
                                            <div class="reating-details">
                                                <div class="average-rate">
                                                    <p>Average Rating</p>
                                                    <div class="rate-box">
                                                        <h2>4.8</h2>
                                                        <div class="ratings">
                                                            <i class="icon_star"></i>
                                                            <i class="icon_star"></i>
                                                            <i class="icon_star"></i>
                                                            <i class="icon_star"></i>
                                                            <i class="icon_star"></i>
                                                        </div>
                                                        <span>4 Reviews</span>
                                                    </div>
                                                </div>
                                                <div class="details-rate">
                                                    <p>Detailed Rating</p>
                                                    <div class="detail-rate-box">
                                                        <div class="rate-item">
                                                            <p>5</p>
                                                            <div class="progress">
                                                                <div class="progress-bar" role="progressbar" style="width: 100%;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                            <span>100%</span>
                                                        </div>
                                                        <div class="rate-item">
                                                            <p>4</p>
                                                            <div class="progress">
                                                                <div class="progress-bar" role="progressbar" style="width: 30%;" aria-valuenow="30" aria-valuemin="0" aria-valuemax="30"></div>
                                                            </div>
                                                            <span>30%</span>
                                                        </div>
                                                        <div class="rate-item">
                                                            <p>3</p>
                                                            <div class="progress">
                                                                <div class="progress-bar" role="progressbar" style="width: 20%;" aria-valuenow="20" aria-valuemin="0" aria-valuemax="20"></div>
                                                            </div>
                                                            <span>20%</span>
                                                        </div>
                                                        <div class="rate-item">
                                                            <p>2</p>
                                                            <div class="progress">
                                                                <div class="progress-bar" role="progressbar" style="width: 10%;" aria-valuenow="10" aria-valuemin="0" aria-valuemax="10"></div>
                                                            </div>
                                                            <span>10%</span>
                                                        </div>
                                                        <div class="rate-item">
                                                            <p>1</p>
                                                            <div class="progress">
                                                                <div class="progress-bar" role="progressbar" style="width: 0%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="0"></div>
                                                            </div>
                                                            <span>0%</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="review-rating">
                                                <h5>Comments ( 3 )</h5>
                                                <ol>
                                                    <li>
                                                        <div class="single-comment">
                                                            <img src="${pageContext.request.contextPath}/assets/images/single-course/r1.png" alt="">
                                                            <h5><a href="#">Dianne Ameter</a></h5>
                                                            <span>August 8, 2012 at 9:22 am</span>
                                                            <div class="comment">
                                                                <p>
                                                                    I don't want no agro car boot lavatory wind up twit haggle spiffing show off show off pick your nose and blow off spend a penny David zonked what a plonker are you taking.
                                                                </p>
                                                            </div>
                                                            <div class="ratings">
                                                                <i class="icon_star"></i>
                                                                <i class="icon_star"></i>
                                                                <i class="icon_star"></i>
                                                                <i class="icon_star"></i>
                                                                <i class="icon_star"></i>
                                                            </div>
                                                            <div class="c-border"></div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="single-comment">
                                                            <img src="${pageContext.request.contextPath}/assets/images/single-course/r2.png" alt="">
                                                            <h5><a href="#">Hugh Saturation</a></h5>
                                                            <span>March 14, 2012 at 10:13 am</span>
                                                            <div class="comment">
                                                                <p>
                                                                    Lavatory wind up twit haggle spiffing show off show off pick your nose and blow off spend a penny David zonked what a plonker are you taking.
                                                                </p>
                                                            </div>
                                                            <div class="ratings">
                                                                <i class="icon_star"></i>
                                                                <i class="icon_star"></i>
                                                                <i class="icon_star"></i>
                                                                <i class="icon_star"></i>
                                                                <span><i class="icon_star"></i></span>
                                                            </div>
                                                            <div class="c-border"></div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="single-comment">
                                                            <img src="${pageContext.request.contextPath}/assets/images/single-course/r3.png" alt="">
                                                            <h5><a href="#">Jim Séchen</a></h5>
                                                            <span>April 16, 2012 at 12:15 pm</span>
                                                            <div class="comment">
                                                                <p>
                                                                    He lost his bottle cheeky bugger such fibber Harry porkies spiffing good time wind up argy bargy arse bite your arm off bugger.
                                                                </p>
                                                            </div>
                                                            <div class="ratings">
                                                                <i class="icon_star"></i>
                                                                <i class="icon_star"></i>
                                                                <i class="icon_star"></i>
                                                                <span>
                                                                    <i class="icon_star"></i>
                                                                    <i class="icon_star"></i>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ol>
                                            </div>
                                            <div class="review-form-area">
                                                <h5>Leave a Comment</h5>
                                                <div class="comment-form">
                                                    <form class="row" action="#" method="post">
                                                        <div class="col-md-6">
                                                            <input type="text" name="name" placeholder="Name">
                                                        </div>
                                                        <div class="col-md-6">
                                                            <input type="email" name="email" placeholder="Email">
                                                        </div>
                                                        <div class="col-md-12">
                                                            <input type="text" name="ttile" placeholder="Review Title">
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="comment-form-rating">
                                                                <label >Ratings:</label>
                                                                <div class="ratings" id="rating">
                                                                    <i class="icon_star"></i>
                                                                    <i class="icon_star"></i>
                                                                    <i class="icon_star"></i>
                                                                    <span>
                                                                        <i class="icon_star"></i>
                                                                        <i class="icon_star"></i>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <textarea placeholder="Coment"></textarea>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <button type="submit">Submit Review</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Reviews Tab -->
                                </div>
                                <!-- Tab Content -->
                            </div>
                            <div class="post-share">
                                <h5>Share:</h5>
                                <a class="fac" href="#"><i class="social_facebook"></i></a>
                                <a class="twi" href="#"><i class="social_twitter"></i></a>
                                <a class="goo" href="#"><i class="social_googleplus"></i></a>
                            </div>
                            <div class="related-course">
                                <h3>Related Courses</h3>
                                <div class="related-course-slider owl-carousel">
                                    <div class="feature-course-item-4">
                                        <div class="fcf-thumb">
                                            <img src="${pageContext.request.contextPath}/assets/images/profile/1.jpg" alt="">
                                            <a class="enroll" href="#">Enroll Now</a>
                                        </div>
                                        <div class="fci-details">
                                            <a href="#" class="c-cate"><i class="icon_tag_alt"></i>Computer Science</a>
                                            <h4><a href="single-course.html">Using Creative Problem Solving</a></h4>
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
                                    <div class="feature-course-item-4">
                                        <div class="fcf-thumb">
                                            <img src="${pageContext.request.contextPath}/assets/images/profile/2.jpg" alt="">
                                            <a class="enroll" href="#">Enroll Now</a>
                                        </div>
                                        <div class="fci-details">
                                            <a href="#" class="c-cate"><i class="icon_tag_alt"></i>Art &amp; Design</a>
                                            <h4><a href="single-course.html">The Art of Black and White Photography</a></h4>
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
                                    <div class="feature-course-item-4">
                                        <div class="fcf-thumb">
                                            <img src="${pageContext.request.contextPath}/assets/images/profile/3.jpg" alt="">
                                            <a class="enroll" href="#">Enroll Now</a>
                                        </div>
                                        <div class="fci-details">
                                            <a href="#" class="c-cate"><i class="icon_tag_alt"></i>Business Study</a>
                                            <h4><a href="single-course.html">Learning jQuery mobile for Beginners</a></h4>
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
                                    <div class="feature-course-item-4">
                                        <div class="fcf-thumb">
                                            <img src="${pageContext.request.contextPath}/assets/images/profile/4.jpg" alt="">
                                            <a class="enroll" href="#">Enroll Now</a>
                                        </div>
                                        <div class="fci-details">
                                            <a href="#" class="c-cate"><i class="icon_tag_alt"></i>Data Science</a>
                                            <h4><a href="single-course.html">Buddhism and modern Psychology</a></h4>
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
                                    <div class="feature-course-item-4">
                                        <div class="fcf-thumb">
                                            <img src="${pageContext.request.contextPath}/assets/images/profile/5.jpg" alt="">
                                            <a class="enroll" href="#">Enroll Now</a>
                                        </div>
                                        <div class="fci-details">
                                            <a href="#" class="c-cate"><i class="icon_tag_alt"></i>Web Development</a>
                                            <h4><a href="single-course.html">Making music with Other people</a></h4>
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
                    </div>
                    <div class="col-lg-3">
                        <div class="course-sidebar">
                            <aside class="widget">
                                <div class="info-course">
                                    <ul>
                                        <li><i class="icon_house_alt"></i><span>Instructor: </span> Justin Case</li>
                                        <li><i class="icon_document_alt"></i><span>Lectures: </span> 14</li>
                                        <li><i class="icon_clock_alt"></i><span>Duration: </span> 10 weeks</li>
                                        <li><i class="icon_profile"></i><span>Enrolled: </span> 75 students</li>
                                        <li><i class="icon_cog"></i><span>Language: </span> English</li>
                                        <li><i class="icon_calendar"></i><span>Deadline: </span> 16 April 2020</li>
                                    </ul>
                                    <a class="bisylms-btn" href="#">Enroll Course</a>
                                </div>
                            </aside>
                            <aside class="widget">
                                <h3 class="widget-title">Latest Courses</h3>
                                <div class="latest-course">
                                    <a href="single-course.html"><img src="${pageContext.request.contextPath}/assets/images/course/1.jpg" alt=""></a>
                                    <h5><a href="single-course.html">Using creative problem Solving</a></h5>
                                    <div class="course-price">
                                        $24.00
                                    </div>
                                </div>
                                <div class="latest-course">
                                    <a href="single-course.html"><img src="${pageContext.request.contextPath}/assets/images/course/2.jpg" alt=""></a>
                                    <h5><a href="single-course.html">Fundamentals of UI Design</a></h5>
                                    <div class="course-price">
                                        Free
                                        <span>$76.00</span>
                                    </div>
                                </div>
                                <div class="latest-course">
                                    <a href="single-course.html"><img src="${pageContext.request.contextPath}/assets/images/course/3.jpg" alt=""></a>
                                    <h5><a href="single-course.html">Making music Other people</a></h5>
                                    <div class="course-price">
                                        $46
                                        <span>$76.00</span>
                                    </div>
                                </div>
                                <div class="latest-course">
                                    <a href="single-course.html"><img src="${pageContext.request.contextPath}/assets/images/course/4.jpg" alt=""></a>
                                    <h5><a href="single-course.html">Learning jQuery mobile.</a></h5>
                                    <div class="course-price">
                                        $74
                                        <span>$94.00</span>
                                    </div>
                                </div>
                            </aside>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Course Section End -->
        
        <!-- Footer Section Start -->
        <footer class="footer-1 pd-top-90">
            <div class="container">
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

<!-- Mirrored from quomodosoft.com/html/bisy/single-course.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Jan 2025 07:14:49 GMT -->
</html>
