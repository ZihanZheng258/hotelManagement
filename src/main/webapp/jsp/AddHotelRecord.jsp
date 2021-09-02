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
  <title>Add Hotel Record</title>
  <!-- 获得更好的响应式支持 -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- 引入bootstrap的核心css文件  -->
  <link rel="stylesheet" href="../utils/bootstrap/css/bootstrap.min.css">
</head>
<body style="background-color: #FF6767">
<div class="container">

  <!--副标题 内容站容器内容的80%大小-->
  <h1 class="text-center">Add New Hotel <small>Super Administrator Authority</small></h1>

  <!--录入旅店表单-->
  <form action="AddHotelServlet" method="post">
    <div class="form-group">
      <label for="InputHotelID">Hotel ID</label>
      <input class="form-control" id="InputHotelID" placeholder="Please Enter Hotel ID">
    </div>
    <div class="form-group">
      <label for="InputHotelName">Hotel Name</label>
      <input class="form-control" id="InputHotelName" placeholder="Please Enter Hotel Name">
    </div>
    <div class="form-group">
      <label for="InputHotelAddress">Hotel Address</label>
      <input class="form-control" id="InputHotelAddress" placeholder="Please Enter Hotel Name">
    </div>
    <div class="form-group">
      <label for="InputArea">FloorArea(hectare)</label>
      <input class="form-control" id="InputArea" placeholder="Please Enter Floor Area (hectare)">
    </div>
    <div class="form-group">
      <label for="InputHotelType">Hotel Type</label>
      <input class="form-control" id="InputHotelType" placeholder="Please Enter Hotel Type">
    </div>
    <div class="form-group">
      <label for="InputStars">Stars</label>
      <input class="form-control" id="InputStars" placeholder="Please Enter Stars">
    </div>
    <div class="form-group">
      <label for="InputScore">Score</label>
      <input class="form-control" id="InputScore" placeholder="Please Enter Score">
    </div>
    <div class="form-group">
      <label for="InputIntroduction">Introduction</label>
      <textarea class="form-control" id="InputIntroduction" placeholder="Please Enter Introduction" rows="4"></textarea>
    </div>
    <br>
    <div class="form-group">
      <label for="exampleInputFile">Upload Hotel image</label>
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