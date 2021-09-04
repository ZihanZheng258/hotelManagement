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
    <title>Wadorf Cabin</title>
    <link rel="stylesheet" href="../utils/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/jing.css">
    <script src="../utils/jquery-3.6.0.min.js"></script>
    <script src="../utils/bootstrap/js/bootstrap.js"></script>

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
                <a class="nav-link" href="#">  Home <span class="sr-only">(current)</span></a>
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


<header>
    <h2><b>Wadorf Cabin</b></h2>
    <hr>
    <div class="container">
        <img src="../image/image1/cabinspicture3.jpg" class="hotel-detail-image" alt="hotel image detail">
        <img src="../image/image1/cabinspicture5.jpg" class="hotel-detail-image" alt="hotel image detail">
    </div>
    <div class="hotel-description container">
        <p>Waldorf cabin hotel is located in a valley of Chamonix Blanc, only three kilometers away from the ski resort. The house has a living room and a semi open kitchen.</p>
        <p>The cabin hotel also offers free WiFi and a hot bath in the house</p>
        <p>If guests like to play near the wooden house, they can have barbecue activities with relatives, friends or lovers during their stay or walk between the mountains</p>
        <p>The hotel will also provide ski equipment service if in winter</p>
    </div>
    <div class="hotel-service container text-warning">
        <h5>Popular services:</h5>
        <ol>
            <li>Free WIFI</li>
            <li>Barbecue facilities</li>
            <li>Free parking</li>
            <li>skiing</li>
            <li>Accessibility</li>
        </ol>
    </div>
    <div class="hotel-room container">
        <h3>Room:</h3>
        <table class="table">
            <thead>
            <tr>
                <th>Room type</th>
                <th>available</th>
                <th>Price/Night</th>
                <th>number</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <tr class="text-info">
                <td>
                    <p>Small wooden house</p>
                    <p>Guest room facilities:</p>
                    <p>Room area: 67 square meters</p>
                    <p>Bedroom 1: 1 king size double bed: 2.2m x 2m</p>
                    <p>Free WIFI<br/>
                        Independent shower and bathroom,<br/>
                        Carpet, heating<br/>
                        Semi open kitchen:<br/>
                        Refrigerator, microwave oven, electric kettle<br/>
                        Wardrobe / wardrobe, air conditioner, TV<br/>
                        Telephone, bedding, sheets, bed sack</p>
                </td>
                <td>
                    <p>One/Double <br/> occupancy</p>
                </td>
                <td>
                    <p>200</p>
                </td>
                <td>
                    <p>5/10</p>
                </td>
                <td>
                    <a class="btn btn-primary" href="Payment.jsp" role="button">Book now</a>
                </td>
            </tr>
            <tr class="text-info">
                <td>
                    <p>Two bedroom cabin</p>
                    <p>Guest room facilities:</p>
                    <p>Room area: 70 square meters</p>
                    <p>Bedroom 1: 2 single beds: 2.2m x 2m</p>
                    <p>Bedroom 2: 2 single beds: 1.8m x 2m</p>
                    <p>Free WiFi <br/>
                        Independent shower and bathroom,living room<br/>
                        Carpet, heating,sofa<br/>
                        Fully open kitchen:<br/>
                        Refrigerator, microwave oven, electric kettle,roaster<br/>
                        Wardrobe / wardrobe, air conditioner, TV<br/>
                        Telephone, bedding, sheets, bed sack</p>
                </td>
                <td>
                    <p>Four <br/> occupancy</p>
                </td>
                <td>
                    <p>300</p>
                </td>
                <td>
                    <p>2/10</p>
                </td>
                <td>
                    <a class="btn btn-primary" href="Payment.jsp" role="button">Book now</a>
                </td>
            </tr>
            <tr class="text-info">
                <td>
                    <p>Triple bedroom cabin</p>
                    <p>Guest room facilities:</p>
                    <p>Room area: 85 square meters</p>
                    <p>Bedroom 1: 1 Queen bed: 1.8m x 2m,</p>
                    <p>Bedroom 2: 2 single beds: 1.8m x 2m</p>
                    <p>Bedroom 3: 1 single bed: 1.5m x 1.8m</p>
                    <p>Free WiFi <br/>
                        Independent shower and bathroom,living room<br/>
                        Carpet, heating,sofa<br/>
                        Fully open kitchen:<br/>
                        Refrigerator, microwave oven, electric kettle,roaster<br/>
                        Wardrobe / wardrobe, air conditioner, TV<br/>
                        Telephone, bedding, sheets, bed sack</p>
                </td>
                <td>
                    <p> Five<br/> occupancy</p>
                </td>
                <td>
                    <p>400</p>
                </td>
                <td>
                    <p>3/10</p>
                </td>
                <td>
                    <a class="btn btn-primary" href="Payment.jsp" role="button">Book now</a>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
    <hr>
    <div class="hotel-comment">
        <h4>Customer comments:</h4>
        <p><i class="rate">8.7</i> Great</p>
        <p>-956 guest comment</p>
        <p><a href="javascript:void(0)">View all comments</a></p>
    </div>
</header>
<br>
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