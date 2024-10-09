<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>Apoge</title>

        <!-- Mobile Specific Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link type="image/x-icon" href="images/fav-icon.png" rel="icon">

        <!-- CSS -->
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/magnific-popup.css">
        <link rel="stylesheet" type="text/css" href="css/animate.css">
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
        <!-- comment 
        <div id="newslater-popup" class="mfp-hide white-popup-block open align-center">
            <div class="nl-popup-main">
                <div class="nl-popup-inner">
                    <div class="newsletter-inner">
                        <div class="row">
                            <div class="col-md-6"></div>
                            <div class="col-md-6">
                                <div class="mtb-30 text-center">
                                    <h2 class="main_title">Subscribe Emails</h2>
                                    <span class="sub-title mb-30">Sign up & get 10% off</span>
                                    <form>
                                        <input type="email" placeholder="Email Here..." required>
                                        <button class="btn-color big-width btn" title="Subscribe">Subscribe</button>
                                    </form>
                                    <div class="check-box mt-30">
                                        <span>
                                            <input type="checkbox" class="checkbox" id="different-address" name="Ship to a different address?">
                                            <label for="different-address">Don`t show this popup again</label>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        -->
        <div class="main" id="main">
            <!-- header -->
            <jsp:include page="header.jsp" />



            <section class="home-banner">
                <div class="container">
                    <div class="home-slider owl-carousel">
                        <c:forEach items="${requestScope.appList}" var="c">
                            <div class="banner-bg align-flax">
                                <div class="w-100">
                                    <div class="row">
                                        <div class="col-xl-6 col-lg-6 col-md-6 align-flax">
                                            <div class="banner-img"><img src="
                                                                         <c:forEach var="i" items="${requestScope.imgList}">
                                                                             <c:if test="${c.appID==i.appID}">

                                                                                 ${i.imageURL}" 
                                                                             </c:if>
                                                                         </c:forEach>


                                                                         alt="banner"></div>
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 align-flax">
                                            <div class="banner-heading w-100">
                                                <label class="banner-top">Get UP To <span>40%</span> Off</label>
                                                <h2 class="banner-title">${c.appName}</h2>
                                                <p class="banner-sub">${c.description}</p>
                                                <a href="product?id=${c.appID}" class="btn">Shop now</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        

                    </div>
                </div>
            </section>

            <section class="featured pt-100">
                <div class="container">
                    <div class="row mb-25">
                        <div class="col-xl-6 col-lg-6 col-md-6">
                            <div class="hading">
                                <h2 class="hading-title">FEATURED <span>PRODUCTS</span></h2>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6">
                            <ul id="tabs" class="product-isotop filters-product text-right text-uppercase nav nav-tabs" role="tablist">
                                <li role="presentation" class="transition" data-filter="*">
                                    <a href="#all" class="active" role="tab" data-toggle="tab">all</a>
                                </li>
                                <li role="presentation" class="transition" data-filter=".shoes">
                                    <a href="#shoes" role="tab" data-toggle="tab">FREE</a>
                                </li>
                                <li role="presentation" class="transition" data-filter=".women">
                                    <a href="#women" role="tab" data-toggle="tab">PAID</a>
                                </li>
                                <li role="presentation" class="transition" data-filter=".accessories">
                                    <a href="#accessories" role="tab" data-toggle="tab">TOP LIST</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="tab-content">
                        <div role="tabpanel" class="row tab-pane fade active show" id="all">


                            <c:forEach items="${requestScope.appList}" var="c">


                                <div class="featured-product mb-25">
                                    <div class="product-img transition mb-15">
                                        <a href="product?id=${c.appID}">
                                            <img src="${c.appImageURL}" alt="product" class="transition">
                                        </a>
                                        <!-- NEW or sale  
                                        <div class="sale-label">
                                            <span class="text-uppercase">sale</span>
                                        </div>
                                        
                                        <div class="new-label">
                                            <span class="text-uppercase">New</span>
                                        </div>
                                        -->
                                        <div class="product-details-btn text-uppercase text-center transition">
                                            <a href="product?id=${c.appID}" class="quick-popup mfp-iframe">Quick View</a>
                                        </div>
                                    </div>
                                    <div class="product-desc">
                                        <a href="product?id=${c.appID}" class="product-name text-uppercase">${c.appName}</a>
                                        <span class="product-pricce">$${c.price}</span>
                                    </div>
                                </div>
                                    
                            </c:forEach>
                            
                            

                        </div>




                        <div role="tabpanel" class="row tab-pane fade" id="shoes">


                            <c:forEach items="${requestScope.appList}" var="c">
                                <c:if test="${c.price<=0}">



                                    <div class="featured-product mb-25">
                                        <div class="product-img transition mb-15">
                                            <a href="product?id=${c.appID}">
                                                <img src="${c.appImageURL}" alt="product" class="transition">
                                            </a>
                                            <!-- NEW or sale  
                                            <div class="sale-label">
                                                <span class="text-uppercase">sale</span>
                                            </div>
                                            
                                            <div class="new-label">
                                                <span class="text-uppercase">New</span>
                                            </div>
                                            -->
                                            <div class="product-details-btn text-uppercase text-center transition">
                                                <a href="product?id=${c.appID}" class="quick-popup mfp-iframe">Quick View</a>
                                            </div>
                                        </div>
                                        <div class="product-desc">
                                            <a href="product?id=${c.appID}" class="product-name text-uppercase">${c.appName}</a>
                                            <span class="product-pricce">$${c.price}</span>
                                        </div>
                                    </div>
                                </c:if>
                            </c:forEach>




                        </div>


                        <div role="tabpanel" class="row tab-pane fade" id="women">

                            <c:forEach items="${requestScope.appList}" var="c">
                                <c:if test="${c.price>0}">



                                    <div class="featured-product mb-25">
                                        <div class="product-img transition mb-15">
                                            <a href="product?id=${c.appID}">
                                                <img src="${c.appImageURL}" alt="product" class="transition">
                                            </a>
                                            <!-- NEW or sale  
                                            <div class="sale-label">
                                                <span class="text-uppercase">sale</span>
                                            </div>
                                            
                                            <div class="new-label">
                                                <span class="text-uppercase">New</span>
                                            </div>
                                            -->
                                            <div class="product-details-btn text-uppercase text-center transition">
                                                <a href="product?id=${c.appID}" class="quick-popup mfp-iframe">Quick View</a>
                                            </div>
                                        </div>
                                        <div class="product-desc">
                                            <a href="product?id=${c.appID}" class="product-name text-uppercase">${c.appName}</a>
                                            <span class="product-pricce">$${c.price}</span>
                                        </div>
                                    </div>
                                </c:if>
                            </c:forEach>

                        </div>



                        <div role="tabpanel" class="row tab-pane fade" id="accessories">
                            <c:forEach items="${requestScope.topAppList}" var="c">




                                <div class="featured-product mb-25">
                                    <div class="product-img transition mb-15">
                                        <a href="product?id=${c.appID}">
                                            <img src="${c.appImageURL}" alt="product" class="transition">
                                        </a>
                                        <!-- NEW or sale  
                                        <div class="sale-label">
                                            <span class="text-uppercase">sale</span>
                                        </div>
                                        
                                        <div class="new-label">
                                            <span class="text-uppercase">New</span>
                                        </div>
                                        -->
                                        <div class="product-details-btn text-uppercase text-center transition">
                                            <a href="product?id=${c.appID}" class="quick-popup mfp-iframe">Quick View</a>
                                        </div>
                                    </div>
                                    <div class="product-desc">
                                        <a href="product?id=${c.appID}" class="product-name text-uppercase">${c.appName}</a>
                                        <span class="product-pricce">$${c.price}</span>
                                    </div>
                                </div>

                            </c:forEach>



                        </div>
                    </div>
                </div>
            </section>

            <section style="position: relative;
                     overflow: hidden; position: relative;
                     z-index: 1;
                     color: white;
                     text-align: center;
                     padding: 120px 0;" class="offer-banner pt-70">

                <div class="container">

                    <div>
                        <video style=" position: absolute;
                               top: 0;
                               left: 0;
                               width: 100%;
                               height: 100%;
                               object-fit: cover;
                               z-index: -1;" class="video-background" autoplay loop muted>
                            <source src="https://cdn.akamai.steamstatic.com/steamcommunity/public/images/items/2855140/44607aab956016c08fe4449861774a9804188fa7.webm" type="video/webm">
                            Your browser does not support the video tag.
                        </video>
                        <label style="" class="banner-top text-uppercase">PROMOTION SALE <span>OFF 50%</span></label>
                        <h1 style=" color: #f1615a" class="banner-title text-uppercase"><span style=" color: #faecdc">the</span> summer</h1>
                        <p class="banner-sub"></p>
                        <a href="shop" class="btn btn-light " style="" >Shop now</a>
                    </div>
                </div>
            </section>


            <section class="best-seller pt-100">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-6 col-lg-12 col-md-12">
                            <div class="row">
                                <div class="col-xl-6 col-lg-6 col-md-6">
                                    <div class="hading pb-20">
                                        <h2 class="hading-title">best <span>free</span></h2>
                                    </div>
                                    <c:forEach var="a" items="${requestScope.topAppListFree}">
                                        <c:if test="${a.price==0}">

                                            <div class="seller">
                                                <div class="seller-box align-flax w-100 pb-20">
                                                    <div class="seller-img">
                                                        <a href="product?id=${a.appID}" class="display-b">
                                                            <img src="${a.appImageURL}" alt="shoes" class="transition">
                                                        </a>
                                                    </div>
                                                    <div class="seller-contain pl-15">
                                                        <a href="product-detail.html" class="product-name text-uppercase">${a.appName}</a>
                                                        <span class="product-pricce">$${a.price}</span>
                                                    </div>
                                                </div>


                                            </div>
                                        </c:if>
                                    </c:forEach>


                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6">
                                    <div class="hading pb-20">
                                        <h2 class="hading-title">top <span>seller</span></h2>
                                    </div>
                                    <div class="seller">
                                        <c:forEach var="a" items="${requestScope.topAppList}">
                                            <c:if test="${a.price>0}">

                                                <div class="seller">
                                                    <div class="seller-box align-flax w-100 pb-20">
                                                        <div class="seller-img">
                                                            <a href="product?id=${a.appID}" class="display-b">
                                                                <img src="${a.appImageURL}" alt="shoes" class="transition">
                                                            </a>
                                                        </div>
                                                        <div class="seller-contain pl-15">
                                                            <a href="product-detail.html" class="product-name text-uppercase">${a.appName}</a>
                                                            <span class="product-pricce">$${a.price}</span>
                                                        </div>
                                                    </div>


                                                </div>
                                            </c:if>
                                        </c:forEach>

                                    </div>
                                </div>
                            </div>
                        </div>
                                    <!-- comment 
                                    
                                    
                        <div class="col-xl-6 col-lg-12 col-md-12">
                            <div class="offer-week">
                                <div class="row align-flax">
                                    <div class="col-xl-5 col-lg-5 col-md-5">
                                        <div class="week-img transition">
                                            <a href="product-detail.html" class="display-b">
                                                <img src="images/week-sale.jpg" class="w-100" alt="shoes">
                                            </a>
                                        </div>
                                    </div>
                                    
                                    <div class="col-xl-7 col-lg-7 col-md-7">
                                        <div class="week-contain">
                                            <h2 class="week-head text-uppercase pb-15">offer of the week</h2>
                                            <p class="week-sub">Welcome to Apoge app Store 20% off</p>
                                            <div class="star-rating pb-10">
                                                <input id="star-5" type="radio" name="rating" value="star-5" />
                                                <label for="star-5" title="5 stars" class="transition">
                                                    <i class="active fa fa-star" aria-hidden="true"></i>
                                                </label>
                                                <input id="star-4" type="radio" name="rating" value="star-4" checked/>
                                                <label for="star-4" title="4 stars" class="transition">
                                                    <i class="active fa fa-star" aria-hidden="true"></i>
                                                </label>
                                                <input id="star-3" type="radio" name="rating" value="star-3" />
                                                <label for="star-3" title="3 stars" class="transition">
                                                    <i class="active fa fa-star" aria-hidden="true"></i>
                                                </label>
                                                <input id="star-2" type="radio" name="rating" value="star-2" />
                                                <label for="star-2" title="2 stars" class="transition">
                                                    <i class="active fa fa-star" aria-hidden="true"></i>
                                                </label>
                                                <input id="star-1" type="radio" name="rating" value="star-1" />
                                                <label for="star-1" title="1 star" class="transition">
                                                    <i class="active fa fa-star" aria-hidden="true"></i>
                                                </label>
                                            </div>
                                            <div class="price-d pb-25">
                                                <label class="price-r pr-30">$478.00</label>
                                                <label class="price-o">$378.00</label>
                                            </div>
                                            <ul class="countdown text-uppercase">
                                                <li class="text-center">
                                                    <span id="day" class="counter-timer display-b text-center">08</span>
                                                    <label class="day-name">days</label>
                                                </li>
                                                <li class="text-center">
                                                    <span id="hour" class="counter-timer display-b text-center">16</span>
                                                    <label class="day-name">hour</label>
                                                </li>
                                                <li class="text-center">
                                                    <span id="minute" class="counter-timer display-b text-center">36</span>
                                                    <label class="day-name">min</label>
                                                </li>
                                                <li class="text-center">
                                                    <span id="second" class="counter-timer display-b text-center">45</span>
                                                    <label class="day-name">sec</label>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                                    -->
                    </div>
                </div>
            </section>

            <section class="team pt-100">
                <div class="container">
                        <div class="hading pb-20">
                            <h2 class="hading-title">latest<span>app</span></h2>
                        </div>
                    <div class="team-inner owl-carousel">
                        
                        <c:forEach var="a" items="${requestScope.topLatestApp}">
                            
                        <div class="team-slide text-center">
                            <div class="team-img position-r">
                                <a href="product?id=${a.appID}"><img src="${a.appImageURL}" alt="team"></a>
                                <span class="quote-c"><i class="fa fa-quote-left" aria-hidden="true"></i></span>
                            </div>
                            <div class="team-desc">
                                <p class="member-detail">${a.releaseDate}</p>
                                <h3 class="member-name text-uppercase">${a.appName}</h3>
                            </div>
                        </div>
                        </c:forEach>
                    </div>
                </div>
            </section>

            <div class="brand pt-100">
                <div class="container">
                    <div class="brand-salider owl-carousel">
                        <div class="brand-box text-center">
                            <a href="#"><img src="images/brand-1.jpg" alt="brand" class="transition"></a>
                        </div>
                        <div class="brand-box text-center">
                            <a href="#"><img src="images/brand-2.jpg" alt="brand" class="transition"></a>
                        </div>
                        <div class="brand-box text-center">
                            <a href="#"><img src="images/brand-3.jpg" alt="brand" class="transition"></a>
                        </div>
                        <div class="brand-box text-center">
                            <a href="#"><img src="images/brand-4.jpg" alt="brand" class="transition"></a>
                        </div>
                        <div class="brand-box text-center">
                            <a href="#"><img src="images/brand-5.jpg" alt="brand" class="transition"></a>
                        </div>
                        <div class="brand-box text-center">
                            <a href="#"><img src="images/brand-6.jpg" alt="brand" class="transition"></a>
                        </div>
                        <div class="brand-box text-center">
                            <a href="#"><img src="images/brand-1.jpg" alt="brand" class="transition"></a>
                        </div>
                        <div class="brand-box text-center">
                            <a href="#"><img src="images/brand-2.jpg" alt="brand" class="transition"></a>
                        </div>
                        <div class="brand-box text-center">
                            <a href="#"><img src="images/brand-4.jpg" alt="brand" class="transition"></a>
                        </div>
                    </div>
                </div>
            </div>

            <jsp:include page="footer.jsp" />


            <script src="js/jquery-3.4.1.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/jquery.magnific-popup.min.js"></script>
            <script src="js/owl.carousel.min.js"></script>
            <script src="js/custom.js"></script>
<script>
    /* -------- Countdown Timer ------- */
    function startCountdown() {
        if ($(".countdown").length > 0) {
            // Thay ??i ngày c? th? b?n mu?n tính toán ??n
            var your_date = '2024-12-31 23:59:59';
            const second = 1000,
                minute = second * 60,
                hour = minute * 60,
                day = hour * 24;

            var countDownDate = new Date(your_date).getTime();

            var x = setInterval(function() {    
                var now = new Date().getTime(),
                    distance = countDownDate - now;

                if (distance < 0) {
                    clearInterval(x);
                    // Th?c hi?n hành ??ng khi ??m ng??c k?t thúc (n?u c?n)
                    document.getElementById('day').innerText = '00';
                    document.getElementById('hour').innerText = '00';
                    document.getElementById('minute').innerText = '00';
                    document.getElementById('second').innerText = '00';
                } else {
                    document.getElementById('day').innerText = Math.floor(distance / (day));
                    document.getElementById('hour').innerText = Math.floor((distance % (day)) / (hour));
                    document.getElementById('minute').innerText = Math.floor((distance % (hour)) / (minute));
                    document.getElementById('second').innerText = Math.floor((distance % (minute)) / second);
                }
            }, second);
        }
    }
    
    // G?i hàm startCountdown khi trang ???c t?i
    window.onload = function() {
        startCountdown();
    };
</script>


            <!-- PopUP Adv 
            <script>
                /* ------------ Newslater-popup JS Start ------------- */
                $(window).on('load', function () {
                    setTimeout(function () {
                        mfp = $.magnificPopup.instance;
                        if (!mfp.isOpen) {
                            jQuery.magnificPopup.open({
                                items: {src: '#newslater-popup'}, type: 'inline'
                            }, 0);
                        }
                    }, 10000)
                });
                /* ------------ Newslater-popup JS End ------------- */
            </script>
            -->
    </body>

</html>
