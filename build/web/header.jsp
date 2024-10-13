<%-- 
    Document   : header
    Created on : 3 thg 7, 2024, 22:47:51
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>   
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
        <link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/magnific-popup.css">
        <link rel="stylesheet" type="text/css" href="css/animate.css">
        <link rel="stylesheet" type="text/css" href="css/shoes.css">
        <link rel="stylesheet" type="text/css" href="css/responsive.css">
    </head>
    <body>
        <header class="header transition">
            <div class="container position-r">
                <div class="row">
                    <div class="col-lg-2 col-md-4 col-6 align-flax">
                        <div class="navbar-header">
                            <a class="navbar-brand" href="home">
                                <img alt="log" src="images/logo2.png" class="transition">
                            </a> 
                        </div>
                    </div>
                    <div class="col-lg-10 col-md-8 col-6 position-i">
                        <div class="menu-left transition">
                            <div class="menu" >
                                <ul>
                                    <li>
                                        <a href="home">Home</a>
                                    </li>
                                    <li class="dropdown">
                                        <span class="opener plus"></span>
                                        <a href="#">Pages</a>
                                        <div class="megamenu">
                                            <div class="megamenu-inner">
                                                <ul>
                                                    <li><a href="contact.jsp">About Us</a></li>
                                                    <li><a href="shop">Shop List</a></li>
                                                    
                                                    <li><a href="#">Yourlist</a></li>
                                                    
                                                </ul>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="dropdown">
                                        <span class="opener plus"></span>
                                        <a href="shop">Shop</a>
                                        <div class="megamenu full">
                                            <div class="megamenu-inner">
                                                <div class="row">
                                                    <div class="col-xl-3 col-lg-3 col-md-3 display-nr">
                                                        <div class="shop-img-in">
                                                            <div class="row">
                                                                <div class="col-xl-12 col-lg-12 col-md-12 pb-10">
                                                                    <a href="shop" class="img-drop-bottom">
                                                                        <img src="sad" class="transition" alt="img">
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-3 col-lg-3 col-md-12">
                                                        <a href="shop" class="megamenu-title">Categories</a>
                                                        <ul>
                                                            <!-- Tính toán kích thước danh sách và nửa đầu danh sách -->
                                                            <c:set var="listSize" value="${fn:length(sessionScope.cate)}" />
                                                            <c:set var="halfSize" value="${listSize / 2}" />

                                                            <!-- In nửa đầu danh sách -->
                                                            <c:forEach var="c" items="${sessionScope.cate}" varStatus="status">
                                                                <c:if test="${status.index < halfSize}">
                                                                    <li><a href="sortCate?id=${c.categoryID}">${c.categoryName}</a></li>
                                                                    </c:if>
                                                                </c:forEach>

                                                        </ul>
                                                    </div>
                                                    <div class="col-xl-3 col-lg-3 col-md-12">
                                                        <a href="shop.html" class="megamenu-title"></a>
                                                        <ul>
                                                            <!-- Tính toán kích thước danh sách và nửa sau danh sách -->

                                                            <c:set var="listSize" value="${fn:length(sessionScope.cate)}" />
                                                            <c:set var="halfSize" value="${listSize / 2}" />

                                                            <ul>
                                                                <c:forEach var="c" items="${sessionScope.cate}" varStatus="status">
                                                                    <c:if test="${status.index >= halfSize}">
                                                                        <li><a href="sortCate?id=${c.categoryID}">${c.categoryName}</a></li>
                                                                        </c:if>
                                                                    </c:forEach>
                                                            </ul>

                                                        </ul>
                                                    </div>
                                                    <div class="col-xl-3 col-lg-3 col-md-12">
                                                        <a href="shop" class="megamenu-title">Developer</a>
                                                        <ul>
                                                            <c:forEach var="d" items="${sessionScope.dev}">
                                                                
                                                            <li><a href="sortDev?id=${d.developerID}">${d.name}</a></li>
                                                            </c:forEach>

                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="contact.jsp">Contact</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="search-right">
                            <div class="menu-toggle"><span></span></div>
                            <div class="search-menu">
                                <form action="sortByName">
                                    
                                <input type="text" name="name" class="search-input" placeholder="Search text">
                                <input type="submit" name="submit" class="search-btn">
                                <div class="search-button-i transition">
                                    <img src="images/search.png" class="position-r transition" alt="search">
                                </div>
                                </form>
                            </div>
                            <ul class="login-cart">

                                <c:if test="${sessionScope.account==null}">
                                    <li>
                                        <div class="login-head">
                                            <a href="login"><i class="fa fa-user-o" aria-hidden="true"></i></a>
                                        </div>
                                    </li>

                                </c:if>
                                <c:if test="${sessionScope.account!=null}">
                                    <li>
                                        <div class="cart-menu">
                                            <div class="cart-icon position-r">
                                                <div class="login-head">
                                                    <a href="#"><i class="fa fa-user-o" aria-hidden="true"></i></a>
                                                </div>
                                            </div>
                                            <div class="cart-dropdown header-link-dropdown">
                                                <h4>Hello ${sessionScope.account.userName} !</h4>
                                                <div class="mt-20"> 
                                                    <a href="password" class="btn">Change Pass</a> 
                                                    <a href="logout" class="btn btn-color right-side">Sign out</a> 
                                                </div>
                                            </div>
                                        </div>
                                    </li>

                                </c:if>
                                <li>
                                    <div class="cart-menu">

                                        <div class="cart-icon position-r">
                                            <img src="images/car-icon-w.png" class="position-r transition" alt="cart">
                                        </div>

                                        <div class="cart-dropdown header-link-dropdown">
                                            <ul class="cart-list link-dropdown-list">

                                                <c:choose>
                                                    <c:when test="${not empty cartItems}">
                                                        <c:forEach var="item" items="${sessionScope.cartItems}">
                                                            <li>

                                                                <a href="#" class="close-cart"><i class="fa fa-times-circle"></i></a>




                                                                <figure> 
                                                                    <a href="product-detail.html" class="pull-left"> 
                                                                        <img alt="product" src="
                                                                             <c:forEach var="a" items="${sessionScope.appList}">
                                                                                 <c:if test="${a.appID==item.appID}">
                                                                                     ${a.appImageURL}
                                                                                 </c:if>
                                                                             </c:forEach>">
                                                                    </a>
                                                                    <figcaption> 
                                                                        <span>
                                                                            <a href="product-detail.html">
                                                                                <c:forEach var="a" items="${sessionScope.appList}">
                                                                                    <c:if test="${a.appID==item.appID}">
                                                                                        ${a.appName}
                                                                                    </c:if>
                                                                                </c:forEach>




                                                                            </a>
                                                                        </span>
                                                                        <p class="cart-price">$${item.price}</p>
                                                                        <div class="product-qty">
                                                                            <label>Qty:</label>
                                                                            <div class="custom-qty">
                                                                                <input type="text" name="qty" maxlength="8" value="${item.quantity}" title="Qty" class="input-text qty" disabled>
                                                                            </div>
                                                                        </div>
                                                                    </figcaption>
                                                                </figure>
                                                            </c:forEach>

                                                        </li>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <p>No items in the cart.</p>
                                                    </c:otherwise>
                                                </c:choose>

                                            </ul>
                                            <p class="cart-sub-totle">
                                                <span class="pull-left">Cart Subtotal</span> 
                                                <span class="pull-right"><strong class="price-box">$${sessionScope.totalPrice}</strong></span> 
                                            </p>
                                            <div class="clearfix"></div>
                                            <div class="mt-20">

                                                <c:choose>
                                                    <c:when test="${not empty cartItems}">
                                                        
                                                <a href="cardAdd" class="btn">Cart</a>
                                                <a href="checkout" class="btn btn-color right-side">Checkout</a> 
                                                    </c:when>
                                                <c:otherwise>
                                                        
                                                    </c:otherwise>
                                                </c:choose>





                                            </div>
                                        </div>

                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <!-- Debug 
        <h1>URL hiện tại</h1>
        <p id="currentUrl"></p>
        <p>Servlet Path: ${servletPath}</p>
        <a href="test?path=${servletPath}">Alo</a>
        -->
    </body>
    <script type="text/javascript">
        document.getElementById("currentUrl").innerText = window.location.pathname;
    </script>
</html>
