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
<%List<Order> orderListByCID = (List<Order>)session.getAttribute("orderListByCID");%>
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
  <div class="row">
    <form class="form-horizontal" action="SearchOrderRecordByCID">
      <input type="text" class="form-control" placeholder="Search By CustomerID: ">
      <button class="btn btn-primary btn-md">Search</button>
    </form>
    <div class="col-sm-2"></div>
    <form class="form-horizontal">
      <input type="text" class="form-control" placeholder="Search By OrderID: ">
    <div class="col-sm-1 form-group">
      <button class="btn btn-primary btn-md">Search</button>
    </div>
    </form>
    <!--查找订单按键 管理员及超级管理员权限-->
    <div class="col-sm-2">
      <button class="btn btn-primary btn-md">Reset</button><br>
    </div>
    <!--添加订单按钮 超级管理员权限 按下按键跳转到AddOrder.html表单-->
    <div class="col-sm-2">
      <button class="btn btn-success btn-md"><a href="AddOrderRecord.jsp"> Add Order</a></button>
    </div>

  </div>
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
      if(orderListByCID != null){
        System.out.println(orderListByCID.size());
        for (int i=0; i<orderListByCID.size(); i++ ){
          Order order1 = (Order) orderListByCID.get(i);

    %>
    <tbody>
    <tr>
      <td><%=order1.getId()%></td>
      <td><%=order1.getUserID()%></td>
      <td><%=order1.getRoomID()%></td>
      <td><%=order1.getStart_time()%></td>
      <td><%=order1.getEnd_time()%></td>
      <td><%=order1.getAmount()%></td>
      <td><%=order1.getRemark()%></td>
      <td><%=order1.getStatus()%></td>
      <!--添加删改按钮-->
      <td>
        <a href="AdminPage.jsp">
        <button class="btn btn-info btn-sm">Edit</button>
        </a>
          <a href="AdminPage.jsp">
        <button class="btn btn-danger btn-sm">Delete</button>
          </a>
      </td>
    </tr>

    <%     }
    }
    %>
    <tr>
      <td>o-0000001</td>
      <td>u-0000001</td>
      <td>r-0000001</td>
      <td>2021/4/3</td>
      <td>2021/4/9</td>
      <td>1000</td>
      <td>good</td>
      <td>FINISH</td>
      <!--添加删改按钮-->
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
