<%-- 
    Document   : addUser
    Created on : 3 thg 7, 2024, 11:33:02
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>SB Admin 2 - Register</title>

        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="css/sb-admin-2.min.css" rel="stylesheet">

    </head>

    <body class="bg-gradient-primary">

        <div class="container">

            <div class="card o-hidden border-0 shadow-lg my-5">
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                        <div class="col-lg-7">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Add an Account!</h1>
                                </div>
                                <form class="user" method="post">
                                    <div class="form-group row">
                                        <div class="col-sm-9 mb-3 mb-sm-0">
                                            <input type="text" class="form-control form-control-user" id="exampleFirstName"
                                                   placeholder="User Name" name="user">
                                        </div>
                                        <div class="col-sm-3" style="align-content: center; padding-left: 0px;padding-right: 20px">
                                             <select class="form-control" id="exampleFormControlSelect1" name="age" required>
                                                <option value="0">Age</option>
                                                <c:forEach var="i" begin="1" end="99">
                                                    <option value="${i}">${i}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <input type="email" class="form-control form-control-user" id="exampleInputEmail"
                                               placeholder="Email Address" name="email" required>
                                    </div>
                                    <div class="form-group">
                                           
                                        </div>
                                    <div class="form-group row">
                                        <div class="col-sm-6 mb-3 mb-sm-0">
                                            <input type="password" class="form-control form-control-user"
                                                   id="exampleInputPassword" placeholder="Password" name="pass" required>
                                        </div>
                                        <div class="col-sm-6">
                                            <input type="password" class="form-control form-control-user"
                                                   id="exampleRepeatPassword" placeholder="Repeat Password" name="re-pass" required>
                                        </div>
                                        
                                        
                                    </div>
                                <hr>
                                    <button name="submit" type="submit" class="btn btn-primary btn-user btn-block">Add Account</button>
                                <a href="tables" class="btn btn-danger btn-user btn-block">Back to table</a>
                                    <hr>
                                    <h5 style="color: red">${requestScope.error}</h5>
                                    <h5 style="color: red">${requestScope.notication}</h5>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin-2.min.js"></script>

    </body>

</html>
