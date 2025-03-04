<%-- 
    Document   : course3
    Created on : Jan 19, 2025, 9:24:39 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                        <h2 class="banner-title">DUTE ACADEMY</h2>
                        <div class="bread-crumbs">
                            <a href="index-2.html">HOME</a> <span></span> COURSES MAIN
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
                            </ul>

                            <form id="sortForm">
                                <div class="sorting">
                                    <p>Sort by:</p>
                                    <select id="sortOption" name="sort" class="orderby" onchange="updateFilter()">
                                        <option value="default" ${sortType == 'default' ? 'selected' : ''}>Default</option>
                                        <option value="newest" ${sortType == 'newest' ? 'selected' : ''}>Newest Course</option>
                                        <option value="popular" ${sortType == 'popular' ? 'selected' : ''}>Popular Course</option>
                                        <option value="rating" ${sortType == 'rating' ? 'selected' : ''}>Average Rating</option>
                                        <option value="lowtohigh" ${sortType == 'lowtohigh' ? 'selected' : ''}>Low to High</option>
                                        <option value="hightolow" ${sortType == 'hightolow' ? 'selected' : ''}>High to Low</option>
                                    </select>
                                </div>
                            </form>
                            <form class="search-box" method="get" action="homepage">
                                <input type="search" name="s" placeholder="Search Courses..." value="${strSearch}">
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
                                    <c:forEach items="${requestScope.listcourse}" var="c"><tr>
                                        <div class="col-lg-4 col-md-6">
                                            <div class="feature-course-item-4">
                                                <div class="fcf-thumb">
                                                    <img src="${c.thumbnail}"/>
                                                    <a class="enroll" href="courses-detail?courseId=${c.courseID}">Enroll Now</a>
                                                </div>
                                                <div class="fci-details">
                                                    <h4 class="title"><a href="single-course.html">${c.description}</a></h4>
                                                    <div class="price-rate">
                                                        <div class="course-price">
                                                            <span>${c.price}.000VND</span>
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
                                <!-- Pagination -->         
                                <div class="row">
                                    <div class="col-lg-12">

                                        <div class="bisylms-pagination">
                                            <c:forEach begin="1" end="${endP}" var="i">
                                                <a class="${i == currentPage ? 'active' : ''}" href="homepage?index=${i}">${i}</a>
                                            </c:forEach>
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
                                <h3 class="widget-title">Categories</h3>
                                <form id="categoryForm">
                                    <!-- ALL Categories -->
                                    <label>
                                        <input type="radio" name="categoryId" value="0" 
                                               onchange="updateFilter()" ${empty categoriesId || categoriesId == '0' ? 'checked' : ''}>
                                        All
                                    </label><br>

                                    <!-- Software Engineering -->
                                    <h3 class="widget-title">Software Engineering</h3>
                                    <c:forEach var="c" items="${listSE}">
                                        <label>
                                            <input type="radio" name="categoryId" value="${c.categoryID}" 
                                                   onchange="updateFilter()" ${categoriesId == c.categoryID ? 'checked' : ''}>
                                            ${c.categoryName}
                                        </label><br>
                                    </c:forEach>

                                    <!-- Business -->
                                    <h3 class="widget-title">Business</h3>
                                    <c:forEach var="c" items="${listHS}">
                                        <label>
                                            <input type="radio" name="categoryId" value="${c.categoryID}" 
                                                   onchange="updateFilter()" ${categoriesId == c.categoryID ? 'checked' : ''}>
                                            ${c.categoryName}
                                        </label><br>
                                    </c:forEach>

                                    <!-- Linguistics -->
                                    <h3 class="widget-title">Linguistics</h3>
                                    <c:forEach var="c" items="${listNN}">
                                        <label>
                                            <input type="radio" name="categoryId" value="${c.categoryID}" 
                                                   onchange="updateFilter()" ${categoriesId == c.categoryID ? 'checked' : ''}>
                                            ${c.categoryName}
                                        </label><br>
                                    </c:forEach>
                                </form>
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
                                <h3 class="widget-title">New Courses</h3>
                                <c:forEach items="${newCourse}" var="c">
                                    <div class="latest-course">
                                        <a href="single-course.html">
                                            <img src="${c.thumbnail}" alt="">  
                                        </a>
                                        <h5><a href="single-course.html">${c.title}</a></h5>
                                        <div class="course-price">
                                            ${c.price}.000VND
                                        </div>
                                    </div>
                                </c:forEach>
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
    <script>
                           function updateFilter() {
                               let selectedCategory = document.querySelector('input[name="categoryId"]:checked');
                               let sortOption = document.getElementById("sortOption").value;

                               let url = "homepage?";
                               let params = [];

                               // Nếu có category được chọn, thêm categoryId vào danh sách tham số
                               if (selectedCategory) {
                                   params.push("categoryId=" + selectedCategory.value);
                               }

                               // Nếu có sort được chọn (không phải "default"), thêm sort vào danh sách tham số
                               if (sortOption && sortOption !== "default") {
                                   params.push("sort=" + sortOption);
                               }

                               // Nối tất cả tham số lại với nhau và điều hướng
                               if (params.length > 0) {
                                   url += params.join("&");
                               }

                               window.location.href = url;
                           }
    </script>

    <!-- Mirrored from quomodosoft.com/html/bisy/course-3.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Jan 2025 07:14:46 GMT -->
</html>
