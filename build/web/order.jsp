<%-- 
    Document   : order
    Created on : 6 thg 7, 2024, 16:16:05
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                                <h1 class="page-banner-title text-uppercase">Order</h1>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-12">
                                <ul class="right-side">
                                    <li><a href="home">Home</a></li>
                                    <li>Order</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
            </section>

            

            <div class="top-scrolling">
                <a href="#main" class="scrollTo"><i class="fa fa-angle-up" aria-hidden="true"></i></a>
            </div>
            <br/>
            <br/>
            <br/>
            <div style="display: flex; justify-content: center">


                <div>
                    <h2 class="checkout-title mb-30">Here is your applist, Thank you for choosing us!</h2>
                    <c:forEach var="c" items="${sessionScope.cartItems}">
                        <c:set var="qty" value="${c.quantity - 1}" />
                        <c:if test="${c.price == 0}">
                            <c:set var="qty" value="0" />
                        </c:if>
                        <c:forEach begin="0" end="${qty}">



                            <div class="seller">

                                <div class="seller-box align-flax w-100">
                                    <div class="seller-img">
                                        <a href="product?id=${c.appID}" class="display-b">
                                            <img src="
                                                 <c:forEach var="a" items="${sessionScope.appList}">
                                                     <c:if test="${c.appID==a.appID}">
                                                         ${a.appImageURL}    
                                                     </c:if>
                                                 </c:forEach>
                                                 " alt="shoes" class="transition">
                                        </a>
                                    </div>
                                    <div class="seller-contain pl-15">
                                        <a href="product?id=${c.appID}" class="product-name text-uppercase">
                                            <c:forEach var="a" items="${sessionScope.appList}">
                                                <c:if test="${c.appID==a.appID}">
                                                    ${a.appName}
                                                </c:if>
                                            </c:forEach></a>
                                        <span class="product-pricce">$${c.price}</span>

                                    </div>
                                    <div>
                                        <c:forEach var="a" items="${sessionScope.appList}">
                                            <c:if test="${c.appID==a.appID}">
                                                <a style="color: blue" href="${a.downloadURL}"><b>Download</b></a>
                                                    </c:if>
                                                </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </c:forEach>
                </div>

            </div>
            
            <br/>
            <div style=" display: flex; justify-content: center">

                <video id="rickVideo" width="640" height="480" controls autoplay>
                    <source src="images/RickAstley.mp4" type="video/mp4">
                    Your browser does not support the video tag.
                </video>
                

            </div>


            


            <jsp:include page="footer.jsp" />
        </div>

        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="js/custom.js"></script>
        <script>
                    // JavaScript code to ensure the video plays automatically
                    window.onload = function () {
                        var video = document.getElementById('rickVideo');
                        video.play();
                    };
                </script>
    </body>

</html>

