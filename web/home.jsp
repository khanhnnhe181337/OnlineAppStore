<%-- 
    Document   : home
    Created on : 1 thg 7, 2024, 10:38:30
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
        <h2 style="background-color: #4287f5;color: white;">
            <c:if test="${sessionScope.account==null}">
                <a href="login">Login</a>&nbsp;&nbsp;
                <a href="register">Sign Up</a>

            </c:if>
            <c:if test="${sessionScope.account!=null}">
                Welcome <a href="#">${sessionScope.account.userName}</a>!&nbsp;&nbsp;
                <a href="changepass?user=${sessionScope.account.userName}">Change password</a>&nbsp;&nbsp;
                <a href="logout">Sign Out</a>

            </c:if>
        </h2>
    </body>
</html>
