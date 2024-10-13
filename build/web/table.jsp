<%-- 
    Document   : table
    Created on : 2 thg 7, 2024, 20:03:40
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

        <title>SB Admin 2 - Tables</title>

        <!-- Custom fonts for this template -->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/sb-admin-2.min.css" rel="stylesheet">

        <!-- Custom styles for this page -->
        <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
        
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

    <body id="page-top">

        <!-- Page Wrapper -->
        <jsp:include page="adminTopbar.jsp" />



        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">User Data</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>User ID</th>
                                <th>User name</th>
                                <th>Age</th>
                                <th>Pass</th>
                                <th>Email</th>
                                <th>Created date</th>
                                <th>Role</th>
                                <th>Operator</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>User ID</th>
                                <th>User name</th>
                                <th>Age</th>
                                <th>Pass</th>
                                <th>Email</th>
                                <th>Created date</th>
                                <th>Role</th>
                                <th>Operator</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            <c:forEach items="${requestScope.userList}" var="c">
                                <c:if test="${requestScope.uFound.userId==c.userId}">
                                    <tr>
                                <form action="update" method="post">
                                    <td>${c.userId}</td>
                                    <td><input type="text" size="5px" name="user" value="${c.userName}"required/></td>
                                    <td><input type="text" size="1px" name="age" value="${c.age}"required/></td>
                                    <td><input type="text" size="6px" name="pass" value="${c.passWord}"required/></td>
                                    <td><input type="text" size="10px" name="email" value="${c.email}"required/></td>
                                    <td>${c.createdDate}</td>
                                    <td><input type="number" size="1px" name="role" value="${c.roleId}"required/></td>
                                    <td>
                                        <input type="hidden" name="id" value="${c.userId}" />
                                        <input type="hidden" name="date" value="${c.createdDate}"/>
                                        <a href="tables" class="btn btn-warning btn-circle btn-sm">
                                            <i class="fas fa-info-circle"></i>
                                        </a>
                                        &nbsp;
                                        <button type="submit" class="btn btn-info btn-circle btn-sm">
                                            <i class="fas fa-check"></i>
                                        </button>
                                </form>
                                </td>
                                </tr>
                            </c:if>
                            <tr>
                                <td>${c.userId}</td>
                                <td>${c.userName}</td>
                                <td>${c.age}</td>
                                <td>${c.passWord}</td>
                                <td>${c.email}</td>
                                <td>${c.createdDate}</td>
                                <td>${c.roleId}</td>
                                <td>
                                    <a href="update?id=${c.userId}" class="btn btn-info btn-circle btn-sm">
                                        <i class="fas fa-info-circle"></i>
                                    </a>

                                    &nbsp;
                                    <a href="#" class="btn btn-danger btn-circle btn-sm" onclick="delete1('${c.userId}')">
                                        <i class="fas fa-trash"></i>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>


        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Application Data</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>App ID</th>
                                <th>App name</th>
                                <th>Age rating</th>
                                <th>Developer</th>
                                <th>Price</th>
                                <th>Release Date</th>
                                <th>Category</th>
                                <th>AppImage</th>
                                <th>Download</th>
                                <th>DownloadCount</th>
                                <th>TotalRevenue</th>
                                <th>RAM</th>
                                <th>Storage</th>
                                <th>VGA</th>
                                <th>CPU</th>
                                <th>OS</th>
                                <th>Description</th>
                                <th>Operator</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>App ID</th>
                                <th>App name</th>
                                <th>Age rating</th>
                                <th>Developer</th>
                                <th>Price</th>
                                <th>Release Date</th>
                                <th>Category</th>
                                <th>AppImage</th>
                                <th>Download</th>
                                <th>DownloadCount</th>
                                <th>TotalRevenue</th>
                                <th>RAM</th>
                                <th>Storage</th>
                                <th>VGA</th>
                                <th>CPU</th>
                                <th>OS</th>
                                <th>Description</th>
                                <th>Operator</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            <c:forEach items="${requestScope.appList}" var="c">

                                <c:if test="${requestScope.aFound.appID==c.appID}">
                                    <tr>
                                <form action="updateApp" method="post">
                                    <td>${c.appID}</td>
                                    <td><input type="text" size="10px" name="name" value="${c.appName}"required/></td>
                                    <td><input type="text" size="1px" name="age" value="${c.ageRating}"required/></td>
                                    <td>
                                        <select class="form-control" id="exampleFormControlSelect1" name="dev" required>
                                            <c:forEach items="${requestScope.devList}" var="d">
                                                <c:if test="${c.developerID==d.developerID}">
                                                    <option value="${c.developerID}">${d.name}</option>
                                                </c:if>
                                                <option value="${d.developerID}">${d.name}</option>

                                            </c:forEach>
                                        </select>
                                    </td>
                                    <td><input type="text" size="10px" name="price" value="${c.price}"required/></td>
                                    <td>${c.releaseDate}</td>
                                    <td>
                                        <select class="form-control" id="exampleFormControlSelect1" name="cate" required>
                                            <c:forEach items="${requestScope.cateList}" var="e">
                                                <c:if test="${c.categoryID==e.categoryID}">
                                                    <option value="${e.categoryID}">${e.categoryName}</option>                                                    
                                                </c:if>
                                                    <option value="${e.categoryID}">${e.categoryName}</option>
                                            </c:forEach>
                                        </select>
                                        



                                    </td>
                                    <td><input type="text" size="30px" name="img" value="${c.appImageURL}"required/></td>
                                    <td><input type="text" size="30px" name="link" value="${c.downloadURL}"required/></td>
                                    <td><input type="number" size="1px" name="count" value="${c.downloadCount}"required/></td>
                                    <td><input type="number" size="1px" name="salary" value="${c.totalRevenue}"required/></td>
                                    <td><input type="text" size="5px" name="ram" value="${c.RAM}"required/></td>
                                    <td><input type="text" size="5px" name="disk" value="${c.storage}"required/></td>
                                    <td><input type="text" size="10px" name="vga" value="${c.graphicsCard}"required/></td>
                                    <td><input type="text" size="10px" name="cpu" value="${c.CPU}"required/></td>
                                    <td><input type="text" size="7px" name="os" value="${c.OS}"required/></td>
                                    <td><input type="text" size="30px" name="descr" value="${c.description}"required/></td>
                                    <td>
                                        <input type="hidden" name="id" value="${c.appID}" />
                                        <input type="hidden" name="date" value="${c.releaseDate}"/>
                                        <a href="tables" class="btn btn-warning btn-circle btn-sm">
                                            <i class="fas fa-info-circle"></i>
                                        </a>
                                        &nbsp;
                                        <button type="submit" class="btn btn-info btn-circle btn-sm">
                                            <i class="fas fa-check"></i>
                                        </button>
                                </form>
                                </td>
                                </tr>
                            </c:if>

                            <tr>
                                <td>${c.appID}</td>
                                <td>${c.appName}</td>
                                <td>${c.ageRating}</td>
                                <td>
                                    <c:forEach items="${requestScope.devList}" var="d">
                                        <c:if test="${c.developerID==d.developerID}">
                                            ${d.name}
                                        </c:if>
                                    </c:forEach>
                                </td>
                                <td>${c.price}</td>
                                <td>${c.releaseDate}</td>
                                <td>
                                    <c:forEach items="${requestScope.cateList}" var="e">
                                        <c:if test="${c.categoryID==e.categoryID}">
                                            ${e.categoryName}
                                        </c:if>
                                    </c:forEach>


                                </td>
                                <td><a href="addImages?id=${c.appID}"><img style="width: 70px" src="${c.appImageURL}"/></a></td>
                                <td><a href="${c.downloadURL}">${c.appName}</a></td>
                                <td>${c.downloadCount}</td>
                                <td>${c.totalRevenue}</td>
                                <td>${c.RAM}</td>
                                <td>${c.storage}</td>
                                <td>${c.graphicsCard}</td>
                                <td>${c.CPU}</td>
                                <td>${c.OS}</td>
                                <td class="description">${c.description}</td>
                                <td>
                                    <a href="updateApp?id=${c.appID}" class="btn btn-info btn-circle btn-sm">
                                        <i class="fas fa-info-circle"></i>
                                    </a>

                                    &nbsp;
                                    <a href="#" class="btn btn-danger btn-circle btn-sm" onclick="deleteApp('${c.appID}')">
                                        <i class="fas fa-trash"></i>
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
    <!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<jsp:include page="adminFooter.jsp" />

</body>
<script type="text/javascript">
    function delete1(id) {
        if (confirm('are u sure to delete id' + id + '?')) {
            window.location = '/ProjectPRJ/delete?id=' + id;
        }
    }
    function deleteApp(id) {
        if (confirm('are u sure to delete id' + id + '?')) {
            window.location = '/ProjectPRJ/deleteApp?id=' + id;
        }
    }
</script>
</html>
