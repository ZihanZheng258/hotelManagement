<%@ page import="java.util.ArrayList" %>
<%@ page import="beans.Order" %><%--
  Created by IntelliJ IDEA.
  User: yangk
  Date: 2021/8/30
  Time: 21:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<%ArrayList<Order> orders = (ArrayList<Order>)session.getAttribute("orders");%>
<head>
  <meta charset="UTF-8">
  <title>Order Record</title>
  <!-- 获得更好的响应式支持 -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- 引入bootstrap的核心css文件  -->
  <link rel="stylesheet" href="../utils/bootstrap/css/bootstrap.min.css">

</head>
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
    <div class="col-sm-4">
      <input type="text" class="form-control" placeholder="Search By CustomerID: ">
    </div>
    <div class="col-sm-4">
      <input type="text" class="form-control" placeholder="Search By OrderID: ">
    </div>
    <!--查找订单按键 管理员及超级管理员权限-->
    <div class="col-sm-2">
      <button class="btn btn-primary btn-md">Search</button><br>
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
      if(orders != null){
        System.out.println(orders.size());
        for (int i=0; i<orders.size(); i++ ){

    %>
    <tbody>
    <tr>
      <td><%=orders.get(i).getId()%></td>
      <td><%=orders.get(i).getUserID()%></td>
      <td><%=orders.get(i).getRoomID()%></td>
      <td><%=orders.get(i).getStart_time()%></td>
      <td><%=orders.get(i).getEnd_time()%></td>
      <td><%=orders.get(i).getAmount()%></td>
      <td><%=orders.get(i).getRemark()%></td>
      <td><%=orders.get(i).getStatus()%></td>
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
