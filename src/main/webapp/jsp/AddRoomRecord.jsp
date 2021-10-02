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
  <title>Add Room Record</title>
  <!-- 获得更好的响应式支持 -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- 引入bootstrap的核心css文件  -->
  <link rel="stylesheet" href="../utils/bootstrap/css/bootstrap.min.css">
</head>
<body style="background-color: #FF6767">
<div class="container">

  <!--副标题 内容站容器内容的80%大小-->
  <h1 class="text-center">Add New Room <small>Super Administrator Authority</small></h1>

  <!--录入旅店表单-->
  <form action="AddRoomRecord" method="get">
    <div class="form-group">
      <label for="InputRoomID">Room ID</label>
      <input class="form-control" id="InputRoomID" name = "roomID" value="" placeholder="Please Enter Room ID">
    </div>
    <div class="form-group">
      <label for="InputRoomName">Room Name</label>
      <input class="form-control" id="InputRoomName" name = "roomName" value="" placeholder="Please Enter Room Name">
    </div>
    <div class="form-group">
      <label for="InputRoomNumber">Room Number</label>
      <input class="form-control" id="InputRoomNumber" name = "roomNumber" value="" placeholder="Please Enter Room Number">
    </div>
    <div class="form-group">
      <label for="InputRoomType">Room Type</label>
      <input class="form-control" id="InputRoomType" name = "roomType" value="" placeholder="Please Enter Room Type">
    </div>
    <div class="form-group">
      <label for="InputArea">Room Area</label>
      <input class="form-control" id="InputArea" name = "roomArea" value="" placeholder="Please Enter Room Area">
    </div>
    <div class="form-group">
      <label for="InputBedWidth">Bed Width</label>
      <input class="form-control" id="InputBedWidth" name = "roomBedWidth" value="" placeholder="Please Enter Bed Width">
    </div>
    <div class="form-group">
      <label for="InputPrice">Price</label>
      <input class="form-control" id="InputPrice" name = "roomPrice" value="" placeholder="Please Enter Price">
    </div>
    <div class="form-group">
      <label for="InputBookStatus">Book Status</label>
      <input class="form-control" id="InputBookStatus" name = "roomBookStatus" value="" placeholder="Please Enter Book Status">
    </div>
    <div class="form-group">
      <label for="InputScore">Score</label>
      <input class="form-control" id="InputScore" name = "roomScore" value="" placeholder="Please Enter Score">
    </div>
    <div class="form-group">
      <label for="InputHotelID">Hotel ID</label>
      <input class="form-control" id="InputHotelID" name = "roomHotelID" value="" placeholder="Please Enter Hotel ID">
    </div>
    <div class="form-group">
      <label for="InputLevel">Level</label>
      <input class="form-control" id="InputLevel" name = "roomLevel" value="" placeholder="Please Enter Level">
    </div>
    <div class="form-group">
      <label for="InputRemark">Remark</label>
      <textarea class="form-control" id="InputRemark" name = "roomRemark" placeholder="Please Enter Remark" rows="4"></textarea>
    </div>


    <br>
    <div class="form-group">
      <label for="exampleInputFile">Upload Room Photo</label>
      <input type="file" id="exampleInputFile">
    </div>


    <br>
    <a href="AdminPage.jsp">
      <button type="submit" class="btn btn-success btn-block">ADD</button>
    </a>
    <!--关闭页面-->
    <a href="AdminPage.jsp">
      <button class="btn btn-danger btn-block">CANCEL</button>
    </a>
  </form>

</div>


<div class="container">

</div>
</body>
</html>