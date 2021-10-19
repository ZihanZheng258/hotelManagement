<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="beans.Hotel" %>
<%@ page import="Dao.DaoManager" %>
<%@ page import="dbc.DBConnector" %>
<%@ page import="org.eclipse.persistence.sessions.Session" %>
<%@ page import="beans.Remark" %><%--
  Created by IntelliJ IDEA.
  User: yangk
  Date: 2021/8/30
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<%--用jsp语句，将servlet传过来的list数据拿到并放在一个list里--%>
<%List<Remark> remarkList = (List<Remark>)session.getAttribute("remarkList");%>



<head>
    <meta charset="UTF-8">
    <title>Remark Record</title>
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
    <%--第一行--%>
    <div class="row">
        <div class="col-sm-2">
            <a href="AdminPage.jsp">
                <button class="btn btn-link">Back</button>
            </a>
        </div>
        <div class="col-sm-8"><h1 class="text-center">Remark Record <small> HMS-V1.0</small></h1></div>
        <div class="col-sm-2"><h3 class="text-center" style="margin-top: 26px">Welcome！</h3></div>
    </div>

    <%--第二行--%>
    <div class="row">
        <form action="">
            <input type="text" class="form-control" name=""  placeholder="Search By : ">
            <button class="btn btn-primary btn-md" type="submit">Search</button>
        </form>
        <div class="col-sm-2"></div>
        <form action="">
            <input type="text" class="form-control" name="hotelType" placeholder="Search By : ">
            <button class="btn btn-primary btn-md" type="submit">Search</button>
        </form>

        <div class="col-sm-2">
            <button class="btn btn-info btn-md" type="submit">Reset</button>
        </div>
        <div class="col-sm-2">
            <!--添加酒店功能按钮 超级管理员权限 按下按键跳转到AddHotel.html表单-->
            <button class="btn btn-success btn-md"><a href="AddRemarkRecord.jsp">Add Remark</a></button>
        </div>
    </div>

    <br>

    <!--创建表格-->
    <table class="table  table-hover table-bordered" style="background-color: #FF6767">

        <tr style="
        background-color: #FF3D68">
            <!--酒店基本信息-->
            <th>Remark ID</th>
            <th>User Name</th>
            <th>Content</th>
            <th>Score</th>
            <th>Room ID</th>
            <th>UserID</th>

            <th>Edit/Delete</th>
        </tr>
        <%--继续使用jsp语句， 循环放入list中的Hotel 实体类数据--%>

        <%

            if(remarkList != null){
                System.out.println(remarkList.size());
                for (int i=0; i<remarkList.size();i++){
                    Remark remark = (Remark) remarkList.get(i);
        %>

        <tbody>

        <tr>
            <td><%=remark.getId()%></td>
            <td><%=remark.getUserName()%></td>
            <td><%=remark.getContent()%></td>
            <td><%=remark.getScore()%></td>
            <td><%=remark.getRoomID()%></td>
            <td><%=remark.getUserID()%></td>





            <td>


                <!--添加编辑按钮 超级管理员及管理员权限-->
                <form action="" method="">
                    <input type="hidden" name="hotelObj" >
                    <input type="submit" value="Edit">

                                        <button class="btn btn-info btn-sm">Edit</button>
                </form>

                <!--添加删除按钮 超级管理员权限-->
                <form action="" method="">
<%--                    <input type="hidden" name="hotelID" value=<%=hotel.getId()%>>--%>
                    <input type="submit" value="Delete">
                                    <button class="btn btn-danger btn-sm" type="submit">Delete</button>
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