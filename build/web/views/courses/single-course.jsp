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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/starrating.css" />
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
                        <h2 class="banner-title">${sessionScope.category.categoryName}</h2>
                        <div class="bread-crumbs">
                            <a href="views/home/home.jsp">Home</a> <span></span> ${sessionScope.category.categoryName}
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
                        <c:set value="${sessionScope.course}" var="course"></c:set>
                            <div class="single-course-area">
                                <div class="course-top">
                                    <h4>${course.title}</h4>
                                <div class="course-meta">
                                    <!--                                    <div class="author">
                                                                            <img src="${course.thumbnail}" alt="">
                                                                            <span>Teacher</span>
                                                                            <a href="#">Anthony</a>
                                                                        </div>-->
                                    <c:set value="${sessionScope.category}" var="category"></c:set>
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
                                                    <c:forEach items="${sessionScope.listCourseVideo}" var="courseVideo">
                                                        <div class="ci-item">
                                                            <h5>
                                                                <i class="icon_menu-square_alt2"></i>
                                                                <a href="lesson">${courseVideo.title}</a>
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
                                                        <h2>${sessionScope.avgRating}</h2>
                                                        <div class="rating-container">
                                                            <div class="stars" >
                                                                <div class="filled" style="width: calc(${sessionScope.avgRating} * 20%);"></div>
                                                            </div>
                                                        </div>
                                                        <span>${sessionScope.totalReview} Reviews</span>
                                                    </div>
                                                </div>
                                                <div class="details-rate">
                                                    <p>Detailed Rating</p>
                                                    <div class="detail-rate-box">
                                                        <c:forEach items="${sessionScope.ratingPercent}" var="ratingPercent">
                                                            <div class="rate-item">
                                                                <p>${ratingPercent.rating}</p>
                                                                <div class="progress">
                                                                    <div class="progress-bar" role="progressbar" style="width: ${ratingPercent.percent}%;" aria-valuenow="${ratingPercent.percent}" aria-valuemin="0" aria-valuemax="100"></div>
                                                                </div>
                                                                <span>${ratingPercent.percent}%</span>
                                                            </div>
                                                        </c:forEach>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="review-rating">
                                                <h5>Comments:</h5>
                                                <ol class="comment-list">
                                                    <c:forEach items="${sessionScope.listReview}" var="review" varStatus="status">
                                                        <li class="box" style="${status.index >= 3 ? 'display: none;' : ''}">
                                                            <div class="single-comment">
                                                                <img src="assets/images/single-course/r1.png" alt="">
                                                                <h5><a href="#">${review.user.fullName}</a></h5>
                                                                <span>${review.date}</span>
                                                                <div class="review-ratings">
                                                                    <c:forEach var="i" begin="1" end="5">
                                                                        <i class="star ${i <= review.rating ? 'filled' : ''}">&#9733;</i>
                                                                    </c:forEach>
                                                                </div>
                                                                <div class="comment">
                                                                    <p>${review.comment}</p>
                                                                </div>
                                                                <div class="c-border"></div>
                                                            </div>
                                                        </li>
                                                    </c:forEach>
                                                </ol>
                                                <c:if test="${sessionScope.totalReview > 3}">
                                                    <button id="load-more">Load More</button>
                                                </c:if>
                                            </div>

                                            <div class="review-pagination">
                                                <c:set var="page" value="${requestScope.page}"></c:set>
                                                    <ul class="pagination">
                                                    <c:if test="${page > 1}">
                                                        <li><a href="singlecourse?id=${param.id}&page=${page - 1}">Previous &laquo;</a></li>
                                                        </c:if>

                                                    <c:forEach var="i" begin="1" end="${requestScope.num}">
                                                        <li class="${i == page ? "active" : ""}">
                                                            <a href="singlecourse?id=${param.id}&page=${i}">${i}</a>
                                                        </li>
                                                    </c:forEach>

                                                    <c:if test="${requestScope.page < requestScope.num}">
                                                        <li><a href="singlecourse?id=${param.id}&page=${page + 1}">Next &raquo;</a></li>
                                                        </c:if>
                                                </ul>
                                            </div>     

                                            <div class="review-form-area">
                                                <h5>Leave a Comment</h5>
                                                <div class="comment-form">
                                                    <form class="row" action="#" method="post">
                                                        <div class="col-md-6 review-name">
                                                            <input type="text" name="name" placeholder="Name">
                                                        </div>
                                                        <div class="col-md-6 review-email">
                                                            <input type="email" name="email" placeholder="Email">
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="comment-form-rating">
                                                                <label>Ratings:</label>
                                                                <div class="ratings">
                                                                    <input type="radio" id="star5" name="rating" value="5">
                                                                    <label for="star5">★</label>
                                                                    <input type="radio" id="star4" name="rating" value="4">
                                                                    <label for="star4">★</label>
                                                                    <input type="radio" id="star3" name="rating" value="3">
                                                                    <label for="star3">★</label>
                                                                    <input type="radio" id="star2" name="rating" value="2">
                                                                    <label for="star2">★</label>
                                                                    <input type="radio" id="star1" name="rating" value="1">
                                                                    <label for="star1">★</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <textarea placeholder="Comment"></textarea>
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
                        </div>

                    </div>
                    <div class="col-lg-3">
                        <div class="course-sidebar">
                            <aside class="widget">
                                <div class="info-course">
                                    <ul>
                                        <li><i class="icon_document_alt"></i><span>Lectures: </span> ${sessionScope.totalLesson}</li>
                                        <li><i class="icon_clock_alt"></i><span>Duration: </span> ${sessionScope.totalDuration} Hours</li>
                                        <li><i class="icon_profile"></i><span>Enrolled: </span> </li>
                                        <li><i class="icon_cog"></i><span>Language: </span> Vietnamese</li>
                                    </ul>
                                    <a class="bisylms-btn" href="#">Enroll Course</a>
                                </div>
                            </aside>
                            <aside class="widget">
                                <h3 class="widget-title">Related Courses</h3>
                                <c:forEach items="${sessionScope.relatedCourses}" var="rc">
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
        <script src="${pageContext.request.contextPath}/assets/js/comment.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/theme.js"></script>
        <!-- End Include All JS -->

    </body>

    <!-- Mirrored from quomodosoft.com/html/bisy/single-course.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Jan 2025 07:14:49 GMT -->
</html>
