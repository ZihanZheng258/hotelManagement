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

  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
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
  <title>Bootstrap 101 Template</title>

  <!-- Bootstrap -->
  <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background-color: #FF6767">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">陈总booking</a>

  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="../index.jsp">  Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"> <img src="../image/image1/house.svg" alt="Bootstrap" width="20"> Stays</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">  <img src="../image/image1/signpost-split.svg" alt="Bootstrap" width="20">Attractions</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">  <img src="../image/image1/car.svg" alt="Bootstrap" width="10" >Car rentals</a>
      </li>
    </ul>

    <div class="btn float-right">
      <li class="list-inline-item">
        <a class="btn btn-link" href="//网站"> <span class="glyphicon glyphicon-user"></span> Sign In</a>
      </li>
      <li class="list-inline-item">

        <a class="btn btn-success" href="//网站"> <img src="../image/image1/sign-out-alt.svg" alt="Bootstrap" width="20" >  Sign Up</a>
      </li>
    </div>
  </div>
</nav>

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
    <div class="container">

      <button type="submit" class="btn btn-success btn-block">ADD</button>

    </div>
    <!--关闭页面-->
  </form>

  <br>
  <form action="AddRoomRecord3" method="POST" enctype="multipart/form-data">

    <input type="file" name="file" />
    <input type="submit" value="Upload" />

  </form>

  <br>
  <div class="container">
  <a href="RoomRecord.jsp">
    <button type="submit" class="btn btn-danger btn-block">RESET</button>
  </a>
  </div>

</div>



</body>
</html>