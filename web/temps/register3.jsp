<%-- 
    Document   : register
    Created on : 1 thg 7, 2024, 11:44:18
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Add new account!</h1>
        <form method="post">
            <div class="form-group">
                <label for="exampleFormControlInput1">Email</label>
                <input type="email" class="form-control" id="exampleFormControlInput1" name="email">
                <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
            </div>
            <div class="form-group">
                <label for="exampleFormControlInput1">User Name</label>
                
                <input type="text" class="form-control" id="exampleFormControlInput1" name="user">
                <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
            </div>
            <div class="form-group">
                <label for="exampleFormControlInput1">Password</label>
                <input type="password" class="form-control" id="exampleFormControlInput1" name="pass">
                <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
            </div>
            <div class="form-group">
                <label for="exampleFormControlInput1">Re-enter Password</label>
                <input type="password" class="form-control" id="exampleFormControlInput1" name="re-pass">
                <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
            </div>
            <div class="form-group">
                <label for="exampleFormControlSelect1">Age</label>
                <select class="form-control" id="exampleFormControlSelect1" name="age">
                    <option value="0">Select age</option>
                    <c:forEach var="i" begin="1" end="99">
                        <option value="${i}">${i}</option>
                    </c:forEach>
                </select>
            </div>
            <h4 style="color: red">${sessionScope.error}</h4> <br/>
                 <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </body>
</html>
