<%--
  Created by IntelliJ IDEA.
  User: chenz
  Date: 9/2/2021
  Time: 11:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="beans.User"%>
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

</head>

<body>
// servel
<div class="container">
    <div><span class="time" id="time" ></span></div>
    <%
        User user = (User)session.getAttribute("user");
        String updated = request.getParameter("updated");
    %>
    <form class="form-signin" method="post" action="../java/Servlet/ForgotPasswordServlet">

        <h2 class="form-signin-heading">Enter email to reset your password</h2>
        <input id="inputId" class="form-control" type="text" placeholder="User id" name="id">

        <label for="inputVerificationCode" class="sr-only">Verification Code</label>
        <input type="verificationcode" id="inputVerificationCode" class="form-control" placeholder="Verification Code" required>

        <label for="inputPassword" class="sr-only">Password</label>
        <input id="inputPassword" type="verificationcode" class="form-control" placeholder="Card number" name="password">

        <label for="inputConfirmPassword" class="sr-only">Confirm password</label>
        <input type="confirmpassword" id="inputConfirmPassword" class="form-control" placeholder="Confirm password" required>

        <a href="">
            <button class="btn btn-lg btn-primary btn-block" type="submit" value="Find">Reset Password</button>
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
