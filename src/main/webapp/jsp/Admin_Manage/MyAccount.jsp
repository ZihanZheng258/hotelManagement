<%--
  Created by IntelliJ IDEA.
  User: DKpoosh
  Date: 2/09/2021
  Time: 9:53 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>My Account</title>
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
  <link href="../../utils/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../../css/max/MyAccountPage.css" rel="stylesheet">
  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
</head>
<body>
  <!--Header navigation-->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">陈总booking</a>

  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#">  Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"> <img src="../../image/svg/house.svg" alt="Bootstrap" width="20"> Stays</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">  <img src="../../image/svg/signpost-split.svg" alt="Bootstrap" width="20">Attractions</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">  <img src="../../image/svg/car.svg" alt="Bootstrap" width="20" >Car rentals</a>
      </li>
    </ul>

    <div class="btn float-right">
      <li class="list-inline-item">
        <a class="btn btn-link" href="//网站"> <span class="glyphicon glyphicon-user"></span> Sign In</a>
      </li>
      <li class="list-inline-item">
        <a class="btn btn-success" href="//网站"> <img src="../../image/svg/sign-out-alt.svg" alt="Bootstrap" width="20" >  Sign Up</a>
      </li>
    </div>
  </div>
</nav>

  <!--Dash Board-->
  </p>
  <div class="dashboard">
    <h1 class="title">Dashboard <span class="subtitle">A summary of all recent activity on your account.</span> </h1> <div id="AccountInfo" class="majorRow">
    <h2> Account Info </h2>
    <ul class="infolist">
      <li><span class="label">Registered Email:</span>poosh0803@gmail.com</li>
      <li><span class="label">Account Name:</span>Jui-Ching Wang</li>
      <li><span class="label">Account Type:</span>HOME USER</li>
      <li><span class="label">Password</span>[HIDE]HOME USER[ME]</li>
      <li><span class="label">Phone Number:</span>0415102723</li>
      <li><span class="label">Balance</span>$1,000,000 AUD</li>
      <li><span class="label">User Start Time:</span>01/01/2021</li>
      <li><span class="label">User End Time:</span>01/02/2021</li>
    </ul> </div>

    <li class="list-inline-item">
      <a class="btn btn-link" href="//网站"> <span class="bi bi-pencil-square"></span>Edit</a>
    </li>

  </div>


</body>
</html>
