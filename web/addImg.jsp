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
        <style>
            table {
                width: 100%;
                border-collapse: collapse;
            }
            th, td {
                border: 1px solid black;
                padding: 8px;
                text-align: left;
            }
            .description {
                max-width: 200px; /* Set your desired max-width */
                white-space: nowrap;
                overflow: hidden;
                text-overflow: ellipsis;
            }
        </style>
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

            <section class="page-banner">
                <div class="container">
                    <div class="page-banner-in">
                        <div class="row">
                            <div class="col-xl-6 col-lg-6 col-12">
                                <h1 class="page-banner-title text-uppercase">Shop Page Demo</h1>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-12">
                                <ul class="right-side">
                                    <li><a href="index.html">Home</a></li>
                                    <li><a href="shop.html">Shop</a></li>
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
                                </ul>
                            </div>
                        </div>



                        <div class="col-lg-7 col-md-6 col-12">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Add Aplication's Images!</h1>
                                </div>
                                <form class="user" method="post">

                                    <input type="hidden" class="form-control form-control-user" id="exampleInputEmail"
                                           placeholder="img link" name="id" value="${requestScope.id}" required>
                                    <div class="form-group">
                                        <input type="text" class="form-control form-control-user" id="exampleInputEmail"
                                               placeholder="image link" name="link" required>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control form-control-user" id="exampleInputEmail"
                                               placeholder="describe image" name="descr" required>
                                    </div>
                                    <hr>
                                    <button name="submit" type="submit" class="btn btn-primary btn-user btn-block" style="color: white">Add Image</button>
                                    <a href="tables" class="btn btn-success btn-user btn-block" style="color: white">Back to table</a>
                                    <hr>
                                    <h5 style="color: red">${requestScope.error}</h5>
                                    <h5 style="color: red">${requestScope.notication}</h5>
                                </form>


                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Image ID</th>
                                            <th>ImageURL</th>
                                            <th>Description</th>
                                            <th>Op</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Image ID</th>
                                            <th>ImageURL</th>
                                            <th>Description</th>
                                            <th>Op</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <c:forEach items="${requestScope.imgList}" var="c">
                                            <tr>
                                                <td>${c.imageID}</td>
                                                <td class="description">${c.imageURL}</td>
                                                <td class="description">${c.description}</td>
                                                <td>
                                                    <a style=" color: white" href="#" class="btn btn-warning btn-circle btn-sm">
                                                        <b>Edit</b>
                                                    </a>

                                                    &nbsp;
                                                    <a style=" color: white" href="#" class="btn btn-danger btn-circle btn-sm" onclick="delete1('${c.imageID}','${c.appID}')">
                                                        <b>Delete</b>
                                                    </a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>




                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="product-detail-tab pt-100" id="product-review">
                <div class="container">

                </div>
            </section>




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
        <script type="text/javascript">
            function delete1(id,app) {
                if (confirm('are u sure to delete id' + id + '?')) {
                    window.location = '/ProjectPRJ/deleteImg?id=' + id+'&app='+app;
                }
            }
        </script>
    </body>

</html>

