<%-- 
    Document   : produc-detail
    Created on : 4 thg 7, 2024, 09:04:50
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
        <link rel="stylesheet" type="text/css" href="css/glass-case.css">
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
            <jsp:include page="header.jsp"/>
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
                                    <li><a href="shop">Shop</a></li>
                                    <li>Shop Detail</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="product-detail-main pt-100">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5 col-md-6 col-12">
                            <div class="align-center mb-md-30">
                                <ul id="glasscase" class="gc-start">
                                    <c:forEach items="${requestScope.imgList}" var="c">
                                        <li><img style="width: 756px; height: 756px" src="${c.imageURL}" alt="product" /></li>
                                        </c:forEach>
                                    <li><img src="images/12.jpg" alt="product" /></li>
                                    <li><img src="images/13.jpg" alt="product" /></li>
                                    <li><img src="images/14.jpg" alt="product" /></li>
                                    <li><img src="images/15.jpg" alt="product" /></li>
                                    <li><img src="images/16.jpg" alt="product" /></li>
                                    <li><img src="images/17.jpg" alt="product" /></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-6 col-12">
                            <c:set var="a" value="${requestScope.appInfo}"/>
                            <div class="product-detail-in">
                                <h2 class="product-item-name text-uppercase">${a.appName}</h2>
                                <div class="price-box"> 
                                    <span class="price">$${a.price}</span> 
                                    <del class="price old-price">$120.00</del>
                                    <div class="rating-summary-block">
                                        <div class="star-rating">
                                            <input id="star-5" type="radio" name="rating" value="star-5" />
                                            <label for="star-5" title="5 stars">
                                                <i class="active fa fa-star" aria-hidden="true"></i>
                                            </label>
                                            <input id="star-4" type="radio" name="rating" value="star-4" />
                                            <label for="star-4" title="4 stars">
                                                <i class="active fa fa-star" aria-hidden="true"></i>
                                            </label>
                                            <input id="star-3" type="radio" name="rating" value="star-3" />
                                            <label for="star-3" title="3 stars">
                                                <i class="active fa fa-star" aria-hidden="true"></i>
                                            </label>
                                            <input id="star-2" type="radio" name="rating" value="star-2" />
                                            <label for="star-2" title="2 stars">
                                                <i class="active fa fa-star" aria-hidden="true"></i>
                                            </label>
                                            <input id="star-1" type="radio" name="rating" value="star-1" />
                                            <label for="star-1" title="1 star">
                                                <i class="active fa fa-star" aria-hidden="true"></i>
                                            </label>
                                        </div>
                                        <a href="#product-review" class="scrollTo"><span>1 Review (s)</span></a>
                                    </div>
                                    <div class="product-des">
                                        <p>${a.description}</p>
                                    </div>
                                    <div class="row ">
                                        <ul class="col-md-5" style="margin: 10px 0px; margin-left: 30px">
                                            <li>
                                                <b>🏷️ ️Category: 
                                                    <c:forEach items="${requestScope.cateList}" var="e">
                                                        <c:if test="${a.categoryID==e.categoryID}">
                                                            ${e.categoryName}
                                                        </c:if>
                                                    </c:forEach>
                                                </b>
                                            </li>
                                            <li><b>🗃️ Size : ${a.storage}</b></li>
                                            <li><b>📝️ RAM : ${a.RAM}</b></li>
                                            <li><b>📅 Release Date: ${a.releaseDate}</b></li>
                                        </ul>

                                        <br/>
                                        <ul class="col-md-4" style="margin: 10px 0px">
                                            <li><i class="fa fa-check"></i> <b>Download Count: ${a.downloadCount}</b></li>
                                            <li><i class="fa fa-check"></i> <b>Total Revenue: ${a.totalRevenue}$</b></li>
                                            <li><i class="fa fa-check"></i> <b>OS: ${a.OS}</b></li>

                                            <li><i class="fa fa-check"></i> <b>Developer:
                                                    <c:forEach items="${requestScope.devList}" var="d">
                                                        <c:if test="${a.developerID==d.developerID}">
                                                            <a style="color: #0069d9" href="${d.website}">${d.name}</a>
                                                        </c:if>
                                                    </c:forEach>
                                                </b>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="row mt-20">



                                        <!-- CARDDDDD GIO HANG!!!!!! -->
                                        <form action="product" method="post">


                                            <input type="hidden" class="form-control form-control-user" id="exampleInputEmail"
                                                   value="${a.appID}" name="appId" required>
                                            <input type="hidden" class="form-control form-control-user" id="exampleInputEmail"
                                                   value="${a.price}" name="price" required>

                                            <div class="col-12">
                                                <div class="table-listing qty">
                                                    <label>Qty:</label>
                                                    <div class="fill-input">
                                                        <button type="button" id="sub" class="sub cou-sub">
                                                            <i class="fa fa-minus" aria-hidden="true"></i>
                                                        </button>
                                                        <input type="number" id="1" class="input-text qty" value="1" min="1" max="99" name="qty" />
                                                        <button type="button" id="add" class="add cou-sub">
                                                            <i class="fa fa-plus" aria-hidden="true"></i>
                                                        </button>
                                                    </div>
                                                </div>


                                                <div class="product-action">
                                                    <ul>
                                                        <li>
                                                            <button type="submit" class="btn btn-color">
                                                                <img src="images/shop-bag.png" alt="bag">
                                                                <span>add to cart</span>
                                                            </button>
                                                        </li>
                                                        <li><a href="#" class="btn"><i class="fa fa-heart" aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>

                                        </form>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="product-detail-tab pt-100" id="product-review">
                <div class="container">
                    <div class="product-review">
                        <ul id="tabs" class="review-tab nav nav-tabs" role="tablist">
                            <li role="presentation" class="tab-link">
                                <a href="#description" role="tab" class="active" data-toggle="tab">Description</a>
                            </li>
                            <li role="presentation" class="tab-link">
                                <a href="#review" role="tab" data-toggle="tab">Review</a>
                            </li>
                        </ul>
                        <div class="product-review-des tab-content">
                            <div role="tabpanel" class="product-review-in product-review-des tab-pane fade active show" id="description">
                                <h2>Introduction .. ${a.appName} </h2>
                                <p>${a.description}</p>
                                <ul>
                                    <li><i class="fa fa-angle-right" aria-hidden="true"></i> Sweetheart neckline</li>
                                    <li><i class="fa fa-angle-right" aria-hidden="true"></i> Unlined</li>
                                    <li><i class="fa fa-angle-right" aria-hidden="true"></i> Shell: 96% polyester, 4% spandex</li>
                                </ul>
                            </div>
                            <div role="tabpanel" class="product-review-in product-review-com tab-pane fade" id="review">
                                <div class="comment-part">
                                    <h3>03 COMMENTS</h3>
                                    <ul>
                                        <li>
                                            <div class="comment-user">
                                                <img src="images/comment-img1.jpg" alt="comment-img">
                                            </div>
                                            <div class="comment-detail">
                                                <span class="commenter">
                                                    <span>John Doe</span> (05 Jan 2020)
                                                </span>
                                                <p>Lorem ipsum dolor sit amet adipiscing elit labore dolore that sed do eiusmod tempor labore dolore that magna aliqua. Ut enim ad minim veniam, exercitation.</p>
                                                <a href="#" class="reply-btn btn btn-color small">Reply</a>
                                            </div>
                                            <div class="clearfix"></div>
                                        </li>
                                        <li>
                                            <ul>
                                                <li>
                                                    <div class="comment-user">
                                                        <img src="images/comment-img2.jpg" alt="comment-img">
                                                    </div>
                                                    <div class="comment-detail">
                                                        <span class="commenter">
                                                            <span>John Doe</span> (12 Jan 2020)
                                                        </span>
                                                        <p>Lorem ipsum dolor sit amet adipiscing elit labore dolore that sed do eiusmod tempor labore dolore that magna aliqua. Ut enim ad minim veniam, exercitation.</p>
                                                        <a href="#" class="reply-btn btn btn-color small">Reply</a>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </li>
                                                <li>
                                                    <div class="comment-user">
                                                        <img src="images/comment-img3.jpg" alt="comment-img">
                                                    </div>
                                                    <div class="comment-detail">
                                                        <span class="commenter">
                                                            <span>John Doe</span> (15 Jan 2020)
                                                        </span>
                                                        <p>Lorem ipsum dolor sit amet adipiscing elit labore dolore that sed do eiusmod tempor labore dolore that magna aliqua. Ut enim ad minim veniam, exercitation.</p>
                                                        <a href="#" class="reply-btn btn btn-color small">Reply</a>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                <div class="leave-comment-part pt-100">
                                    <h3 class="reviews-head mb-30">Leave A Comment</h3>
                                    <form class="main-form">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" placeholder="Name" required>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" placeholder="Subject" required>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" placeholder="Email" required>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <textarea class="form-control" placeholder="Message" rows="8"></textarea>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <button type="submit" class="btn post-comm">Post Comment</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="featured pt-100">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h2 class="related-title">Related Product</h2>
                        </div>

                        <c:forEach items="${requestScope.appList}" var="c">
                            <c:if test="${a.categoryID==c.categoryID}">
                                <c:if test="${a.appID!=c.appID}">





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
                                </c:if>
                            </c:if>
                        </c:forEach>

                    </div>
                </div>
            </section>

            <jsp:include page="footer.jsp" />
        </div>
        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/modernizr.js"></script>
        <script src="js/custom.js"></script>
        <script>
            $(document).ready(function () {
                //If your <ul> has the id "glasscase"
                $('#glasscase').glassCase({
                    'thumbsPosition': 'bottom',
                    'widthDisplayPerc': 100,
                    isDownloadEnabled: false,
                });
            });
        </script>
    </body>

</html>

