<%--
  Created by IntelliJ IDEA.
  User: DKpoosh
  Date: 2/09/2021
  Time: 11:21 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="beans.User" %>
<%@ page import="Dao.DaoManager" %>
<%@ page import="dbc.DBConnector" %>
<%@ page import="java.util.List" %>
<%
    User currentUser = (User) session.getAttribute("user");
    List<User> userList = (List<User>)session.getAttribute("userList");
    //DEBUG TESTING
    if (currentUser == null)
    {
        currentUser = new User();
        currentUser.setID(12345);
        currentUser.setName("MAX");
        currentUser.setPassword("PASSWWORD");
        currentUser.setType("SUPERMAN");
        currentUser.setPhoneNumber("04123456789");
        currentUser.setPicture(123456);
        currentUser.setBalance(10000.00);
        currentUser.setPayPassword("PASSWWORD");
        currentUser.setPicture(12345);
        session.setAttribute("user", currentUser);
    }
%>


<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="js/jquery-3.6.0.js"></script>


    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

    <!-- Bootstrap -->
    <link href="../utils/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css" integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/max/ManageUserPage.css">


    <title>Title</title>
</head>
<body>

<!--Header navigation-->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">陈总booking</a>

    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="../index.jsp">  Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"> <img src="../image/svg/house.svg" alt="Bootstrap" width="20"> Stays</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">  <img src="../image/svg/signpost-split.svg" alt="Bootstrap" width="20">Attractions</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">  <img src="../image/svg/car.svg" alt="Bootstrap" width="20" >Car rentals</a>
            </li>
        </ul>

        <div class="btn float-right">
            <li class="list-inline-item">
                <a class="btn btn-success" href="../index.jsp"> <img src="../image/svg/sign-out-alt.svg" alt="Bootstrap" width="20" >Sign Out</a>
            </li>
        </div>
    </div>
</nav>
<hr class="hrcoloured">

    <!--User list-->
    <!--创建容器-->
    <div class="container">
        <div class="row">
            <div class="col-sm-8"><h1 class="text-center">Manage User <small> MUS-V1.0</small></h1></div>
            <div class="col-sm-2"><h3 class="text-center" style="margin-top: 26px">Welcome: <%=currentUser.getName()%></h3>
            </div>

        </div>
        <!--创建搜索框 按键 以及添加按钮-->
        <div class="row">
            <div class="col-sm-4">
                <input type="text" class="form-control" placeholder="Search By User Name: ">
            </div>
            <div class="col-sm-4">
                <input type="text" class="form-control" placeholder="Search By User Type: ">
            </div>
            <div class="col-sm-2">
                <!--查找酒店按键 管理员及超级管理员权限-->
                <form action="ManageUsers">
                    <button class="btn btn-primary btn-md" type="submit">Search</button><br>
                </form>
            </div>
        </div>
        <br>

        <!--Create Table-->
        <table class="table  table-hover table-bordered" style="background-color: #FF6767">

            <tr style="background-color: #FF3D68">
                <!--User Information-->
                <th>User ID</th>
                <th>Name</th>
                <th>Type</th>
                <th>Password</th>
                <th>Phone Number</th>
                <th>Balance</th>
                <th>Pay Password</th>
                <th>Edit/Delete</th>
            </tr>

            <%--继续使用jsp语句， 循环放入list中的Hotel 实体类数据--%>
            <%
                if(userList != null){
                    System.out.println(userList.size());

                    for (int i=0; i<userList.size();i++){
                        User user = (User) userList.get(i);
            %>
            <tbody>
            <tr>
                <td><%=user.getID()%></td>
                <td><%=user.getName()%></td>
                <td><%=user.getType()%></td>
                <td><%=user.getPassword()%></td>
                <td><%=user.getPhoneNumber()%></td>
                <td><%=user.getBalance()%></td>
                <td><%=user.getPayPassword()%></td>
                <td>
                    <!--添加编辑按钮 超级管理员及管理员权限-->
                    <a href="AdminPage.jsp">
                        <button class="btn btn-info btn-sm">Edit</button>
                    </a>
                    <!--添加删除按钮 超级管理员权限-->
                    <form action="dManageUsers" method="get">
                        <input type="hidden" name="userid" value=<%=user.getID()%>>
                        <input type="submit" value="Delete">
                        <%--                <button class="btn btn-danger btn-sm" type="submit">Delete</button>--%>
                    </form>
                </td>
            </tr>
                <%   }
            }
        %>
        </table>
    </div>
</body>
</html>
