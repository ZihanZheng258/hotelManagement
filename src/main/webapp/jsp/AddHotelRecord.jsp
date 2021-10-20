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

  <script src="js/jquery-3.2.1.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</head>
<body style="background-color: #FF6767">
<div class="container">

  <!--副标题 内容站容器内容的80%大小-->
  <h1 class="text-center">Add New Hotel <small>Super Administrator Authority</small></h1>

  <!--录入旅店表单-->
  <form action="AddHotelRecord">
    <div class="form-group">
      <label for="InputHotelID">Hotel ID</label>
      <input class="form-control" id="InputHotelID" name="hotelID" value="" placeholder="Please Enter Hotel ID">
    </div>
    <div class="form-group">
      <label for="InputHotelName">Hotel Name</label>
      <input class="form-control" id="InputHotelName" name="hotelName" value="" placeholder="Please Enter Hotel Name">
    </div>
    <div class="form-group">
      <label for="InputHotelAddress">Hotel Address</label>
      <input class="form-control" id="InputHotelAddress" name="hotelAddress" value="" placeholder="Please Enter Hotel Name">
    </div>
    <div class="form-group">
      <label for="InputArea">FloorArea(hectare)</label>
      <input class="form-control" id="InputArea" name="hotelArea" value="" placeholder="Please Enter Floor Area (hectare)">
    </div>
    <div class="form-group">
      <label for="InputHotelType">Hotel Type</label>
      <input class="form-control" id="InputHotelType" name="hotelType" value="" placeholder="Please Enter Hotel Type">
    </div>
    <div class="form-group">
      <label for="InputStars">Stars</label>
      <input class="form-control" id="InputStars" name="hotelStar" value="" placeholder="Please Enter Stars">
    </div>
    <div class="form-group">
      <label for="InputScore">Score</label>
      <input class="form-control" id="InputScore" name="hotelScore" value="" placeholder="Please Enter Score">
    </div>
    <div class="form-group">
      <label for="InputIntroduction">Introduction</label>
      <textarea class="form-control" id="InputIntroduction" name="hotelIntroduction"  placeholder="Please Enter Introduction" rows="4"></textarea>
    </div>
    <br>
<%--    <div class="form-group">--%>
<%--      <label for="exampleInputFile">Upload Hotel image</label>--%>
<%--      <input type="file" id="exampleInputFile" name="hotelPicture">--%>
<%--    </div>--%>
<%--    <div class="form-inline">--%>
<%--      <div class="form-group">--%>
<%--        <input type="file" name="files[]" id="js-upload-files" multiple>--%>
<%--      </div>--%>
<%--      <button type="submit" class="btn btn-sm btn-primary" id="js-upload-submit">上传</button>--%>
<%--    </div>--%>

    <br>
    <div class="container">

      <button type="submit" class="btn btn-success btn-block">ADD</button>


    </div>

  </form>
  <form action="AddHotelRecord3" method="POST" enctype="multipart/form-data">
<%--    <div class="form-group">--%>
<%--      <label for="exampleInputFile">Upload Hotel image</label>--%>
<%--      <input type="file" id="exampleInputFile" name="hotelPicture">--%>
<%--    </div>--%>

    <input type="file" name="file" />
    <input type="submit" value="Upload" />

<%--    <div class="file-loading">--%>
<%--      <input id="input-703" name="kartik-input-703[]" type="file" multiple>--%>
<%--    </div>--%>
  </form>




  <a href="HotelRecord.jsp">
    <button class="btn btn-danger btn-block">RESET</button>
  </a>

</div>
<%--<script>--%>
<%--  $(document).ready(function() {--%>
<%--    $("#input-703").fileinput({--%>
<%--      uploadUrl: "/image/House",--%>
<%--      minFileCount: 1,--%>
<%--      maxFileCount: 5,--%>
<%--      uploadExtraData: function(previewId, index) {--%>
<%--        return {key: index};--%>
<%--      },--%>
<%--      overwriteInitial: false,--%>
<%--      initialPreviewAsData: true // identify if you are sending preview data only and not the markup--%>
<%--    });--%>
<%--  });--%>
<%--</script>--%>


</body>
</html>