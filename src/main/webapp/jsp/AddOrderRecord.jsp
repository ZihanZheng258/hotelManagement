<%--
  Created by IntelliJ IDEA.
  User: yangk
  Date: 2021/8/30
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BootStrap的页面模板</title>
    <!-- 获得更好的响应式支持 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 引入bootstrap的核心css文件  -->
    <link rel="stylesheet" href="../utils/bootstrap/css/bootstrap.min.css">
</head>
<body style="background-color: #FF6767">
<div class="container">

    <!--副标题 内容站容器内容的80%大小-->
    <h1 class="text-center">Add New Order <small>Junior/Super Administrator Authority</small></h1>

    <!--创建表单-->
    <form>
        <div class="form-group">
            <label for="InputOrderID">Order-ID</label>
            <input class="form-control" id="InputOrderID" placeholder="Please Enter Order-ID">
        </div>
        <div class="form-group">
            <label for="InputCustomerID">Customer-ID</label>
            <input class="form-control" id="InputCustomerID" placeholder="Please Enter Customer-ID">
        </div>
        <div class="form-group">
            <label for="InputRoomID">Room-ID</label>
            <input class="form-control" id="InputRoomID" placeholder="Please Enter Room-ID">
        </div>
        <div class="form-group">
            <label for="InputAmount">Amount</label>
            <input class="form-control" id="InputAmount" placeholder="Please Enter Amount">
        </div>
        <div class="form-group">
            <label for="InputStatus">Status</label>
            <input class="form-control" id="InputStatus" placeholder="Please Enter Status">
        </div>

        <div class="form-group">
            <label for="InputRemark">Remark</label>
            <textarea class="form-control" id="InputRemark" placeholder="Please Enter Remark" rows="3"></textarea>
        </div>
        <br>

        <div class="col-sm-4">
            <label for="InputStartTime">Start Time</label>
            <input type="date" class="form-control" id="InputStartTime">
        </div>
        <div class="col-sm-1"></div>
        <div class="col-sm-4">
            <label for="InputEndTime">End Time</label>
            <input type="date" class="form-control" id="InputEndTime">
        </div>
        <div class="col-sm-3"></div>

        <br>

    </form>

</div>
<br>

<div class="container">
    <!--添加按钮 将以上所有信息添加并显示到表单-->
    <button type="submit" class="btn btn-success btn-block">ADD</button>
    <!--关闭页面-->
    <button class="btn btn-danger btn-block">CANCEL</button>
</div>
</body>
</html>
