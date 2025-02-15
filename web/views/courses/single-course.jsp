<%-- 
    Document   : single-course
    Created on : Jan 19, 2025, 9:29:26 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                        <!--Category : hien ki may-->
                        <h2 class="banner-title">${requestScope.category.categoryName}</h2>
                        <div class="bread-crumbs">
                            <a href="views/home/home.jsp">Home</a> <span></span> ${requestScope.category.categoryName}
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
                        <c:set value="${requestScope.course}" var="course"></c:set>
                            <div class="single-course-area">
                                <div class="course-top">
                                    <h4>${course.title}</h4>
                                <div class="course-meta">
                                    <!--                                    <div class="author">
                                                                            <img src="${course.thumbnail}" alt="">
                                                                            <span>Teacher</span>
                                                                            <a href="#">Anthony</a>
                                                                        </div>-->
                                    <c:set value="${requestScope.category}" var="category"></c:set>
                                        <div class="categories">
                                            <span>Categories:</span>
                                            <a href="#">${category.categoryName}</a>
                                    </div>
                                    <!--                                    <div class="ratings">
                                                                            <span>4.5 (9 Reviews)</span>
                                                                            <i class="icon_star"></i>
                                                                            <i class="icon_star"></i>
                                                                            <i class="icon_star"></i>
                                                                            <i class="icon_star"></i>
                                                                            <i class="icon_star"></i>
                                                                        </div>-->
                                </div>
                                <div class="course-price">
                                    ${course.price*1000}VND
                                    <!--                                        <span>$92.00</span>-->
                                </div>
                            </div>
                            <div class="sc-thumb">
                                <img src="${course.thumbnail}" alt="">
                            </div>
                            <div class="course-tab-wrapper">
                                <ul class="course-tab-btn nav nav-tabs">
                                    <li><a class="active" href="#overview" data-toggle="tab"><i class="icon_ribbon_alt"></i>Overview</a></li>
                                    <li><a href="#curriculum" data-toggle="tab"><i class="icon_book_alt"></i>Curriculum</a></li>

                                    <li><a href="#reviews" data-toggle="tab"><i class="icon_star"></i>Reviews</a></li>
                                </ul>
                                <!-- Tab Content -->
                                <div class="tab-content">
                                    <!-- Overview Tab -->
                                    <div class="tab-pane fade in show active" id="overview" role="tabpanel">

                                        <div class="overview-content">
                                            <h4>Course Description</h4>
                                            <p>${course.description}</p>
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
                                                    <c:forEach items="${requestScope.listCourseVideo}" var="courseVideo">
                                                        <div class="ci-item">
                                                            <h5>
                                                                <i class="icon_menu-square_alt2"></i>
                                                                <a href="#">${courseVideo.title}</a>
                                                            </h5>
                                                            
                                                            <div class="ci-tools">
                                                                <a href="#" class="time">${courseVideo.duration} minutes</a>
                                                                <a href="#" class="lock"><i class="icon_lock_alt"></i></a>
                                                            </div>
                                                        </div>
                                                    </c:forEach>
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                    <!-- Curriculum Tab -->
                                    <!-- Instructors Tab -->
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
                                                            <img src="assets/images/single-course/r1.png" alt="">
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
                                                            <img src="assets/images/single-course/r2.png" alt="">
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
                                                            <img src="assets/images/single-course/r3.png" alt="">
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
                            <!--                                <div class="related-course">
                                                                <h3>Related Courses</h3>
                                                                <div class="related-course-slider owl-carousel">
                                                                    <div class="feature-course-item-4">
                                                                        <div class="fcf-thumb">
                                                                            <img src="assets/images/profile/1.jpg" alt="">
                                                                            <a class="enroll" href="#">Enroll Now</a>
                                                                        </div>
                                                                        <div class="fci-details">
                                                                            <a href="#" class="c-cate"><i class="icon_tag_alt"></i>Computer Science</a>
                                                                            <h4><a href="single-course.html">Using Creative Problem Solving</a></h4>
                                                                            <div class="author">
                                                                                <img src="assets/images/home3/course/a1.png" alt="">
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
                                                                            <img src="assets/images/profile/2.jpg" alt="">
                                                                            <a class="enroll" href="#">Enroll Now</a>
                                                                        </div>
                                                                        <div class="fci-details">
                                                                            <a href="#" class="c-cate"><i class="icon_tag_alt"></i>Art &amp; Design</a>
                                                                            <h4><a href="single-course.html">The Art of Black and White Photography</a></h4>
                                                                            <div class="author">
                                                                                <img src="assets/images/home3/course/a2.png" alt="">
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
                                                                            <img src="assets/images/profile/3.jpg" alt="">
                                                                            <a class="enroll" href="#">Enroll Now</a>
                                                                        </div>
                                                                        <div class="fci-details">
                                                                            <a href="#" class="c-cate"><i class="icon_tag_alt"></i>Business Study</a>
                                                                            <h4><a href="single-course.html">Learning jQuery mobile for Beginners</a></h4>
                                                                            <div class="author">
                                                                                <img src="assets/images/home3/course/a3.png" alt="">
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
                                                                            <img src="assets/images/profile/4.jpg" alt="">
                                                                            <a class="enroll" href="#">Enroll Now</a>
                                                                        </div>
                                                                        <div class="fci-details">
                                                                            <a href="#" class="c-cate"><i class="icon_tag_alt"></i>Data Science</a>
                                                                            <h4><a href="single-course.html">Buddhism and modern Psychology</a></h4>
                                                                            <div class="author">
                                                                                <img src="assets/images/home3/course/a4.png" alt="">
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
                                                                            <img src="assets/images/profile/5.jpg" alt="">
                                                                            <a class="enroll" href="#">Enroll Now</a>
                                                                        </div>
                                                                        <div class="fci-details">
                                                                            <a href="#" class="c-cate"><i class="icon_tag_alt"></i>Web Development</a>
                                                                            <h4><a href="single-course.html">Making music with Other people</a></h4>
                                                                            <div class="author">
                                                                                <img src="assets/images/home3/course/a6.png" alt="">
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
                                                        </div>-->
                        </div>

                    </div>
                    <div class="col-lg-3">
                        <div class="course-sidebar">
                            <aside class="widget">
                                <div class="info-course">
                                    <ul>
                                        <li><i class="icon_document_alt"></i><span>Lectures: </span> 14</li>
                                        <li><i class="icon_clock_alt"></i><span>Duration: </span> 10 weeks</li>
                                        <li><i class="icon_profile"></i><span>Enrolled: </span> </li>
                                        <li><i class="icon_cog"></i><span>Language: </span> Vietnamese</li>
                                    </ul>
                                    <a class="bisylms-btn" href="#">Enroll Course</a>
                                </div>
                            </aside>
                            <aside class="widget">
                                <h3 class="widget-title">Related Courses</h3>
                                <c:forEach items="${requestScope.relatedCourses}" var="rc">
                                    <div class="latest-course">
                                        <a href="singlecourse?id=${rc.courseID}"><img src="${rc.thumbnail}" alt=""></a>
                                        <h5><a href="singlecourse?id=${rc.courseID}">${rc.title}</a></h5>
                                        <div class="course-price">
                                            ${rc.price * 1000}VND
                                        </div>
                                    </div>
                                </c:forEach>
                            </aside>
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
