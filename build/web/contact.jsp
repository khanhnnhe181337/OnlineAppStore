<%@ page contentType="text/html; charset=UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>Xpoge</title>

        <!-- Mobile Specific Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link type="image/x-icon" href="images/fav-icon.png" rel="icon">

        <!-- CSS -->
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/shoes.css">
        <link rel="stylesheet" type="text/css" href="css/responsive.css">
    </head>
    <body>

        <!-- Start preloader -->
        <div id="preloader"></div>
        <!-- End preloader -->

        <!-- Search Screen start -->
        <div class="sidebar-search-wrap">
            <div class="sidebar-table-container">
                <div class="sidebar-align-container">
                    <div class="search-closer right-side"></div>
                    <div class="search-container">
                        <form method="get" id="search-form">
                            <input type="text" id="s" class="search-input" name="s" placeholder="Search text">
                        </form>
                        <span>Search and Press Enter</span>
                    </div>
                </div>
            </div>
        </div>
        <!-- Search Screen end -->

        <div class="main" id="main">
            <jsp:include page="header.jsp" />

            <section class="page-banner">
                <div class="container">
                    <div class="page-banner-in">
                        <div class="row">
                            <div class="col-xl-6 col-lg-6 col-12">
                                <h1 class="page-banner-title text-uppercase">Contact Us</h1>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-12">
                                <ul class="right-side">
                                    <li><a href="home">Home</a></li>
                                    <li>Contact Us</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <div class="contact-map pt-100">
                <div class="container">
                    <div class="add-map">
                        <iframe src="https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=en&amp;q=Tr%C6%B0%E1%BB%9Dng%20%C4%90%E1%BA%A1i%20h%E1%BB%8Dc%20FPT%20H%C3%A0%20N%E1%BB%99i+(My%20Business%20Name)&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed" style="border:0; width: 100%;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                    </div>
                </div>
            </div>

            <section class="contact-form pt-100">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="contact-box">
                                <ul>
                                    <li>
                                        <div class="contact-thumb">
                                            <img src="images/location.png" alt="location">
                                        </div>
                                        <div class="contact-box-detail">
                                            <h2 class="contact-title text-uppercase">ADDRESS</h2>
                                            <p>Km29 Đại lộ Thăng Long, H. Thạch Thất, TP. Hà Nội.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="contact-thumb">
                                            <img src="images/mail.png" alt="mail">
                                        </div>
                                        <div class="contact-box-detail">
                                            <h2 class="contact-title text-uppercase">Email</h2>
                                            <a href="mailto:expoge@exmaple.com">khanhnnhe@gmail.fpt.edu</a>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="contact-thumb">
                                            <img src="images/admin.png" alt="user">
                                        </div>
                                        <div class="contact-box-detail">
                                            <h2 class="contact-title text-uppercase">Phone</h2>
                                            <a href="tel:+911234567890">+84 999999999</a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="contact-form-detail">
                                <h2 class="contact-head text-uppercase">LEAVE A MESSAGE</h2>
                                <form action="mailto:khanhnnhe@fptu.edu.vn" method="post">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="text" name="name" class="form-control" placeholder="Name*" required>
                                            </div>
                                            <div class="form-group">
                                                <input type="email" name="email" class="form-control" placeholder="Your Email*" required>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="phone" class="form-control" placeholder="Phone*" required>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <textarea name="message" class="form-control" placeholder="Message"></textarea>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <button type="submit" class="btn btn-color">Submit Form</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <div class="top-scrolling">
                <a href="#main" class="scrollTo"><i class="fa fa-angle-up" aria-hidden="true"></i></a>
            </div>

            <jsp:include page="footer.jsp" />
        </div>

        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="js/custom.js"></script>
    </body>

</html>
