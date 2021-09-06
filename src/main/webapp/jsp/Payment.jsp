<%--
  Created by IntelliJ IDEA.
  User: jingl
  Date: 2021/9/4
  Time: 20:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Payment</title>
    <link rel="stylesheet" href="../utils/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/jing.css">
    <script src="../utils/jquery-3.6.0.min.js"></script>
    <script src="../utils/bootstrap/js/bootstrap.js"></script>
</head>
<body>
<header>
    <h2><b>Pay your money</b></h2>
    <div class="container">

        <form>
            <div class="form-group">
                <label for="BSBNumber">BSB Number</label>
                <input class="form-control" id="BSBNumber" placeholder="Please Input Your BSB">
            </div>
            <div class="form-group">
                <label for="AccountName">Account Name</label>
                <input class="form-control" id="AccountName" placeholder="Please Input your Account Name">
            </div>
            <div class="form-group">
                <label for="AccountNum">Account Number</label>
                <input class="form-control" id="AccountNum" placeholder="Please Input your Account Number">
            </div>
            <div class="form-group">
                <label for="Amount">Amount</label>
                <input class="form-control" id="Amount" placeholder="Please Input your Amount">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea class="form-control" id="description" placeholder="Please Write your description" rows="3"></textarea>
            </div>

        </form>

    </div>
    <br>

    <div class="container">
        <a href="AdminPage.jsp">
        <button type="submit" class="btn btn-warning btn-block">Pay</button>
        </a>>
            <a href="AdminPage.jsp">
        <button class="btn btn-info btn-block">Cancel</button>
            </a>>
    </div>
</header>
</body>
</html>