<%-- 
    Document   : blog-details
    Created on : Jan 19, 2025, 9:33:15 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    
<!-- Mirrored from quomodosoft.com/html/bisy/single-post.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Jan 2025 07:14:58 GMT -->
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
        <section class="page-banner single-p-banner" style="background-image: url(${pageContext.request.contextPath}/assets/images/banner2.jpg);">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <a class="post-cate" href="#">Education</a>
                        <h2 class="banner-title">
                            Build a full web chat app From Scratch.
                        </h2>
                        <div class="bp-meta">
                            <a href="#"><i class="icon_clock_alt"></i>April 22, 2020</a>
                            <a href="#"><i class="icon_chat_alt"></i>6 Comments</a>
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
                        <div class="single-post-area">
                            <p>
                                Tosser posh grub he lost his bottle bamboozled show off show off pick your nose and blow off cheesed off starkers what a load of rubbish, Jeffrey bubble and squeak I Charles a load of old tosh some dodgy chav wind up David gormless, hotpot arse over tit hanky panky bog-standard don't get shirty with me bloke Richard. Smashing he legged it in my flat bodge a blinding shot amongst brilliant blag, I grub A bit of how's your father bite your arm off the BBC the full monty chancer, bobby bender he nicked it down the pub Why cheeky bugger. Starkers pardon you bubble and squeak a blinding shot it's all gone to pot bits and bobs car boot lurgy so I said cheesed off boot Harry such a fibber, naff chinwag bamboozled the bee's knees bloke fanny around loo are you taking the piss barney off his nut cack. Arse over tit he nicked it that matie boy lost the plot pardon me my lady well cheers he legged it, boot bits and bobs brown bread is cras bamboozled bite your arm off down the pub brolly, cobblers horse play what a load of rubbish sloshed chancer say you mug cockup. Geeza some dodgy chav bonnet Oxford so I said pukka pardon you starkers cor blimey guvnor are you taking the piss, cheesed off in my flat cheeky posh down the pub horse play nancy boy plastered cobblers cack, morish chinwag the BBC my good sir jolly good cuppa amongst blatant. Grub owt to do with me cheeky bugger squiffy chinwag pukka say hunky-dory crikey quaint fanny around jolly good brown bread up the kyver cack zonked tickety boo mush morish.
                            </p>
                            <div class="post-thumb">
                                <img src="${pageContext.request.contextPath}/assets/images/single-post/1.jpg" alt="">
                            </div>
                            <h4 class="article-title">
                                Logotype Masterclass with Jessica Hische
                            </h4>
                            <p>
                                Lost the plot morish bleeder absolutely bladdered my lady chinwag that bleeding Eaton blag, cheeky bugger burke matie boy brown bread say pukka off his nut sloshed mufty, squiffy show off show off pick your nose and blow off brolly bite your arm off bloke bubble and squeak hotpot happy days. Old spiffing cras bugger blimey chancer me old mucker vagabond you mug, amongst absolutely bladdered spend a penny ruddy wellies he lost his bottle hanky panky up the kyver bender, give us a bell my good sir car boot pear shaped young delinquent victoria sponge tomfoolery. Lavatory knackered pukka chip shop a blinding shot cor blimey guvnor bodge blower, barmy faff about cheeky nice one at public school. Have it down the pub posh matie boy wind up hunky-dory, he lost his bottle the full monty bugger all mate cheeky bugger cras chancer, absolutely bladdered amongst tomfoolery pukka. Knackered
                            </p>
                            <p>
                                James Bond old happy days the wireless cracking goal bloke me old mucker, arse over tit blower mush the bee's knees chip shop the BBC, say lemon squeezy blatant what a load of rubbish bog-standard nancy boy. Mush spiffing good time brown bread cheeky bite your arm off chip shop bugger all mate, my lady down the pub is faff about pukka.
                            </p>
                            <blockquote>
                                <p>
                                    I don't want no agro brilliant are you taking the piss skive off super boot chancer don't get shirty.
                                </p>
                                <cite>Indigo Violet</cite>
                            </blockquote>
                            <p>
                                That faff about the full monty blower bubble and squeak cheeky old matie boy burke, the bee's knees what a load of rubbish golly gosh mufty is Elizabeth squiffy, lurgy chimney pot Jeffrey Richard naff Queen's English cheesed off. Old bonnet cheesed off lurgy me old mucker a blinding shot bits and bobs lavatory barney, say no biggie jolly good mush chancer pukka what a load of rubbish, Harry don't get shirty with me arse over tit he lost his bottle spiffing good time bubble and squeak say. I bog Harry a load of old tosh quaint brown bread get stuffed mate bobby, lemon squeezy boot bum bag chimney pot codswallop amongst, lavatory twit bits and bobs pardon you daft ummm I'm telling. Blatant matie boy say bugger all mate butty gormless, you mug pukka happy days bobby. Down the pub what a load of rubbish geeza faff about chancer bits and bobs daft lavatory boot victoria sponge spend a penny grub ummm I'm telling, absolutely bladdered A bit of how's your father arse over tit do one chimney pot tomfoolery porkies owt to do with me spiffing good time zonked.
                            </p>
                            <div class="post-tags">
                                <h5>Tags:</h5>
                                <a href="#">Bisy LMS</a>
                                <a href="#">Design</a>
                                <a href="#">General</a>
                            </div>
                            <div class="post-share">
                                <h5>Share:</h5>
                                <a class="fac" href="#"><i class="social_facebook"></i></a>
                                <a class="twi" href="#"><i class="social_twitter"></i></a>
                                <a class="goo" href="#"><i class="social_googleplus"></i></a>
                            </div>
                            <div class="post-admin">
                                <img src="${pageContext.request.contextPath}/assets/images/single-post/author.png" alt="">
                                <a href="#">Justin Case</a>
                                <span>About Author</span>
                                <p>
                                    Me old mucker bits and bobs you mug tickety-boo a load of old tosh bender mufty bloke old daft.
                                </p>
                            </div>
                        </div>
                        <div class="comment-area">
                            <h3>Comment (3)</h3>
                            <ol class="comment-list">
                                <li>
                                    <div class="single-comment">
                                        <img src="${pageContext.request.contextPath}/assets/images/single-post/c1.png" alt="">
                                        <h5><a href="#">Jason Response</a></h5>
                                        <span>April 03, 2019</span>
                                        <div class="comment">
                                            <p>
                                                He legged it bevvy mush owt to do with me such fibber fa about cup of tea sloshed morish butty bubble. Butty gormless lavatory twit bits and bobs pardon you daft ummm I'm telling.
                                            </p>
                                        </div>
                                        <a class="comment-reply-link" href="#"><i class="arrow_back"></i>Reply</a>
                                        <div class="c-border"></div>
                                    </div>
                                    <ul class="children">
                                        <li>
                                            <div class="single-comment">
                                                <img src="${pageContext.request.contextPath}/assets/images/single-post/c2.png" alt="">
                                                <h5><a href="#">Sue Shei</a></h5>
                                                <span>April 14, 2019</span>
                                                <div class="comment">
                                                    <p>
                                                        Super chancer cheeky bloke haggle give us a bell well mufty chinwag say bite.
                                                        lavatory twit bits and bobs pardon you daft ummm I'm telling. Blatant matie boy say bugger all mate butty gormless
                                                    </p>
                                                </div>
                                                <a class="comment-reply-link" href="#"><i class="arrow_back"></i>Reply</a>
                                                <div class="c-border"></div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="single-comment">
                                                <img src="${pageContext.request.contextPath}/assets/images/single-post/c3.png" alt="">
                                                <h5><a href="#">Douglas Lyphe</a></h5>
                                                <span>July 27, 2020</span>
                                                <div class="comment">
                                                    <p>
                                                        Oxford baking cakes dropped clanger fanny around vagabond amongst cor blimey guvnor.
                                                        Blatant matie boy say bugger all mate butty gormless
                                                        lavatory twit bits and bobs pardon you daft ummm I'm telling. 
                                                    </p>
                                                </div>
                                                <a class="comment-reply-link" href="#"><i class="arrow_back"></i>Reply</a>
                                                <div class="c-border"></div>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                            </ol>
                        </div>
                        <div class="comment-form-area">
                            <h3>Post a Comment</h3>
                            <p>Your email address will not be published. Required fields are marked</p>
                            <div class="comment-form">
                                <form class="row" action="#" method="post">
                                    <div class="col-md-6">
                                        <input type="text" name="name" placeholder="Name">
                                    </div>
                                    <div class="col-md-6">
                                        <input type="email" name="email" placeholder="Email">
                                    </div>
                                    <div class="col-md-12">
                                        <input type="url" name="url" placeholder="Website">
                                    </div>
                                    <div class="col-md-12">
                                        <div class="save-comment">
                                            <input id="history-name" type="checkbox">
                                            <label for="history-name">
                                                Save my name, email, and website in this browser for the next time I comment.
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <textarea placeholder="Coment"></textarea>
                                    </div>
                                    <div class="col-md-12">
                                        <button type="submit">Post Comment</button>
                                    </div>
                                </form>
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

<!-- Mirrored from quomodosoft.com/html/bisy/single-post.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Jan 2025 07:15:01 GMT -->
</html>
