<%--
  Created by IntelliJ IDEA.
  User: chenz
  Date: 8/31/2021
  Time: 2:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
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
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="utils/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/chenziyong.css" rel="stylesheet">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
</head>
<body>

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
                <a class="btn btn-link" href="jsp/signin.jsp"> <span class="glyphicon glyphicon-user"></span> Sign In</a>
            </li>
            <li class="list-inline-item">

                <a class="btn btn-success" href="jsp/signup.jsp"> <img src="image/svg/sign-out-alt.svg" alt="Bootstrap" width="20" >  Sign Up</a>
            </li>
        </div>
    </div>
</nav>






<div class="container">
    <div class="text-left mb-5">
        <h1 class="display-4 mt-10 font-weight-bold text-shadow">Provide you with the best accommodation</h1>
        <h6 class="subtitle text-shadow text-dark">Uncover the best offers on the real estate market.</h6>
    </div>
    <form action="index">
        <div class="row no-gutters">
            <div class="col-md-4">
                <div class="input-group">
                    <div class="input-group-addon"><img src="image/svg/pin-map.svg" alt="Bootstrap" ></div>
                    <input class="form-control" placeholder="Enter Addrress" type="text" name= "address">
                </div>
            </div>

            <div class="col-md-3">
                <div class="input-group">
                    <div class="input-group-addon"><span class="glyphicon glyphicon-time"></span></div>
                    <input class="form-control " type="text" name="daterange" />
                </div>
            </div>
            <div class="col-md-3">
                <div class="input-group">
                    <div class="input-group-addon"><img src="image/svg/house.svg" alt="Bootstrap" width="20"></div>
                    <select class="form-control" name="type">
                        <option value="Cabins">Cabins</option>
                        <option value="Cotages">Cotages</option>
                        <option value="Apartments">Apartments</option>
                        <option value="Philadelphia">Philadelphia</option>
                    </select>
                </div>
            </div>
            <div class="col-md-2">
                <button type="submit" class="btn btn-success btn-block no-radius font-weight-bold">SEARCH</button>
            </div>
        </div>
    </form>
</div>



<hr class="hr1">

<div class="container">
    <div class="section-title text-center mb-5">
        <h1 class="display-4 mt-10 font-weight-bold text-shadow">Browse by property type</h1>
        <h6 class="subtitle text-shadow text-dark">We only recommend the best properties.</h6>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-lg-3">
            <div class="card card-overlay">
                <a href="jsp/jing/Cabinsindex.jsp">
                    <img class="card-img" src="image/house%20type/Cabins.jpg">
                </a>
                <div class="card-img-overlay">
                    <h3 class="card-title text-white">Cabins</h3>
                    <p class="card-text text-white">16 Properties</p>
                </div>
            </div>
        </div>

        <div class="col-lg-3">
            <div class="card card-overlay">
                <a href="jsp/jing/Cottageindex.jsp">
                <img class="card-img" src="image/house%20type/Cottages.jpg">
                </a>
                <div class="card-img-overlay">
                    <h3 class="card-title text-white">Cottages</h3>
                    <p class="card-text text-white">265 Properties</p>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="card card-overlay">
                <a href="jsp/jing/apartmentindex.jsp">
                    <img class="card-img" src="image/house%20type/Serviced%20apartments.jpg">
                </a>
                <div class="card-img-overlay">
                    <h3 class="card-title text-white">Apartments</h3>
                    <p class="card-text text-white">620 Properties</p>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="card card-overlay">
                <a href="jsp/jing/villaindex.jsp">
                <img class="card-img" src="image/house%20type/Villas.jpg" alt="Card image">
                </a>
                <div class="card-img-overlay">
                    <h3 class="card-title text-white">Philadelphia</h3>
                    <p class="card-text text-white">28 Properties</p>
                </div>
            </div>
        </div>
    </div>
</div>



<hr class="hr1">

<div class="container">
    <div class="section-title text-center mb-5">
        <h1 class="display-4 mt-10 font-weight-bold text-shadow">Tourist attraction</h1>
        <h6 class="subtitle text-shadow text-dark">Enjoy the most beautiful scenery.</h6>
    </div>
</div>

<div id="demo" class="carousel slide" data-ride="carousel">

    <!-- 指示符 -->
    <ul class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0" class="active"></li>
        <li data-target="#demo" data-slide-to="1"></li>
        <li data-target="#demo" data-slide-to="2"></li>
        <li data-target="#demo" data-slide-to="3"></li>
    </ul>

    <!-- 轮播图片 -->
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img  src="image/fongjing/11.jpg" >
            <div class="carousel-caption">
                <h3>first</h3>
                <p>price</p>
            </div>
        </div>
        <div class="carousel-item">
            <img  src="image/fongjing/Darlin_harbour_siidney.jpg" >
            <div class="carousel-caption">
                <h3>first</h3>
                <p>price</p>
            </div>
        </div>
        <div class="carousel-item">
            <img  src="image/house%20type/Cottages.jpg">
            <div class="carousel-caption">
                <h3>first</h3>
                <p>price</p>
            </div>
        </div>
        <div class="carousel-item">
            <img  src="image/house%20type/Cabins.jpg" style="display: inline-block" alt="php">
            <div class="carousel-caption">
                <h3>first</h3>
                <p>price</p>
            </div>
        </div>
    </div>


    <!-- 左右切换按钮 -->
    <a class="carousel-control-prev" href="#demo" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </a>
    <a class="carousel-control-next" href="#demo" data-slide="next">
        <span class="carousel-control-next-icon"></span>
    </a>

</div>



<div class="container">

</div>

<footer class="footer">
    ...页脚内容...
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
            <a class="btn btn-link" href="jsp/AdminPage.jsp"> <span class="glyphicon glyphicon-user"></span> admin in</a>
        </li>


    </div>
</footer>





<script type="text/javascript">
    $(function() {
        $('input[name="daterange"]').daterangepicker();

    });


    $('#daterange').daterangepicker();
    $('#daterange').on('apply.daterangepicker', function(ev, picker) {
        console.log(picker.startDate.format('YYYY-MM-DD'));
        console.log(picker.endDate.format('YYYY-MM-DD'));
    });

</script>




</body>
</html>

