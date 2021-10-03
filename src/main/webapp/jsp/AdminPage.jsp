<%--
  Created by IntelliJ IDEA.
  User: chenz
  Date: 9/6/2021
  Time: 2:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" href="../../favicon.ico">

  <title>Signin Template for Bootstrap</title>

  <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">

  <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

  <link href="signin.css" rel="stylesheet">

  <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

  <link href="css/chenziyong.css" rel="stylesheet">

  <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">

  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

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
  <a class="navbar-brand" href="#">陈总booking</a>

  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="../index.jsp">  Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"> <img src="../image/image1/house.svg" alt="Bootstrap" width="20"> Stays</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">  <img src="../image/image1/signpost-split.svg" alt="Bootstrap" width="20">Attractions</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">  <img src="../image/image1/car.svg" alt="Bootstrap" width="10" >Car rentals</a>
      </li>
    </ul>

    <div class="btn float-right">
      <li class="list-inline-item">
        <a class="btn btn-link" href="//网站"> <span class="glyphicon glyphicon-user"></span> Sign In</a>
      </li>
      <li class="list-inline-item">

        <a class="btn btn-success" href="//网站"> <img src="../image/image1/sign-out-alt.svg" alt="Bootstrap" width="20" >  Sign Up</a>
      </li>
    </div>
  </div>
</nav>


<div class="container">

  <h1 class="display-4 mt-10 font-weight-bold text-shadow">Admin page</h1>
  <a href="AddHotelRecord.jsp">
    <button class="btn btn-lg btn-primary btn-block" type="submit">ADD HOTEL RECORD</button>
  </a>
  <hr>
  <a href="AddOrderRecord.jsp">
    <button class="btn btn-lg btn-primary btn-block" type="submit">ADD ORDER RECORD</button>
  </a>
  <hr>
  <a href="AddRoomRecord.jsp">
    <button class="btn btn-lg btn-primary btn-block" type="submit">ADD ROOM RECORD</button>
  </a>
  <hr>
  <a href="CreateAdmin.jsp">
    <button class="btn btn-lg btn-primary btn-block" type="submit">CREATE ADMIN</button>
  </a>
  <form action="Admin">
  <hr>
  <a href="HotelRecord.jsp">
    <button class="btn btn-lg btn-primary btn-block" type="submit" >HOTEL RECORD</button>
  </a>
  </form>
  <hr>

  <a href="OrderRecord.jsp">
    <button class="btn btn-lg btn-primary btn-block" type="submit">ORDER RECORD</button>
  </a>
  <form action="AdminPage">
  <hr>
  <a href="RoomRecord.jsp">
    <button class="btn btn-lg btn-primary btn-block" type="submit">ROOM RECORD</button>
  </a>
  </form>
  <hr>
  <a href="ManageUsers.jsp">
    <button class="btn btn-lg btn-primary btn-block" type="submit">ManageUsers</button>
  </a>
  <hr>
  <a href="UserPage.jsp">
    <button class="btn btn-lg btn-primary btn-block" type="submit">MyAccount</button>
  </a>

  </form>

</div>


<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<footer class="footer">
  <div class="btn footer-central">
    <li class="list-inline-item">
      <a class="btn btn-link" href="//网站"> <span class="glyphicon glyphicon-user"></span> Sign In</a>
    </li>
    <li class="list-inline-item">
      <a class="btn btn-link" href="//网站"> <span class="glyphicon glyphicon-user"></span> Sign In</a>
    </li>
    <li class="list-inline-item">
      <a class="btn btn-link" href="//网站"> <span class="glyphicon glyphicon-user"></span> Sign In</a>
    </li>
    <li class="list-inline-item">
      <a class="btn btn-link" href="//网站"> <span class="glyphicon glyphicon-user"></span> Sign In</a>
    </li>
  </div>
</footer>
</body>
</html>
