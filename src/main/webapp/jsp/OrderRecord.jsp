<%@ page import="java.util.List" %>
<%@ page import="beans.Order" %><%--
  Created by IntelliJ IDEA.
  User: yangk
  Date: 2021/8/30
  Time: 21:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<%List<Order> orderList = (List<Order>)session.getAttribute("orderList");%>
<head>
  <meta charset="UTF-8">
  <title>Order Record</title>
  <!-- 获得更好的响应式支持 -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- 引入bootstrap的核心css文件  -->
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

  <!-- Bootstrap -->
  <link href="../utils/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="../css/max/ManageUserPage.css">
  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

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

<!--创建容器-->
<div class="container" >
  <div class="row">
    <div class="col-sm-2">
      <button class="btn btn-link">logout</button>
    </div>
    <div class="col-sm-8"><h1 class="text-center">Order List <small> HMS-V1.0</small></h1></div>
    <div class="col-sm-2"><h3 class="text-center" style="margin-top: 26px">Welcome：xxx</h3></div>
  </div>
  <!--创建搜索框 按键 以及添加按钮-->

    <form  action="SearchOrderRecordByCID">
      <div class="col-sm-5">
      <input type="text" class="form-control" name="userID"  placeholder="Search By CustomerID: ">
      </div>
      <div class="col-sm-2">
      <button class="btn btn-primary btn-md" type="submit">Search</button>
    </div>
    </form>

    <!--添加订单按钮 超级管理员权限 按下按键跳转到AddOrder.html表单-->


  <br>

  <!--创建表格-->
  <table class="table table-bordered table-hover" style="background-color: #FF6767" >
    <tr style="background-color: #FF3D68">
      <th>Order-ID</th>
      <th>Customer-ID</th>
      <th>Room-ID</th>
      <th>Start Time</th>
      <th>End Time</th>
      <th>Amount</th>
      <th>Remark</th>
      <th>Status</th>
      <th>Edit/Delete</th>
    </tr>
    <%
      if(orderList != null){
        System.out.println(orderList.size());
        for (int i=0; i<orderList.size(); i++ ){
          Order order = (Order) orderList.get(i);

    %>
    <tbody>
    <tr>
      <td><%=order.getId()%></td>
      <td><%=order.getUserID()%></td>
      <td><%=order.getRoomID()%></td>
      <td><%=order.getStart_time()%></td>
      <td><%=order.getEnd_time()%></td>
      <td><%=order.getAmount()%></td>
      <td><%=order.getRemark()%></td>
      <td><%=order.getStatus()%></td>
      <!--添加删改按钮-->
      <td>
        <!--添加编辑按钮 超级管理员及管理员权限-->
        <a href="AdminPage.jsp">
          <button class="btn btn-info btn-sm">Edit</button>
        </a>
        <!--添加删除按钮 超级管理员权限-->
        <form action="OrderRecord" method="get">
          <input type="hidden" name="orderid" value=<%=order.getId()%>>
          <input type="submit" value="Delete">

        </form>
      </td>
    </tr>

    <%     }
    }
    %>

      <td>
        <a href="AdminPage.jsp">
          <button class="btn btn-info btn-sm">Edit</button>
        </a>
        <a href="AdminPage.jsp">
          <button class="btn btn-danger btn-sm">Delete</button>
        </a>
      </td>
    </tr>
    </tbody>
  </table>

</div>
<body style="background-color: #FAAD80">

</body>
</html>
