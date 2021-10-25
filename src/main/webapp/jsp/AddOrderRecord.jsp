<%@ page import="beans.Remark" %><%--
  Created by IntelliJ IDEA.
  User: yangk
  Date: 2021/8/30
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<form action="AddOrderRecord2">
    <%Remark remark = (Remark)session.getAttribute("remark");%>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>AddOrder</title>
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
        <form action="Cottagedetail3" method="post">
            <%--        <div class="form-group">--%>
            <%--            <label for="InputOrderID">Order-ID</label>--%>
            <%--            <input class="form-control" id="InputOrderID"  name="orderID" value="" placeholder="Please Enter Order-ID">--%>
            <%--        </div>--%>
            <div class="form-group">
                <label for="InputCustomerID">Customer-ID</label>
                <input class="form-control" id="InputCustomerID" name="userID" value="" placeholder="Enter Customer-ID">
            </div>
            <div class="form-group">

                <label for="InputRoomID">Room-ID</label>
                <input  type="text"  id="InputRoomID" name="roomID" value="<%=remark.getRoomID()%>" readonly>
            </div>
            <div class="form-group">
                <label for="InputAmount">Amount</label>
                <input class="form-control" id="InputAmount" name="amount" value="" placeholder="Please Enter Amount">


            <div class="col-sm-4">
                <label for="InputStartTime">Start Time</label>
                <input type="date" class="form-control" id="InputStartTime" name="sTime" value="" >
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-4">
                <label for="InputEndTime">End Time</label>
                <input type="date" class="form-control" id="InputEndTime" name="eTime" value="">
            </div>
            <div class="col-sm-3"></div>

            <br>
            <div class="container">
                <!--添加按钮 将以上所有信息添加并显示到表单-->


                <td>

                    <input type="submit" value="Order now">
                </td>
        </form>

        <!--关闭页面-->
        <a href="AdminPage.jsp">
            <button class="btn btn-danger btn-block">CANCEL</button>
        </a>
    </div>

</form>

</div>
<br>


</body>
</html>
