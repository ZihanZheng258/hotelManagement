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
<%List<Hotel> hotelList = (List<Hotel>)session.getAttribute("hotelList");%>
<%--<%--%>
<%--    List hotelList = (List) request.getAttribute("hotelList");--%>
<%--%>--%>
<head>
    <meta charset="UTF-8">
    <title>HotelRecord</title>
    <!-- 获得更好的响应式支持 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 引入bootstrap的核心css文件  -->
    <link rel="stylesheet" href="../utils/bootstrap/css/bootstrap.min.css">

</head>

<!--创建容器-->
<div class="container">
    <div class="row">
        <div class="col-sm-2">
            <a href="AdminPage.jsp">
                <button class="btn btn-link">Back</button>
            </a>
        </div>
        <div class="col-sm-8"><h1 class="text-center">Hotel Record <small> HMS-V1.0</small></h1></div>
        <div class="col-sm-2"><h3 class="text-center" style="margin-top: 26px">Welcome：xxx</h3></div>
    </div>
    <!--创建搜索框 按键 以及添加按钮-->
    <div class="row">
        <div class="col-sm-4">

            <input type="text" class="form-control" placeholder="Search By Hotel Name: ">
        </div>
        <div class="col-sm-4">
            <input type="text" class="form-control" placeholder="Search By Hotel Type: ">
        </div>
        <div class="col-sm-2">
            <!--查找酒店按键 管理员及超级管理员权限-->
            <button class="btn btn-primary btn-md">Search</button><br>
        </div>
        <div class="col-sm-2">
            <!--添加酒店功能按钮 超级管理员权限 按下按键跳转到AddHotel.html表单-->
            <button class="btn btn-success btn-md"><a href="AddHotelRecord.jsp">Add Hotel</a></button>
        </div>

    </div>
    <br>

    <!--创建表格-->
    <table class="table  table-hover table-bordered" style="background-color: #FF6767">

        <tr style="background-color: #FF3D68">
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

            if(hotelList != null){
                System.out.println(hotelList.size());

                for (int i=0; i<hotelList.size();i++){
                    Hotel hotel = (Hotel) hotelList.get(i);
        %>

        <tbody>

        <tr>
            <td><%=hotel.getId()%></td>
            <td><%=hotel.getName()%></td>
            <td><%=hotel.getAddress()%></td>
            <td><%=hotel.getArea()%></td>
            <td><%=hotel.getpicture()%></td>
            <td><%=hotel.getType()%></td>
            <td><%=hotel.getStar()%></td>
            <td><%=hotel.getScore()%></td>
            <td><%=hotel.getIntroduction()%></td>




            <td>


                <!--添加编辑按钮 超级管理员及管理员权限-->
                <form action="EditHotelRecord" method="get">
                    <input type="hidden" name="hotelObj" value=<%=hotel%>>
                    <input type="submit" value="Edit">



<%--                    <button class="btn btn-info btn-sm">Edit</button>--%>
                </form>

                <!--添加删除按钮 超级管理员权限-->
                <form action="HotelRecord" method="get">
                    <input type="hidden" name="hotelID" value=<%=hotel.getId()%>>
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