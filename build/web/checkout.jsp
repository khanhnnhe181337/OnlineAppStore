<%-- 
    Document   : checkout
    Created on : 6 thg 7, 2024, 14:59:34
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
                                <h1 class="page-banner-title text-uppercase">Checkout</h1>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-12">
                                <ul class="right-side">
                                    <li><a href="home">Home</a></li>
                                    <li><a href="cardAdd">Cart</a></li>
                                    <li>Checkout</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="checkout pt-100">
                <div class="container">
                    <form action="order">
                        <div class="row">
                            <div class="col-lg-2 col-12"></div>
                                <div class="col-lg-4 col-12">
                                    <h2 class="checkout-title mb-30">Your order</h2>
                                    
                                <c:forEach var="c" items="${sessionScope.cartItems}">
                                    
                                        
                                        
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
                                                <div class="checkout-qty">
                                                    <label>Qty: </label>
                                                    <span class="info-deta">${c.quantity}</span> 
                                                </div>
                                            </div>
                                        </div>



                                    </div>
                                    </c:forEach>
                            </div>
                            <div class="col-lg-4 col-10">
                                <div class="your-order">
                                    
                                    
                                    <div class="subtotal-main">
                                        <div class="subtotal-head">
                                            <div class="row">
                                                <div class="col-6">
                                                    <label>sub total</label>
                                                </div>
                                                <div class="col-6 text-right">
                                                    <span>$${sessionScope.totalPrice}</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="shiping">
                                            <span>Shiping</span>
                                        </div>
                                        <div class="shiping-type">
                                            <div class="row">
                                                <div class="col-6">
                                                    <div class="radio-btn">
                                                        <input type="radio" id="standard" name="gender" value="standard">
                                                        <label class="custom-radio" for="standard">Standard:</label>
                                                    </div>
                                                </div>
                                                <div class="col-6 text-right">
                                                    <span>$${sessionScope.totalPrice}</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="shiping-type">
                                            <div class="row">
                                                <div class="col-6">
                                                    <div class="radio-btn">
                                                        <input type="radio" id="express" name="gender" value="express">
                                                        <label class="custom-radio" for="express">Express:</label>
                                                    </div>
                                                </div>
                                                <div class="col-6 text-right">
                                                    <span>$${sessionScope.totalPrice}</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="total-all">
                                            <div class="total-border">
                                                <div class="row">
                                                    <div class="col-6">
                                                        <label>Total</label>
                                                    </div>
                                                    <div class="col-6 text-right">
                                                        <span>$${sessionScope.totalPrice}</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <button class="btn btn-color">Place order</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </section>

            <jsp:include page="footer.jsp" />
        </div>

        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="js/custom.js"></script>
    </body>

</html>

