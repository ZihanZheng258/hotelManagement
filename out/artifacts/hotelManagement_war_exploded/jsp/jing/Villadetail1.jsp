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
    <title>Jasmine Villa</title>
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
<header>
    <h2><b>Jasmine Villa</b></h2>
    <hr>
    <div class="container">
        <img src="../../image/image1/villapicture3.jpg" class="hotel-detail-image" alt="hotel image detail">
        <img src="../../image/image1/villapicture4.jpg" class="hotel-detail-image" alt="hotel image detail">
    </div>
    <div class="hotel-description container">
        <p>Jasmine villa is located in Davenport, USA. the villa has a large garden and an outdoor swimming pool.</p>
        <p>The house offers free WiFi and a fully equipped living room as well as the developer's kitchen</p>
        <p>There is an airport 28 kilometers away from the villa</p>
        <p>The villa also has private parking spaces and rooms with balconies</p>
    </div>
    <div class="hotel-service container text-warning">
        <h5>Popular services:</h5>
        <ol>
            <li>Free WIFI</li>
            <li>Barbecue facilities</li>
            <li>Free parking</li>
            <li>Non smoking room</li>
            <li>Swimming pool</li>
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
                    <p>Villa</p>
                    <p>Guest room facilities:</p>
                    <p>Room area: 180 square meters</p>
                    <p>Bedroom 1: 2 single beds: 1.8m x 2m</p>
                    <p>Bedroom 2: 1 double beds: 1.8m x 2m</p>
                    <p>Bedroom 3: 1 queens beds: 2.2m x 2m</p>
                    <p>Bedroom 4: 2 double beds: 1.8m x 2m</p>
                    <p>Free WiFi <br/>
                        Washing machine,Independent shower and bathroom,living room<br/>
                        Carpet,dryer,sofa,clothes dryer,Tea / coffee making machine<br/>
                        Fully open kitchen:<br/>
                        Refrigerator, microwave oven, electric kettle,roaster,<br/>
                        Wardrobe / wardrobe, air conditioner, TV<br/>
                        Telephone, bedding,  Outdoor dining area,large table</p>
                </td>
                <td>
                    <p>eight <br/> occupancy</p>
                </td>
                <td>
                    <p>850</p>
                </td>
                <td>
                    <p>2/10</p>
                </td>
                <td>
                    <a class="btn btn-primary" href="../Payment.jsp" role="button">Book now</a>
                </td>
            </tr>
            <tr class="text-info">
                <td>
                    <p>Villa with private swimming</p>
                    <p>Guest room facilities:</p>
                    <p>Room area: 200 square meters</p>
                    <p>Bedroom 1: 1 Queen bed: 2.2m x 2m,</p>
                    <p>Bedroom 2: 2 single beds: 1.8m x 2m</p>
                    <p>Bedroom 3: 2 single bed: 1.5m x 1.8m</p>
                    <p>Bedroom 4: 1 king bed: 2.2m x 1.8m</p>
                    <p>Bedroom 5: 2 single bed: 1.5m x 1.8m</p>
                    <p>Free WiFi <br/>
                        Washing machine,Independent shower and bathroom,living room<br/>
                        Carpet,dryer,sofa,clothes dryer,Tea / coffee making machine<br/>
                        Fully open kitchen:<br/>
                        Refrigerator, microwave oven, electric kettle,roaster,<br/>
                        Wardrobe / wardrobe, air conditioner, TV<br/>
                        Telephone, bedding,  Outdoor dining area,large table</p>
                </td>
                <td>
                    <p> Ten<br/> occupancy</p>
                </td>
                <td>
                    <p>1000</p>
                </td>
                <td>
                    <p>1/10</p>
                </td>
                <td>
                    <a class="btn btn-primary" href="../Payment.jsp" role="button">Book now</a>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
    <hr>
    <div class="hotel-comment">
        <h4>Customer comments:</h4>
        <p><i class="rate">9.0</i> Great</p>
        <p>-869 guest comment</p>
        <p><a href="javascript:void(0)">View all comments</a></p>
    </div>
</header>
<br>
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