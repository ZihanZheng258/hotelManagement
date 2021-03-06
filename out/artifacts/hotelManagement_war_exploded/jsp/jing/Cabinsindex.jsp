<%--
  Created by IntelliJ IDEA.
  User: jingl
  Date: 2021/9/4
  Time: 20:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Cabin</title>
    <link rel="stylesheet" href="../../utils/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/jing.css">
    <script src="../../utils/jquery-3.6.0.min.js"></script>
    <script src="../../utils/bootstrap/js/bootstrap.js"></script>

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

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">??????booking</a>

    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="#">  Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"> <img src="../../image/image1/house.svg" alt="Bootstrap" width="20"> Stays</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">  <img src="../../image/image1/signpost-split.svg" alt="Bootstrap" width="20">Attractions</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">  <img src="../../image/image1/car.svg" alt="Bootstrap" width="10" >Car rentals</a>
            </li>
        </ul>

        <div class="btn float-right">
            <li class="list-inline-item">
                <a class="btn btn-link" href="//??????"> <span class="glyphicon glyphicon-user"></span> Sign In</a>
            </li>
            <li class="list-inline-item">

                <a class="btn btn-success" href="//??????"> <img src="../../image/image1/sign-out-alt.svg" alt="Bootstrap" width="20" >  Sign Up</a>
            </li>
        </div>
    </div>
</nav>

<header class="header">
    <h2><b>Cabin Reservation</b></h2>
</header>
<div class="container hotel-list">
    <div class="row">
        <div class="col-md-6">
            <div class="hotel-frame">
                <div class="hotel-info">
                    <div class="hotel-left">
                        <h3 class="hotel-name">Wadorf Cabin</h3>
                        <p class="hotel-nation">United States</p>
                        <img class="hotel-pic" src="../../image/image1/cabinpicture1.jpg" alt="hotel pic">
                        <p class="hotel-detail-link"><a href="Cabinsdetail1.jsp" target="_blank"><b>View more information</b></a></p>
                    </div>
                    <div class="hotel-right">
                        <i class="hotel-rate">8.7</i>
                        <i class="hotel-price">200-400$/night</i>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="hotel-frame">
                <div class="hotel-info">
                    <div class="hotel-left">
                        <h3 class="hotel-name">Aisha Cabin</h3>
                        <p class="hotel-nation">Morzinne </p>
                        <img class="hotel-pic" src="../../image/image1/cabinpicture2.jpg" alt="hotel pic">
                        <p class="hotel-detail-link"><a href="Cabinsdetail2.jsp" target="_blank"><b>View more information</b></a></p>
                    </div>
                    <div class="hotel-right">
                        <i class="hotel-rate">8.8</i>
                        <i class="hotel-price">250-500$/night</i>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<br><br>
<div class="container">

</div>

<footer class="footer">
    ...????????????...
    <div class="btn footer-central">
        <li class="list-inline-item">
            <a class="btn btn-link" href="//??????"> <span class="glyphicon glyphicon-user"></span> Sign In</a>
        </li>
    </div>
</footer>
</body>
</html>