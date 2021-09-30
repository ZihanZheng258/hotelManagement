<%@ page import="java.util.List" %>
<%@ page import="beans.Hotel" %><%--
  Created by IntelliJ IDEA.
  User: yangk
  Date: 2021/8/30
  Time: 20:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>show Page</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
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
    <link href="utils/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/chenziyong.css" rel="stylesheet">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
</head>
<body>
<%List<Hotel> hotel = (List<Hotel>)session.getAttribute("hotel"); %>
<table class="table table-bordered table-hover" >
    <thead>
    <tr>
        <td width="100px" style="font-weight: bold;font-size:20px">id</td>
        <td width="100px" style="font-weight: bold;font-size:20px">address</td>
        <td width="200px" style="font-weight: bold;font-size:20px">name</td>
        <td width="300px" style="font-weight: bold;font-size:20px">score</td>
        <td width="200px" style="font-weight: bold;font-size:20px">area</td>
        <td width="200px" style="font-weight: bold;font-size:20px">Type</td>
    </tr>
    </thead>
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
    <td width="100px" style="font-weight: bold;font-size:20px">  <%= hotel.get(i).getType()%>   </td>
        </tr>

<%
    }
    }
%>

    <a href="index.jsp">
    <button class="btn btn-success btn-block no-radius font-weight-bold">Home</button>
</a>
</table>
</body>
</html>
