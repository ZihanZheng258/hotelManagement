<%--
  Created by IntelliJ IDEA.
  User: jingl
  Date: 2021/9/4
  Time: 20:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="beans.Hotel" %>
<%@ page import="java.util.List" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Cabin</title>
    <link rel="stylesheet" href="utils/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/jing.css">
    <link rel="stylesheet" href="http://localhost:8080/hotelManagement_war/../../css/jing.css">
    <script src="utils/jquery-3.6.0.min.js"></script>
    <script src="utils/bootstrap/js/bootstrap.js"></script>

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
    <link href="css/chenziyong.css" rel="stylesheet">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
</head>
<body>
<%List<Hotel> hotel = (List<Hotel>)session.getAttribute("hotel"); %>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">陈总booking</a>

    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="#">  Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"> <img src="image/image1/house.svg" alt="Bootstrap" width="20"> Stays</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">  <img src="image/image1/signpost-split.svg" alt="Bootstrap" width="20">Attractions</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">  <img src="image/image1/car.svg" alt="Bootstrap" width="10" >Car rentals</a>
            </li>
        </ul>

        <div class="btn float-right">
            <li class="list-inline-item">
                <a class="btn btn-link" href="//网站"> <span class="glyphicon glyphicon-user"></span> Sign In</a>
            </li>
            <li class="list-inline-item">

                <a class="btn btn-success" href="//网站"> <img src="image/image1/sign-out-alt.svg" alt="Bootstrap" width="20" >  Sign Up</a>
            </li>
        </div>
    </div>
</nav>

<header class="header">
    <%
        if(hotel.get(0).getType() != null){
        String title = hotel.get(0).getType();
        %>
    <h2><b><%=title%> Reservation</b></h2>
    <%
    }else {
        String title = "";
    %>
    <h2><b><%=title%> Reservation</b></h2>
    <%
    }
    %>
</header>
<div class="container hotel-list">
    <div class="row">
        <%
            if(hotel != null){
                for (int i =0;i<hotel.size();i++){  %>
        <div class="col-md-6">
            <div class="hotel-frame">
                <div class="hotel-info">
                    <div class="hotel-left">
                        <h3 class="hotel-name"><%= hotel.get(i).getName()%></h3>
                        <p class="hotel-nation"><%= hotel.get(i).getAddress()%></p>
                        <img class="hotel-pic" src="image/image1/cabinpicture2.jpg" alt="hotel pic">

                        <a href="http://localhost:8080/hotelManagement_war/jsp/Cottagedetail2.jsp" >
                        <p class="hotel-detail-link">
                            <b>View more information</b>
                        </p>
                        </a>

                    </div>
                    <div class="/hotelManagement_war/jsp/hotel-right">
                        <i class="hotel-rate"><%= hotel.get(i).getScore()%></i>
                        <i class="hotel-price">250-500$/night</i>
                    </div>
                </div>
            </div>
        </div>
        <%
                }
            }
        %>
    </div>
</div>
<br><br>
<div class="container">

</div>

<footer class="footer">
    ...页脚内容...
    <div class="btn footer-central">
        <li class="list-inline-item">
            <a class="btn btn-link" href="//网站"> <span class="glyphicon glyphicon-user"></span> Sign In</a>
        </li>
    </div>
</footer>
</body>
</html>