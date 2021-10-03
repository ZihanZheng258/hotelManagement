<%--
  Created by IntelliJ IDEA.
  User: DKpoosh
  Date: 4/10/2021
  Time: 12:55 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="beans.Hotel" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%Hotel hotel = (Hotel) session.getAttribute("editHotel");%>
<html>
<head>
    <title>Edit Hotel</title>
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

    <!-- Bootstrap -->
    <link href="../utils/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/max/MyAccountPage.css" rel="stylesheet">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
</head>
<body>
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

    <!--Dash Board-->
    </p>
    <div class="dashboard">
        <form action="EditHotelRecord">
            <h1 class="title">Edit Hotel <span class="subtitle"> Edit hotel from records</span> </h1> <div id="AccountInfo" class="majorRow">
            <h2> Hotel Info </h2>
            <ul class="infolist">
                <li><span class="label">Hotel ID:</span><%=hotel.getId()%></li>
                <li><span class="label">Hotel Name:</span><input type="text" name="Name" placeholder=<%=hotel.getName()%>></li>
                <li><span class="label">Hotel Address:</span><input type="text" name="Address" placeholder=<%=hotel.getAddress()%>></li>
                <li><span class="label">Hotel Type:</span><input type="text" name="Type" placeholder=<%=hotel.getType()%>></li>
                <li><span class="label">Hotel Area:</span><input type="text" name="Area" placeholder=<%=hotel.getArea()%>></li>
                <li><span class="label">Hotel Star:</span><input type="text" name="Star" placeholder=<%=hotel.getStar()%>></li>
                <li><span class="label">Hotel Score:</span><input type="text" name="Score" placeholder=<%=hotel.getScore()%>></li>
                <li><span class="label">Hotel Introduction:</span><input type="text" name="Introduction" placeholder=<%=hotel.getIntroduction()%>></li>
                <li><span class="label">Hotel Picture:</span><input type="text" name="Picture" placeholder=<%=hotel.getpicture()%>></li>
            </ul> </div>
            <li class="list-inline-item">
                <button class="btn btn-link" type="submit" value="Find"> <span class="bi bi-pencil-square"></span>Done</button>
            </li>
        </form>
    </div>
</body>
</html>
