<%-- 
    Document   : blog-page
    Created on : Jan 19, 2025, 9:33:28 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    
<!-- Mirrored from quomodosoft.com/html/bisy/blog.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Jan 2025 07:14:55 GMT -->
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
        <link rel="icon"  type="image/png" href="assets/images/favicon.png">
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
        <section class="page-banner" style="background-image: url(${pageContext.request.contextPath}/assets/images/banner.jpg);">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="banner-title">Blog Grid</h2>
                        <div class="bread-crumbs">
                            <a href="index-2.html">Home</a> <span></span> Blog Grid
                        </div>
                    </div>
                </div>
            </div>
        </section>  
        <!-- Banner End -->

        <!-- Blog Start -->
        <section class="blogpage-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-7">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="post-item-1">
                                    <img src="${pageContext.request.contextPath}/assets/images/blog/1.jpg" alt="">
                                    <div class="b-post-details">
                                        <div class="bp-meta">
                                            <a href="#"><i class="icon_clock_alt"></i>April 22, 2020</a>
                                            <a href="#"><i class="icon_chat_alt"></i>6 Comments</a>
                                        </div>
                                        <h3><a href="single-post.html">Build A Full Web Chat App From Scratch.</a></h3>
                                        <a class="read-more" href="single-post.html">Read More<i class="arrow_right"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="post-item-1">
                                    <img src="${pageContext.request.contextPath}/assets/images/blog/2.jpg" alt="">
                                    <div class="b-post-details">
                                        <div class="bp-meta">
                                            <a href="#"><i class="icon_clock_alt"></i>January 24, 2020</a>
                                            <a href="#"><i class="icon_chat_alt"></i>4 Comments</a>
                                        </div>
                                        <h3><a href="single-post.html">Insights on How to Improve Your Teaching.</a></h3>
                                        <a class="read-more" href="single-post.html">Read More<i class="arrow_right"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="post-item-1">
                                    <img src="${pageContext.request.contextPath}/assets/images/blog/3.jpg" alt="">
                                    <div class="b-post-details">
                                        <div class="bp-meta">
                                            <a href="#"><i class="icon_clock_alt"></i>July 13, 2020</a>
                                            <a href="#"><i class="icon_chat_alt"></i>2 Comments</a>
                                        </div>
                                        <h3><a href="single-post.html">Brush Strokes Energize Trees In Paintings</a></h3>
                                        <a class="read-more" href="single-post.html">Read More<i class="arrow_right"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="post-item-1">
                                    <img src="${pageContext.request.contextPath}/assets/images/blog/4.jpg" alt="">
                                    <div class="b-post-details">
                                        <div class="bp-meta">
                                            <a href="#"><i class="icon_clock_alt"></i>March 12, 2020</a>
                                            <a href="#"><i class="icon_chat_alt"></i>2 Comments</a>
                                        </div>
                                        <h3><a href="single-post.html">Learning Python for Data Analysis.</a></h3>
                                        <a class="read-more" href="single-post.html">Read More<i class="arrow_right"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="post-item-1">
                                    <img src="${pageContext.request.contextPath}/assets/images/blog/5.jpg" alt="">
                                    <div class="b-post-details">
                                        <div class="bp-meta">
                                            <a href="#"><i class="icon_clock_alt"></i>Janu 26, 2020</a>
                                            <a href="#"><i class="icon_chat_alt"></i>3 Comments</a>
                                        </div>
                                        <h3><a href="single-post.html">Logotype Masterclass with Jessica Hische</a></h3>
                                        <a class="read-more" href="single-post.html">Read More<i class="arrow_right"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="post-item-1">
                                    <img src="${pageContext.request.contextPath}/assets/images/blog/6.jpg" alt="">
                                    <div class="b-post-details">
                                        <div class="bp-meta">
                                            <a href="#"><i class="icon_clock_alt"></i>April 22, 2020</a>
                                            <a href="#"><i class="icon_chat_alt"></i>4 Comments</a>
                                        </div>
                                        <h3><a href="single-post.html">Build A Full Web Chat App From Scratch.</a></h3>
                                        <a class="read-more" href="single-post.html">Read More<i class="arrow_right"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="post-item-1">
                                    <img src="${pageContext.request.contextPath}/assets/images/blog/7.jpg" alt="">
                                    <div class="b-post-details">
                                        <div class="bp-meta">
                                            <a href="#"><i class="icon_clock_alt"></i>Agust 12, 2020</a>
                                            <a href="#"><i class="icon_chat_alt"></i>2 Comments</a>
                                        </div>
                                        <h3><a href="single-post.html">Learning Python for Data Analysis.</a></h3>
                                        <a class="read-more" href="single-post.html">Read More<i class="arrow_right"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="post-item-1">
                                    <img src="${pageContext.request.contextPath}/assets/images/blog/8.jpg" alt="">
                                    <div class="b-post-details">
                                        <div class="bp-meta">
                                            <a href="#"><i class="icon_clock_alt"></i>March 13, 2020</a>
                                            <a href="#"><i class="icon_chat_alt"></i>2 Comments</a>
                                        </div>
                                        <h3><a href="single-post.html">Learning Python for Data Analysis.</a></h3>
                                        <a class="read-more" href="single-post.html">Read More<i class="arrow_right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="bisylms-pagination">
                                    <span class="current">01</span>
                                    <a href="#">02</a>
                                    <a class="next" href="#">next<i class="arrow_right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-5">
                        <div class="blog-sidebar">
                            <aside class="widget widget-search">
                                <form class="search-form" action="#" method="post">
                                    <input type="search" name="s" placeholder="Search...">
                                    <button type="submit"><i class="ti-search"></i></button>
                                </form>
                            </aside>
                            <aside class="widget widget-categories">
                                <h3 class="widget-title">Categories</h3>
                                <ul>
                                    <li><a href="#">Web Design</a><span>(24)</span></li>
                                    <li><a href="#">Marketing</a><span>(15)</span></li>
                                    <li><a href="#">Frontend</a><span>(8)</span></li>
                                    <li><a href="#">IT & Software</a><span>(13)</span></li>
                                    <li><a href="#">Photography</a><span>(4)</span></li>
                                    <li><a href="#">Technology</a><span>(16)</span></li>
                                    <li><a href="#">General</a><span>(12)</span></li>
                                </ul>
                            </aside>
                            <aside class="widget widget-trend-post">
                                <h3 class="widget-title">Popular Posts</h3>
                                <div class="popular-post">
                                    <a href="single-post.html"><img src="${pageContext.request.contextPath}/assets/images/blog/p1.jpg" alt=""></a>
                                    <h5><a href="single-post.html">Using creative problem Solving</a></h5>
                                    <span>March 10, 2020</span>
                                </div>
                                <div class="popular-post">
                                    <a href="single-post.html"><img src="${pageContext.request.contextPath}/assets/images/blog/p2.jpg" alt=""></a>
                                    <h5><a href="single-post.html">Fundamentals of UI Design</a></h5>
                                    <span>Jan 14, 2020</span>
                                </div>
                                <div class="popular-post">
                                    <a href="single-post.html"><img src="${pageContext.request.contextPath}/assets/images/blog/p3.jpg" alt=""></a>
                                    <h5><a href="single-post.html">Making music with Other people</a></h5>
                                    <span>April 12, 2020</span>
                                </div>
                                <div class="popular-post">
                                    <a href="single-post.html"><img src="${pageContext.request.contextPath}/assets/images/blog/p4.jpg" alt=""></a>
                                    <h5><a href="single-post.html">Brush strokes energize Trees in paintings</a></h5>
                                    <span>July 4, 2020</span>
                                </div>
                            </aside>
                            <aside class="widget">
                                 <h3 class="widget-title">Popular Tags</h3>
                                 <div class="tags">
                                    <a href="#">Bisy LMS</a>
                                    <a href="#">Design</a>
                                    <a href="#">General</a>
                                    <a href="#">Online</a>
                                    <a href="#">Prevention</a>
                                    <a href="#">Artist</a>
                                    <a href="#">Education</a>
                                    <a href="#">Motivation</a>
                                    <a href="#">Politico</a>
                                    <a href="#">Live Cases</a>
                                 </div>
                            </aside>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Blog End -->

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

<!-- Mirrored from quomodosoft.com/html/bisy/blog.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Jan 2025 07:14:58 GMT -->
</html>
