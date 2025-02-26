<%-- 
    Document   : lession
    Created on : Feb 17, 2025, 12:07:03 AM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Courses Lesson</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Place favicon.ico in the root directory -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/images/logo/favicon.svg">
        <!-- CSS here -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lesson/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lesson/animate.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lesson/swiper.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lesson/magnific-popup.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lesson/fontawesome-pro.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lesson/nouislider.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lesson/icomoon.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lesson/spacing.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lesson/apexcharts.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lesson/main.css">
    </head>

    <body>

        <!-- preloader start -->
        <div id="loading">
            <div id="loading-center">
                <div id="loading-center-absolute">
                    <div class="bd-preloader-content">
                        <div class="bd-preloader-logo">
                            <div class="bd-preloader-circle">
                                <svg width="190" height="190" viewBox="0 0 380 380" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <circle stroke="#F5F5F5" cx="190" cy="190" r="180" stroke-width="6" stroke-linecap="round">
                                </circle>
                                <circle stroke="red" cx="190" cy="190" r="180" stroke-width="6" stroke-linecap="round">
                                </circle>
                                </svg>
                            </div>
                            <img src="assets/images/logo/preloader-icon.png" alt="">
                        </div>
                        <p class="bd-preloader-subtitle">Loading...</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- preloader end -->

        <!-- Body main wrapper start -->
        <main>

            <!-- course lesson area start -->
            <section class="bd-lesson-area p-relative">
                <div class="bd-lesson-wrapper">
                    <div class="bd-lesson-content">
                        <div class="bd-lesson-logo">
                            <a href="index-2.html"><img src="assets/images/logo/logo.svg" alt="logo"></a>
                        </div>
                        <h2 class="title">Course Content</h2>
                        <div class="accordion-common-style accordion-transparent">
                            <div class="accordion" id="accordionExample">
                                <!-- Section 1 -->
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingOne">
                                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                            <span>Q.</span> Introduction to Web Development
                                        </button>
                                    </h2>
                                    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <c:forEach items="${sessionScope.listCourseVideo}" var="courseVideo">
                                                <a href="#" class="bd-course-curriculum-content d-flex-between">
                                                    <div class="bd-course-curriculum-info d-flex-items gap-10">
                                                        <div class="icon"><i class="fa-solid fa-video"></i></div>
                                                        <p class="title" >${courseVideo.title}</p>
                                                    </div>
                                                    <div class="bd-course-curriculum-meta d-flex-items gap-10">
                                                        <span class="duration">${courseVideo.duration}:00</span>
                                                    </div>
                                                </a>
                                            </c:forEach>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="app-offcanvas-overlay"></div>
                    <div class="bd-lesson-player">
                        <div class="bd-lesson-video-wrap">
                            <div class="bd-lesson-video-title-wrap">
                                <div class="bd-lesson-video-title-wrap-left">
                                    <a id="sidebarActive" href="javascript:void(0)"><i class="fa-solid fa-list"></i></a>
                                    <span>Complete Guide to Web Development: Beginner to Advanced</span>
                                </div>
                                <div class="bd-lesson-video-title-wrap-right">
                                    <a href="index-2.html"><i class="fas fa-times"></i></a>
                                </div>
                            </div>
                            <!-- add video here system -->
                            <img src="assets/images/course/lesson-prev.webp" alt="">

                        </div>
                    </div>
                </div>
            </section>
            <!-- course lesson area end -->

        </main>
        <!-- Body main wrapper end -->

        <!-- footer area start -->

        <!-- footer area end -->

        <!-- back to top -->
        <div class="backtotop-wrap cursor-pointer">
            <svg class="backtotop-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
            <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" />
            </svg>
        </div>
        <!-- Backtotop end -->

        <!-- JS here -->
        <script src="${pageContext.request.contextPath}/assets/js/lesson/vendor/jquery-3.7.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/lesson/plugins/waypoints.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/lesson/vendor/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/lesson/plugins/swiper.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/lesson/plugins/wow.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/lesson/vendor/magnific-popup.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/lesson/vendor/isotope.pkgd.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/lesson/vendor/imagesloaded.pkgd.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/lesson/plugins/nice-select.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/lesson/vendor/ajax-form.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/lesson/plugins/easypie.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/lesson/vendor/purecounter.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/lesson/plugins/nouislider.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/lesson/plugins/apexcharts.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/lesson/plugins/typed.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/lesson/main.js"></script>
    </body>
</html>
