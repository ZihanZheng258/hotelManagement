<%--
  Created by IntelliJ IDEA.
  User: yangk
  Date: 2021/8/30
  Time: 22:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Remark Record</title>
    <!-- 获得更好的响应式支持 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 引入bootstrap的核心css文件  -->
    <link rel="stylesheet" href="../utils/bootstrap/css/bootstrap.min.css">
</head>
<body style="background-color: #FF6767">
<div class="container">

    <!--副标题 内容站容器内容的80%大小-->
    <h1 class="text-center">Add New Remark <small>Super Administrator Authority</small></h1>

    <!--录入旅店表单-->
    <form action="AddRemarkRecord">
        <div class="form-group">
            <label>User Name</label>
            <input class="form-control" id="InputUserName" name="userName" value="" placeholder="Please Enter User Name">
        </div>
        <div class="form-group">
            <label >Content</label>
            <input class="form-control" id="InputContent" name="content" value="" placeholder="Please Enter Content">
        </div>
        <div class="form-group">
            <label >Remark ID</label>
            <input class="form-control" id="InputRemarkID" name="remarkID" value="" placeholder="Please Enter Remark ID">
        </div>
        <div class="form-group">
            <label >Score</label>
            <input class="form-control" id="InputScore" name="score" value="" placeholder="Please Enter Score">
        </div>
        <div class="form-group">
            <label >Room ID</label>
            <input class="form-control" id="InputRoomID" name="roomID" value="" placeholder="Please Enter RoomID">
        </div>
        <div class="form-group">
            <label >UserID</label>
            <input class="form-control" id="InputUserID" name="userID" value="" placeholder="Please Enter UserID">
        </div>



        <br>
        <div class="container">

            <button type="submit" class="btn btn-success btn-block">ADD</button>


        </div>

    </form>
    <a href="RemarkRecord.jsp">
        <button class="btn btn-danger btn-block">RESET</button>
    </a>

</div>



</body>
</html>