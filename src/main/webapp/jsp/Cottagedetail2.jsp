<%--
  Created by IntelliJ IDEA.
  User: jingl
  Date: 2021/9/4
  Time: 20:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="beans.Room" %>
<%@ page import="java.util.List" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Shangri La cottage </title>
    <link rel="stylesheet" href="utils/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/jing.css">
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

<%List<Room> room = (List<Room>)session.getAttribute("room");

%>

<!--Header navigation-->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">陈总booking</a>

    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp">  Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"> <img src="image/svg/house.svg" alt="Bootstrap" width="20"> Stays</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">  <img src="image/svg/signpost-split.svg" alt="Bootstrap" width="20">Attractions</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">  <img src="image/svg/car.svg" alt="Bootstrap" width="20" >Car rentals</a>
            </li>
        </ul>

        <div class="btn float-right">
            <li class="list-inline-item">
                <a class="btn btn-success" href="index.jsp"> <img src="image/svg/sign-out-alt.svg" alt="Bootstrap" width="20" >Sign Out</a>
            </li>
        </div>
    </div>
</nav>
<hr class="hrcoloured">

<header>
    <h2><b>Shangri La cottage</b></h2>
    <hr>
    <div class="container">
        <img src="/image/<%=session.getAttribute("n") %>"  class="hotel-detail-image" alt="hotel image detail">
        <img src="/image/<%=session.getAttribute("n") %>"  class="hotel-detail-image" alt="hotel image detail">
    </div>
    <div class="hotel-description container">
        <p> Shangri La cottage Hotel is located in one area of Orlando, USA. each cottage comes with an outdoor swimming pool and free wifi.</p>
        <p>Each cottage hotel also offers free WiFi and a free parking in the house</p>
        <p>The guest room of the cottage also has a large LCD TV and free private parking space</p>
        <p> There is also a large amusement park 15 kilometers away from the cottage, which is less than 12 minutes away if guest drive</p>
    </div>
    <div class="hotel-service container text-warning">
        <h5>Popular services:</h5>
        <ol>
            <li>Free WIFI</li>
            <li>one swimming pool</li>
            <li>Free parking</li>
            <li>Non smoking room</li>
            <li>Family room</li>
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
            <%
                if(room != null){
                    for(int i =0;i<room.size();i++){
                        Room rm = (Room) room.get(i);
            %>

            <tbody>
            <tr class="text-info">
                <td>
                    <p>roomHotelID:<%= rm.getHotelID()%><br/>
                    <p>roomID:<%= rm.getId()%> </p>
                    <p>roomName:<%= rm.getName()%></p>
                    <p>roomArea: <%= rm.getArea()%></p>
                    <p>roomType:<%= rm.getType()%><br/>
                    <p>BroomBedWidth:<%= rm.getBedWidth()%></p>
                    <p>roomScore:<%= rm.getScore()%><br/>
                    <p>roomLevel:<%= rm.getLevel()%><br/>
                    <p>roomRemark:<%= rm.getRemark()%></p>

                </td>
                <td>
                    <p>roomBookStatus:<%= rm.getBookStatus()%></p>
                </td>
                <td>
                    <p>roomPrice:<%= rm.getPrice()%></p>
                </td>
                <td>
                    <p>roomNumber:<%= rm.getNumber()%></p>
                </td>

                <form action="Cottagedetail3" method="post">
                <td>
                    <input type="hidden" name="roomID" value=<%= rm.getId()%>>
                    <input type="submit" value="Order now">
                </td>
                </form>
            </tr>
            </tbody>
            <%
                    }
                }
            %>
        </table>
    </div>
    <hr>

    <div class="hotel-comment">
        <h4>Customer comments:</h4>
        <p><i class="rate">8.5</i> Great</p>
        <p>-793 guest comment</p>
        <p><a href="javascript:void(0)">View all comments</a></p>
    </div>


</header>
<br>
<div class="container">

</div>
<script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>

<script>
    tinymce.init({
        selector: 'textarea#editor',
        menubar: false
    });
</script>
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