<%-- 
    Document   : cardShop
    Created on : 4 thg 7, 2024, 15:42:26
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
                                <h1 class="page-banner-title text-uppercase">Cart</h1>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-12">
                                <ul class="right-side">
                                    <li><a href="home">Home</a></li>
                                    <li>Cart</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="pt-100">
                <div class="container">
                    <div class="wishlist-table">
                        <div class="responsive-table">
                            <table class="table border text-center">
                                <thead>
                                    <tr>
                                        <th>Product</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Sub Total</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="c" items="${sessionScope.cartItems}">


                                        <tr>
                                            <td class="text-left">
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
                                                        <a href="product-detail.html" class="product-name text-uppercase">
                                                            <c:forEach var="a" items="${sessionScope.appList}">
                                                                <c:if test="${c.appID==a.appID}">
                                                                    ${a.appName}
                                                                </c:if>
                                                            </c:forEach>
                                                        </a>
                                                    </div>
                                                </div>
                                            </td>


                                            <td>
                                                <c:forEach var="a" items="${sessionScope.appList}">

                                                    <c:if test="${c.appID==a.appID}">
                                                        <span class="price">$${a.price}</span>
                                                    </c:if>


                                                </c:forEach>
                                            </td>


                                            <td>
                                                <select data-id="100" class="quantity_cart" name="quantity_cart">
                                                    <option selected="" value="${c.quantity}">${c.quantity}</option>
                                                    <c:forEach var="i" begin="1" end="100">
                                                        <option value="${i}">${i}</option>
                                                    </c:forEach>
                                                </select>

                                            </td>
                                            <td><span class="price">$${c.price}</span></td>
                                            <td>
                                                <ul>
                                                    <li><a href="cart.html"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
                                                    <li><a href="#" onclick="delete1('${c.appID}')"><i class="fa fa-trash-o" aria-hidden="true"></i></a></li>
                                                </ul>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>

                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="share-wishlist shoping-con">
                                    <a href="shop.html" class="btn"><i class="fa fa-angle-left"></i> Continue Shopping</a>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="share-wishlist">
                                    <a href="#" class="btn">Update Cart</a>
                                </div>
                            </div>
                        </div>
                        <div class="estimate">
                            <div class="row">
                                <div class="col-md-6">
                                    <h2 class="reviews-head pb-20">Estimate shipping and tax</h2>
                                    <form class="main-form">
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <select class="form-control">
                                                        <option selected="" value="">Select Country</option>
                                                        <option value="1">India</option>
                                                        <option value="2">China</option>
                                                        <option value="3">Pakistan</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <select class="form-control">
                                                        <option selected="" value="">Select State/Province</option>
                                                        <option value="1">---</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <select class="form-control">
                                                        <option selected="" value="">Select City</option>
                                                        <option value="1">---</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="col-md-6">
                                    <div class="cart-total-table">
                                        <div class="responsive-table">
                                            <table class="table border">
                                                <thead>
                                                    <tr>
                                                        <th colspan="2">Cart Total</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>Item(s) Subtotal</td>
                                                        <td>
                                                            <div class="price-box"> 
                                                                <span class="price">$${sessionScope.totalPrice}</span> 
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Tax</td>
                                                        <td>
                                                            <div class="price-box"> 
                                                                <span class="price">$0.00</span> 
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="payable"><b>Amount Payable</b></td>
                                                        <td>
                                                            <div class="price-box"> 
                                                                <span class="price">$${sessionScope.totalPrice}</span> 
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="share-wishlist">
                                            <a href="checkout" class="btn btn-color">Proceed to checkout <i class="fa fa-angle-right"></i></a>
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
        <script src="js/custom.js"></script>
    </body>
    <script type="text/javascript">
    function delete1(id) {
        if (confirm('are u sure to delete id' + id + '?')) {
            window.location = '/ProjectPRJ/cartDelete?id=' + id;
        }
    }
    function deleteApp(id) {
        if (confirm('are u sure to delete id' + id + '?')) {
            window.location = '/ProjectPRJ/deleteApp?id=' + id;
        }
    }
</script>

</html>

