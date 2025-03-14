<%-- 
    Document   : course3
    Created on : Jan 19, 2025, 9:24:39 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    
<!-- Mirrored from quomodosoft.com/html/bisy/course-3.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Jan 2025 07:14:39 GMT -->
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
        <section class="page-banner" style="background-image: url(${pageContext.request.contextPath}/assets/images/banner4.jpg);">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="banner-title">Courses Grid</h2>
                        <div class="bread-crumbs">
                            <a href="index-2.html">Home</a> <span></span> Courses Grid
                        </div>
                    </div>
                </div>
            </div>
        </section>  
        <!-- Banner End -->

        <!-- Course Section Start -->
        <section class="coursepage-section-2">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="toolbar-wrapper-2">
                            <ul class="toolbar-btn nav nav-tabs">
                                <li><a class="active" href="#grid" data-toggle="tab"><i class="icon_grid-2x2"></i>Grid</a></li>
                                <li><a href="#list" data-toggle="tab"><i class="icon_menu"></i>List</a></li>
                            </ul>
                            <div class="sorting">
                                <p>Sort by:</p>
                                <select name="orderby" class="orderby">
                                    <option value="menu_order" selected="selected">Default</option>
                                    <option value="new">Newest Course</option>
                                    <option value="popular">Popular Course</option>
                                    <option value="rating">Average Rating</option>
                                    <option value="price">Low to High</option>
                                    <option value="price-desc">High to Low</option>
                                </select>
                            </div>
                            <form class="search-box" method="post" action="#">
                                <input type="search" name="s" placeholder="Search Courses...">
                                <button type="submit"><i class="ti-search"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-9">
                        <!-- Tab Content -->
                        <div class="tab-content">
                            <!-- Grid Tab -->
                            <div class="tab-pane fade show in active" id="grid" role="tabpanel">
                                <div class="row">
                                    <div class="col-lg-4 col-md-6">
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
                                    </div>
                                    <div class="col-lg-4 col-md-6">
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
                                    </div>
                                    <div class="col-lg-4 col-md-6">
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
                                    </div>
                                    <div class="col-lg-4 col-md-6">
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
                                    </div>
                                    <div class="col-lg-4 col-md-6">
                                        <div class="feature-course-item-4">
                                            <div class="fcf-thumb">
                                                <img src="${pageContext.request.contextPath}/assets/images/profile/6.jpg" alt="">
                                                <a class="enroll" href="#">Enroll Now</a>
                                            </div>
                                            <div class="fci-details">
                                                <a href="#" class="c-cate"><i class="icon_tag_alt"></i>UI/UX Design</a>
                                                <h4><a href="single-course.html">Fundamentals of UI Design</a></h4>
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
                                    <div class="col-lg-4 col-md-6">
                                        <div class="feature-course-item-4">
                                            <div class="fcf-thumb">
                                                <img src="${pageContext.request.contextPath}/assets/images/profile/7.jpg" alt="">
                                                <a class="enroll" href="#">Enroll Now</a>
                                            </div>
                                            <div class="fci-details">
                                                <a href="#" class="c-cate"><i class="icon_tag_alt"></i>It Solution</a>
                                                <h4><a href="single-course.html">How to Make Beautiful Landscape Photos?</a></h4>
                                                <div class="author">
                                                    <img src="${pageContext.request.contextPath}/assets/images/home3/course/a7.png" alt="">
                                                    <a href="#">Jake Weary</a>
                                                </div>
                                                <div class="price-rate">
                                                    <div class="course-price">
                                                        Free
                                                        <span>$42.00</span>
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
                                                <img src="${pageContext.request.contextPath}/assets/images/profile/8.jpg" alt="">
                                                <a class="enroll" href="#">Enroll Now</a>
                                            </div>
                                            <div class="fci-details">
                                                <a href="#" class="c-cate"><i class="icon_tag_alt"></i>App Design</a>
                                                <h4><a href="single-course.html">Adobe XD: Prototyping Tips and Tricks</a></h4>
                                                <div class="author">
                                                    <img src="${pageContext.request.contextPath}/assets/images/home3/course/a8.png" alt="">
                                                    <a href="#">Hanson Deck</a>
                                                </div>
                                                <div class="price-rate">
                                                    <div class="course-price">
                                                        $47.00
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
                                        <div class="feature-course-item-4">
                                            <div class="fcf-thumb">
                                                <img src="${pageContext.request.contextPath}/assets/images/profile/9.jpg" alt="">
                                                <a class="enroll" href="#">Enroll Now</a>
                                            </div>
                                            <div class="fci-details">
                                                <a href="#" class="c-cate"><i class="icon_tag_alt"></i>Learning</a>
                                                <h4><a href="single-course.html">Fundamental basic of earning english </a></h4>
                                                <div class="author">
                                                    <img src="${pageContext.request.contextPath}/assets/images/home3/course/a9.png" alt="">
                                                    <a href="#">Jackson Pot</a>
                                                </div>
                                                <div class="price-rate">
                                                    <div class="course-price">
                                                        $74.00
                                                        <span>$99.00</span>
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
                                <!-- Pagination -->
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="bisylms-pagination">
                                            <span class="current">01</span>
                                            <a href="#">02</a>
                                            <a class="next" href="#">next<i class="arrow_right"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Pagination -->
                            </div>
                            <!-- Grid Tab -->

                            <!-- List Tab -->
                            <div class="tab-pane fade in" id="list" role="tabpanel">

                                <div class="course-item-4">
                                    <div class="ci-thumb">
                                        <img src="${pageContext.request.contextPath}/assets/images/course/l1.jpg" alt="">
                                        <a class="enroll" href="single-course.html">Enroll Now</a>
                                    </div>
                                    <div class="course-details">
                                        <a href="#" class="c-cate"><i class="icon_tag_alt"></i>Computer Science</a>
                                        <h4><a href="single-course.html">Using creative problem Solving</a></h4>
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
                                <div class="course-item-4">
                                    <div class="ci-thumb">
                                        <img src="${pageContext.request.contextPath}/assets/images/course/l2.jpg" alt="">
                                        <a class="enroll" href="single-course.html">Enroll Now</a>
                                    </div>
                                    <div class="course-details">
                                        <a href="#" class="c-cate"><i class="icon_tag_alt"></i>Art & Design</a>
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
                                                <span>4.5 (2,420)</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="course-item-4">
                                    <div class="ci-thumb">
                                        <img src="${pageContext.request.contextPath}/assets/images/course/l3.jpg" alt="">
                                        <a class="enroll" href="single-course.html">Enroll Now</a>
                                    </div>
                                    <div class="course-details">
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
                                <div class="course-item-4">
                                    <div class="ci-thumb">
                                        <img src="${pageContext.request.contextPath}/assets/images/course/l4.jpg" alt="">
                                        <a class="enroll" href="single-course.html">Enroll Now</a>
                                    </div>
                                    <div class="course-details">
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
                                <div class="course-item-4">
                                    <div class="ci-thumb">
                                        <img src="${pageContext.request.contextPath}/assets/images/course/l5.jpg" alt="">
                                        <a class="enroll" href="single-course.html">Enroll Now</a>
                                    </div>
                                    <div class="course-details">
                                        <a href="#" class="c-cate"><i class="icon_tag_alt"></i>Web Development</a>
                                        <h4><a href="single-course.html">Making music with Other people</a></h4>
                                        <div class="author">
                                            <img src="${pageContext.request.contextPath}/assets/images/home3/course/a5.png" alt="">
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
                                <div class="course-item-4">
                                    <div class="ci-thumb">
                                        <img src="${pageContext.request.contextPath}/assets/images/course/l6.jpg" alt="">
                                        <a class="enroll" href="single-course.html">Enroll Now</a>
                                    </div>
                                    <div class="course-details">
                                        <a href="#" class="c-cate"><i class="icon_tag_alt"></i>UI/UX Design</a>
                                        <h4><a href="single-course.html">Fundamentals of <br>UI Design</a></h4>
                                        <div class="author">
                                            <img src="${pageContext.request.contextPath}/assets/images/home3/course/a6.png" alt="">
                                            <a href="#">Weir Doe</a>
                                        </div>
                                        <div class="price-rate">
                                            <div class="course-price">
                                                Free
                                                <span>$76.85</span>
                                            </div>
                                            <div class="ratings">
                                                <i class="icon_star"></i>
                                                <span>4.5 (2,420)</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Pagination -->
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="bisylms-pagination">
                                            <span class="current">01</span>
                                            <a href="#">02</a>
                                            <a class="next" href="#">next<i class="arrow_right"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Pagination -->
                            </div>
                            <!-- Grid Tab -->
                        </div>
                        <!-- Tab Content -->
                    </div>
                    <div class="col-lg-3">
                        <div class="course-sidebar">
                            <aside class="widget">
                                <h3 class="widget-title">Course Categories</h3>
                                <ul>
                                    <li><a href="#">Web Design</a></li>
                                    <li><a href="#">Marketing</a></li>
                                    <li><a href="#">Frontend</a></li>
                                    <li><a href="#">IT &amp; Software</a></li>
                                    <li><a href="#">Photography</a></li>
                                    <li><a href="#">Technology</a></li>
                                    <li><a href="#">General</a></li>
                                </ul>
                            </aside>
                            <aside class="widget widget-filter">
                                <h3 class="widget-title">Price Filter</h3>
                                <form action="#" method="get" class="clearfix">
                                    <div class="price-filter">
                                        <ul>
                                            <li>
                                                <input type="checkbox" checked="checked" id="all" name="all" value="all">
                                                <label for="all">
                                                    All
                                                </label>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="premium" name="premium" value="premium">
                                                <label for="premium">
                                                    Premium Courses
                                                </label>
                                            </li>
                                            <li>
                                                <input type="checkbox" id="free" name="free" value="free">
                                                <label for="free">
                                                    Free Courses
                                                </label>
                                            </li>
                                        </ul>
                                        <button type="submit">Filter Results</button>
                                    </div>
                                </form>
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

<!-- Mirrored from quomodosoft.com/html/bisy/course-3.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Jan 2025 07:14:46 GMT -->
</html>
