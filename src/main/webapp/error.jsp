<%@ page import="java.util.List" %>
<%@ page import="beans.Hotel" %><%--
  Created by IntelliJ IDEA.
  User: yangk
  Date: 2021/8/30
  Time: 20:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Servlet.HomeServlet" %>
<html>
<head>
    <title>show Page</title>
</head>
<body>
<%List<Hotel> hotel = (List<Hotel>)session.getAttribute("hotel"); %>
<table>
    <thead>
    <tr>
        <td width="100px" style="font-weight: bold;font-size:20px">id</td>
        <td width="100px" style="font-weight: bold;font-size:20px">金额</td>
        <td width="200px" style="font-weight: bold;font-size:20px">类型</td>
        <td width="300px" style="font-weight: bold;font-size:20px">记录时间</td>
        <td width="200px" style="font-weight: bold;font-size:20px">操作</td>
    </tr>
    </thead>
    <form method="get" action="index">
<%
    if(hotel != null){
        System.out.println(hotel.size());
        for (int i =0;i<hotel.size();i++){  %>
    <tr>
    <td width="100px" style="font-weight: bold;font-size:20px">  <%= hotel.get(i).getId()%>   </td>
    <td width="100px" style="font-weight: bold;font-size:20px">  <%= hotel.get(i).getAddress()%>   </td>
    <td width="100px" style="font-weight: bold;font-size:20px">  <%= hotel.get(i).getName()%>   </td>
    <td width="100px" style="font-weight: bold;font-size:20px">  <%= hotel.get(i).getScore()%>   </td>
    <td width="100px" style="font-weight: bold;font-size:20px">  <%= hotel.get(i).getArea()%>   </td>
        </tr>
<%
    }
    }
%>
    </form>
</table>
</body>
</html>
