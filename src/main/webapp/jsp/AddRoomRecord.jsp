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
  <form action="AddRoomServlet" method="post">
    <div class="form-group">
      <label for="InputRoomID">Room ID</label>
      <input class="form-control" id="InputRoomID" placeholder="Please Enter Room ID">
    </div>
    <div class="form-group">
      <label for="InputRoomName">Room Name</label>
      <input class="form-control" id="InputRoomName" placeholder="Please Enter Room Name">
    </div>
    <div class="form-group">
      <label for="InputRoomNumber">Room Number</label>
      <input class="form-control" id="InputRoomNumber" placeholder="Please Enter Room Number">
    </div>
    <div class="form-group">
      <label for="InputRoomType">Room Type</label>
      <input class="form-control" id="InputRoomType" placeholder="Please Enter Room Type">
    </div>
    <div class="form-group">
      <label for="InputArea">Room Area</label>
      <input class="form-control" id="InputArea" placeholder="Please Enter Room Area">
    </div>
    <div class="form-group">
      <label for="InputBedWidth">Bed Width</label>
      <input class="form-control" id="InputBedWidth" placeholder="Please Enter Bed Width">
    </div>
    <div class="form-group">
      <label for="InputPrice">Price</label>
      <input class="form-control" id="InputPrice" placeholder="Please Enter Price">
    </div>
    <div class="form-group">
      <label for="InputBookStatus">Book Status</label>
      <input class="form-control" id="InputBookStatus" placeholder="Please Enter Book Status">
    </div>
    <div class="form-group">
      <label for="InputScore">Score</label>
      <input class="form-control" id="InputScore" placeholder="Please Enter Score">
    </div>
    <div class="form-group">
      <label for="InputHotelID">Hotel ID</label>
      <input class="form-control" id="InputHotelID" placeholder="Please Enter Hotel ID">
    </div>
    <div class="form-group">
      <label for="InputStatus">Status</label>
      <input class="form-control" id="InputStatus" placeholder="Please Enter Status">
    </div>
    <div class="form-group">
      <label for="InputRemark">Remark</label>
      <textarea class="form-control" id="InputRemark" placeholder="Please Enter Remark" rows="4"></textarea>
    </div>


    <br>
    <div class="form-group">
      <label for="exampleInputFile">Upload Room Photo</label>
      <input type="file" id="exampleInputFile">
    </div>


    <br>

  </form>

</div>


<div class="container">
  <button type="submit" class="btn btn-success btn-block">ADD</button>
  <button type=“reset” class="btn btn-danger btn-block">RESET</button>
</div>
</body>
</html>