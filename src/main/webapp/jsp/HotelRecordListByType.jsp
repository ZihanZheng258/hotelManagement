<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="beans.Hotel" %>
<%@ page import="Dao.DaoManager" %>
<%@ page import="dbc.DBConnector" %>
<%@ page import="org.eclipse.persistence.sessions.Session" %><%--
  Created by IntelliJ IDEA.
  User: yangk
  Date: 2021/8/30
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<%--用jsp语句，将servlet传过来的list数据拿到并放在一个list里--%>
<%List<Hotel> hotelListByType = (List<Hotel>)session.getAttribute("hotelListByType");%>

<%--<%--%>
<%--    List hotelList = (List) request.getAttribute("hotelList");--%>
<%--%>--%>
<head>
    <meta charset="UTF-8">
    <title>Hotel Record</title>
    <!-- 获得更好的响应式支持 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 引入bootstrap的核心css文件  -->
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
    <link rel="stylesheet" href="../css/max/ManageUserPage.css">

</head>
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

<!--创建容器-->
<div class="container">
    <div class="row">
        <div class="col-sm-2">
            <a href="AdminPage.jsp">
                <button class="btn btn-link">Back</button>
            </a>
        </div>
        <div class="col-sm-8"><h1 class="text-center">Hotel Record <small> HMS-V1.0</small></h1></div>
<%--        <div class="col-sm-2"><h3 class="text-center" style="margin-top: 26px">Welcome：xxx</h3></div>--%>
    </div>
    <!--创建搜索框 按键 以及添加按钮-->
    <div class="row">
    <form>
        <input type="text" class="form-control" name="hotelName"  placeholder="Search By Hotel Name: ">
        <button class="btn btn-primary btn-md" type="submit">Search</button>
    </form>
    <div class="col-sm-2"></div>
    <form action="SearchHotelRecord">
        <input type="text" class="form-control" name="hotelType" placeholder="Search By Hotel Type: ">
        <button class="btn btn-primary btn-md" type="submit">Search</button>
    </form>

        <form action="Admin">
            <a href="HotelRecord.jsp">
                <div class="col-sm-2">
                    <button class="btn btn-info btn-md" type="submit">Reset</button>
                </div>
            </a>
        </form>
    <div class="col-sm-2">
        <!--添加酒店功能按钮 超级管理员权限 按下按键跳转到AddHotel.html表单-->
        <button class="btn btn-success btn-md"><a href="AddHotelRecord.jsp">Add Hotel</a></button>
    </div>
    </div>
    <br>

    <!--创建表格-->
    <table class="table  table-hover table-bordered" style="background-color: #FF6767">

        <tr style="
        background-color: #FF3D68">
            <!--酒店基本信息-->
            <th>Hotel ID</th>
            <th>Hotel Name</th>
            <th>Hotel Address</th>
            <th>Floor Area (hectare)</th>
            <th>Hotel Image</th>

            <!--酒店其他信息-->
            <th>Hotel Type</th>
            <th>Stars</th>
            <th>Score</th>
            <th>Introduction</th>
            <th>Edit/Delete</th>
        </tr>
        <%--继续使用jsp语句， 循环放入list中的Hotel 实体类数据--%>

        <%

            if(hotelListByType != null){
                System.out.println(hotelListByType.size());
                for (int i=0; i<hotelListByType.size();i++){
                    Hotel hotel1 = (Hotel) hotelListByType.get(i);
        %>

        <tbody>

        <tr>
            <td><%=hotel1.getId()%></td>
            <td><%=hotel1.getName()%></td>
            <td><%=hotel1.getAddress()%></td>
            <td><%=hotel1.getArea()%></td>
            <td><%=hotel1.getpicture()%></td>
            <td><%=hotel1.getType()%></td>
            <td><%=hotel1.getStar()%></td>
            <td><%=hotel1.getScore()%></td>
            <td><%=hotel1.getIntroduction()%></td>




            <td>


                <!--添加编辑按钮 超级管理员及管理员权限-->
                <form action="EditHotelRecord" method="post">
                    <input type="hidden" name="hotelObj" value=<%=hotel1.getId()%>>
                    <input type="submit" value="Edit">

<%--                    <button class="btn btn-info btn-sm">Edit</button>--%>
                </form>

                <!--添加删除按钮 超级管理员权限-->
                <form action="HotelRecord" method="get">
                    <input type="hidden" name="hotelID" value=<%=hotel1.getId()%>>
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

<body style="background-color: #FAAD80">

</body>
</html>