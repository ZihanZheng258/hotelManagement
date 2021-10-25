<%@ page import="java.util.ArrayList" %>
<%@ page import="beans.Hotel" %>
<%@ page import="beans.Room" %>
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
<%ArrayList<Room> rooms = (ArrayList<Room>)session.getAttribute("rooms");%>
<%ArrayList<Hotel> hotels = (ArrayList<Hotel>)session.getAttribute("hotels");%>

<!-- 获得更好的响应式支持 -->
<!-- 引入bootstrap的核心css文件  -->
<!-- Bootstrap -->
<html lang="en">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="utf-8">
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
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="../css/max/ManageUserPage.css">

<title>Room Record</title>

<head>

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

<body style="background-color: #FAAD80">
<div class="container">
    <div class="row">
        <div class="col-sm-2">
            <button class="btn btn-link"><a href="./AdminPage.jsp">Back</a></button>
        </div>
        <div class="col-sm-8"><h1 class="text-center">Room Record <small> HMS-V1.0</small></h1></div>
        <div class="col-sm-2"><h3 class="text-center" style="margin-top: 26px">Welcome：xxx</h3></div>
    </div>
    <!--创建搜索框 按键 以及添加按钮-->
    <form action="RoomRecord2">
    <div class="row">

        <div class="col-sm-4">
            <input type="text" class="form-control" name="Id" placeholder="Search By Hotel Id: ">
        </div>
        <div class="col-sm-2">
            <!--查找酒店按键 管理员及超级管理员权限-->
            <button class="btn btn-primary btn-md" type="submit">Search</button><br>
        </div>

        <div class="col-sm-2">
            <!--添加酒店功能按钮 超级管理员权限 按下按键跳转到AddHotel.html表单-->
            <button class="btn btn-success btn-md"><a href="AddRoomRecord.jsp">Add Room</a></button>
        </div>

    </div>
    </form>
    <br>

    <!--创建表格-->
    <table class="table  table-hover table-bordered" style="background-color: #FF6767">
        <tr style="background-color: #FF3D68">
            <!--房间基本信息-->
            <th>Room ID</th>
            <th>Room Name</th>
            <th>Room Number</th>
            <th>Room Photo</th>
            <th>Room Type</th>
            <th>Room Area</th>
            <th>Bed Width</th>
            <th>Price</th>
            <th>Book Status</th>
            <th>Score</th>
            <th>Remark</th>
            <th>Level</th>
            <th>Hotel ID</th>
            <th>Edit/Delete</th>
        </tr>

        <%
            if(rooms != null){
                System.out.println(rooms.size());
                for (int i=0; i<rooms.size();i++){
                    Room room = (Room)rooms.get(i);
        %>
        <tbody>
        <tr>
            <td><%=room.getId()%></td>
            <td><%=room.getName()%></td>
            <td><%=room.getNumber()%></td>
            <td><%=room.getpicture()%></td>
            <td><%=room.getType()%></td>
            <td><%=room.getArea()%></td>
            <td><%=room.getBedWidth()%></td>
            <td><%=room.getPrice()%></td>
            <td><%=room.getBookStatus()%></td>
            <td><%=room.getScore()%></td>
            <td><%=room.getRemark()%></td>
            <td><%=room.getLevel()%></td>
            <td><%=room.getHotelID()%></td>


            <td>

                <form action="EditRoomRecord" method="post">
                    <input type="hidden" name="roomObj" value=<%=room.getId()%>>
                    <input type="submit" value="Edit">
                </form>

                <form action="RoomRecord" method="get">
                    <input type="hidden" name="roomid" value=<%=room.getId()%>>
                    <input type="submit" value="Delete">
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