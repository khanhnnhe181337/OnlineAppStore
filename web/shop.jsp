<%-- 
    Document   : shop
    Created on : 6 thg 7, 2024, 11:07:16
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
        <link rel="stylesheet" type="text/css" href="css/magnific-popup.css">
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
                                <h1 class="page-banner-title text-uppercase">Shop</h1>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-12">
                                <ul class="right-side">
                                    <li><a href="home">Home</a></li>
                                    <li>Shop</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="product-list">
                <div class="container">
                    <div class="row pt-100">
                        <div class="col-xl-3 col-lg-4 col-12">
                            <div class="sidebar">
                                <div class="sidebar-default mb-30">
                                    <div class="category-content">
                                        <h2 class="cat-title text-uppercase">classify</h2>
                                        <ul class="category category-drop-down">
                                            <li>
                                                <span class="opener plus"></span>
                                                <a href="javascript:void(0)">Category</a>
                                                <ul class="category-sub">
                                                    <c:forEach var="c" items="${requestScope.cateList}">

                                                        <li><a href="sortCate?id=${c.categoryID}">${c.categoryName}</a></li>
                                                        </c:forEach>

                                                </ul>
                                            </li>
                                            <li>
                                                <span class="opener plus"></span>
                                                <a href="javascript:void(0)">Developer</a>
                                                <ul class="category-sub">
                                                    <c:forEach var="d" items="${requestScope.devList}">

                                                        <li><a href="sortDev?id=${d.developerID}">${d.name}</a></li>
                                                        </c:forEach>

                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="sidebar-default mb-30">
                                    <div class="category-content">
                                        <h2 class="cat-title text-uppercase">Filter By</h2>
                                        <a class="btn small btn-filter" href="shop">
                                            <i class="fa fa-close"></i><span>Clear all</span>
                                        </a>
                                    </div>
                                    <div class="category-content filter-by">
                                        <h2 class="cat-title text-uppercase">Storage</h2>
                                        <ul class="category">
                                            <li>
                                                <div class="check-box">
                                                    <input type="checkbox" class="checkbox" id="Tops" name="Tops">
                                                    <label for="Tops">SSD</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="check-box">
                                                    <input type="checkbox" class="checkbox" id="Dresses" name="Dresses">
                                                    <label for="Dresses">HDD</label>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="category-content filter-by">
                                            <form>
                                        <h2 class="cat-title text-uppercase">RAM</h2>
                                        <ul class="row">



                                                

                                            <li class="check-box col-3">
                                                <div >
                                                    <input type="checkbox" class="checkbox" id="s1" name="s" value="1" onclick="this.form.submit()">
                                                    <label for="s1">1GB</label>
                                                </div>
                                            </li>
                                            <li class="check-box col-3">
                                                <div >
                                                    <input type="checkbox" class="checkbox" id="s2" name="s" value="2" onclick="this.form.submit()">
                                                    <label for="s2">2GB</label>
                                                </div>
                                            </li>


                                        </ul>
                                            </form>
                                    </div>
                                    <div class="category-content filter-by">
                                        <h2 class="cat-title text-uppercase">CPU</h2>
                                        <ul class="row">
                                            <li class="check-box col-4">
                                                <div class="check-box">
                                                    <input type="checkbox" class="checkbox" id="i3" name="Beige">
                                                    <label for="i3" >Intel i3</label>
                                                </div>
                                            </li>
                                            <li class="check-box col-4">
                                                <div class="check-box">
                                                    <input type="checkbox" class="checkbox" id="i5" name="Beige">
                                                    <label for="i5" >Intel i5</label>
                                                </div>
                                            </li>
                                            <li class="check-box col-4">
                                                <div class="check-box">
                                                    <input type="checkbox" class="checkbox" id="i7" name="Beige">
                                                    <label for="i7" >Intel i7</label>
                                                </div>
                                            </li>
                                            <li class="check-box col-4">
                                                <div class="check-box">
                                                    <input type="checkbox" class="checkbox" id="i9" name="Beige">
                                                    <label for="i9" >Intel i9</label>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="category-content filter-by">
                                        <h2 class="cat-title text-uppercase">GraphicsCard</h2>
                                        <ul class="category">
                                            <li>
                                                <div class="check-box">
                                                    <input type="checkbox" class="checkbox" id="Casual" name="Casual">
                                                    <label for="Casual">Casual (9)</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="check-box">
                                                    <input type="checkbox" class="checkbox" id="Dressy" name="Dressy">
                                                    <label for="Dressy">Dressy (1)</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="check-box">
                                                    <input type="checkbox" class="checkbox" id="Girly" name="Girly">
                                                    <label for="Girly">Girly (3)</label>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="category-content filter-by">
                                        <h2 class="cat-title text-uppercase">OS</h2>
                                        <ul class="row">
                                            <li class="col-5">
                                                <div class="check-box">
                                                    <input type="checkbox" class="checkbox" id="Windows" name="Cotton">
                                                    <label for="Windows">Windows</label>
                                                </div>
                                            </li>
                                            <li class="col-5">
                                                <div class="check-box">
                                                    <input type="checkbox" class="checkbox" id="MacOS" name="Cotton">
                                                    <label for="MacOS">MacOS</label>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="category-content filter-by">
                                        <h2 class="cat-title text-uppercase">Price</h2>
                                        <ul class="category">
                                            <li>
                                                <div class="check-box">
                                                    <input type="checkbox" class="checkbox" id="price_1" name="Cotton">
                                                    <label for="price_1">$68.00 - $72.00 (2)</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="check-box">
                                                    <input type="checkbox" class="checkbox" id="price_2" name="Cotton">
                                                    <label for="price_2">$86.00 - $89.00 (1)</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="check-box">
                                                    <input type="checkbox" class="checkbox" id="price_3" name="Cotton">
                                                    <label for="price_3">$99.00 - $103.00 (3)</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="check-box">
                                                    <input type="checkbox" class="checkbox" id="price_4" name="Cotton">
                                                    <label for="price_4">$104.00 - $108.00 (2)</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="check-box">
                                                    <input type="checkbox" class="checkbox" id="price_5" name="Cotton">
                                                    <label for="price_5">$109.00 - $113.00 (1)</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="check-box">
                                                    <input type="checkbox" class="checkbox" id="price_6" name="Cotton">
                                                    <label for="price_6">$126.00 - $135.00 (2)</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="check-box">
                                                    <input type="checkbox" class="checkbox" id="price_7" name="Cotton">
                                                    <label for="price_7">$209.00 - $217.00 (3)</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="check-box">
                                                    <input type="checkbox" class="checkbox" id="price_8" name="Cotton">
                                                    <label for="price_8">$309.00 - $321.00 (1)</label>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="sidebar-default">
                                    <div class="category-content">
                                        <h2 class="cat-title latest-prod text-uppercase">Latest products</h2>
                                        <div class="seller">
                                            <c:forEach var="i" items="${requestScope.topLatestApp}">

                                                <div class="seller-box align-flax w-100 pb-10">
                                                    <div class="seller-img">
                                                        <a href="product?id=${i.appID}" class="display-b">
                                                            <img src="${i.appImageURL}" alt="shoes" class="transition">
                                                        </a>
                                                    </div>
                                                    <div class="seller-contain pl-15">
                                                        <a href="product?id=${i.appID}" class="product-name text-uppercase">${i.appName}</a>
                                                        <span class="product-pricce">$${i.price}</span>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-9 col-lg-8 col-12">
                            <div class="shorting mb-30">
                                <div class="row align-flax">
                                    <div class="col-xl-6 col-lg-5 col-md-6 mb-r-15">
                                        <div class="view">
                                            <div class="list-types grid active"> 
                                                <a href="shop.html">
                                                    <div class="grid-icon list-types-icon">
                                                        <i class="fa fa-th-large transition" aria-hidden="true"></i>
                                                    </div>
                                                </a> 
                                            </div>
                                            <div class="list-types list"> 
                                                <a href="shop-list.html">
                                                    <div class="list-icon list-types-icon">
                                                        <i class="fa fa-bars transition" aria-hidden="true"></i>
                                                    </div>
                                                </a> 
                                            </div>
                                        </div>
                                        <div class="short-by"> <span>Product Compare (0)</span>
                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-lg-7 col-md-6 text-right text-left-md">
                                        <div class="show-item"> 
                                            <span class="ml-0">Sort By:</span>
                                            <div class="select-item">
                                                <select class="m-w-130" name="">
                                                    <option value="" selected="selected">Default sorting</option>
                                                    <option value="">Sort by popularity</option>
                                                    <option value="">Sort by average rating</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="show-item float-right-md"> 
                                            <span>Age</span>
                                            <div class="select-item">
                                                <select>
                                                    <option value="" selected="selected">15</option>
                                                    <option value="">12</option>
                                                    <option value="">6</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="featured">
                                <div class="row">


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
                                                    <a href="product-quick-view.html" class="quick-popup mfp-iframe">Quick View</a>
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
                            <div class="shorting pagination-1 mt-20">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                        <div class="pagination-bar">
                                            <ul>
                                                <li class="active"><a href="#">1</a></li>
                                                <li><a href="#">2</a></li>
                                                <li><a href="#">3</a></li>
                                                <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="show-item right-side float-none-md"> 
                                            <span class="float-none-md d-block">Showing 1 to 15 of 15 (1 Pages)</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <jsp:include page="footer.jsp" />
        </div>

        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/custom.js"></script>
    </body>

</html>

