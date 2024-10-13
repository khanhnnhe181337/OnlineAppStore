<%-- 
    Document   : login
    Created on : 1 thg 7, 2024, 10:26:22
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <h1 style="text-align: center">Login</h1>
        <h4>${sessionScope.notication}</h4>
        <form action="login" method="post">
            <div class="form-group">
                <label for="exampleInputEmail1">UserName</label>
                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="user">
                <small id="emailHelp" class="form-text text-muted">Never gonna give you up, never gonna let you down!</small>
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1" name="pass">
            </div>
            <div class="form-group form-check">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">Check me out</label>
            </div>
            <h5 style="color: red">${requestScope.error}</h5>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </body>
</html>
