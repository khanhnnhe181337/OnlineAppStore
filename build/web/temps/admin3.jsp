<%-- 
    Document   : Admin
    Created on : 1 thg 7, 2024, 13:13:40
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
        <h1>Company Management</h1>
       
        <table border="1px">
            <tr>
            <th>userId</th>
            <th>userName</th>       
            <th>passWord</th>   
            <th>email</th>   
            <th>createdDate</th>   
            <th>age</th>   
            <th>roleId</th>   
            <th>Operations</th>
        </tr>
        <c:forEach items="${requestScope.userList}" var="c">
            <tr>
                <td>${c.userId}</td>
                <td>${c.userName}</td>
                <td>${c.passWord}</td>
                <td>${c.email}</td>
                <td>${c.createdDate}</td>
                <td>${c.age}</td>
                <td>${c.roleId}</td>
                <td>
                    <a href="update?id=${c.userId}">Edit</a>&nbsp;|&nbsp;
                    <a href="#" onclick="delete1('${c.userId}')">Remove</a>
                </td>
            </tr>
        </c:forEach>
        </table>
    </body>
    <script type="text/javascript">
            function delete1(id){
                if(confirm('are u sure to delete id'+id+'?')){
                    window.location='/ProjectPRJ/delete?id='+id;
                }
            }
    </script>
</html>
