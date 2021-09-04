<%--
  Created by IntelliJ IDEA.
  User: DKpoosh
  Date: 2/09/2021
  Time: 11:21 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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

    <!-- Bootstrap -->
    <link href="../../utils/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css" integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">

    <link rel="stylesheet" href="../../css/max/ManageUserPage.css">

    <title>Title</title>
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



    <hr class="hrcoloured" >
    <!--User list-->
    <div class="container">

        <!--Search Bar-->
        <div class="row">
            <div class="col-sm-4">
                <input type="text" class="form-control" placeholder="Search By CustomerID: ">
            </div>
            <div class="col-sm-4">
                <input type="text" class="form-control" placeholder="Search By OrderID: ">
            </div>
            <!--查找订单按键 管理员及超级管理员权限-->
            <div class="col-sm-2">
                <button class="btn btn-primary btn-md">Search</button><br>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="main-box clearfix">
                    <div class="table-responsive">
                        <table class="table user-list">
                            <thead>
                            <tr>
                                <th><span>User</span></th>
                                <th><span>Created</span></th>
                                <th class="text-center"><span>Status</span></th>
                                <th><span>Email</span></th>
                                <th>&nbsp;</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>
                                    <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="">
                                    <a href="#" class="user-link">Mila Kunis</a>
                                    <span class="user-subhead">Admin</span>
                                </td>
                                <td>
                                    2013/08/08
                                </td>
                                <td class="text-center">
                                    <span class="label label-default">Inactive</span>
                                </td>
                                <td>
                                    <a href="#">mila@kunis.com</a>
                                </td>
                                <td style="width: 20%;">
                                    <a href="#" class="table-link">
                                        <span class="fa-stack">
                                            <i class="fa fa-square fa-stack-2x"></i>
                                            <i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                    <a href="#" class="table-link">
                                        <span class="fa-stack">
                                            <i class="fa fa-square fa-stack-2x"></i>
                                            <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                    <a href="#" class="table-link danger">
                                        <span class="fa-stack">
                                            <i class="fa fa-square fa-stack-2x"></i>
                                            <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="https://bootdey.com/img/Content/avatar/avatar2.png" alt="">
                                    <a href="#" class="user-link">George Clooney</a>
                                    <span class="user-subhead">Member</span>
                                </td>
                                <td>
                                    2013/08/12
                                </td>
                                <td class="text-center">
                                    <span class="label label-success">Active</span>
                                </td>
                                <td>
                                    <a href="#">marlon@brando.com</a>
                                </td>
                                <td style="width: 20%;">
                                    <a href="#" class="table-link">
                                        <span class="fa-stack">
                                            <i class="fa fa-square fa-stack-2x"></i>
                                            <i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                    <a href="#" class="table-link">
                                        <span class="fa-stack">
                                            <i class="fa fa-square fa-stack-2x"></i>
                                            <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                    <a href="#" class="table-link danger">
                                        <span class="fa-stack">
                                            <i class="fa fa-square fa-stack-2x"></i>
                                            <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="https://bootdey.com/img/Content/avatar/avatar3.png" alt="">
                                    <a href="#" class="user-link">Ryan Gossling</a>
                                    <span class="user-subhead">Registered</span>
                                </td>
                                <td>
                                    2013/03/03
                                </td>
                                <td class="text-center">
                                    <span class="label label-danger">Banned</span>
                                </td>
                                <td>
                                    <a href="#">jack@nicholson</a>
                                </td>
                                <td style="width: 20%;">
                                    <a href="#" class="table-link">
                                        <span class="fa-stack">
                                            <i class="fa fa-square fa-stack-2x"></i>
                                            <i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                    <a href="#" class="table-link">
                                        <span class="fa-stack">
                                            <i class="fa fa-square fa-stack-2x"></i>
                                            <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                    <a href="#" class="table-link danger">
                                        <span class="fa-stack">
                                            <i class="fa fa-square fa-stack-2x"></i>
                                            <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="https://bootdey.com/img/Content/avatar/avatar4.png" alt="">
                                    <a href="#" class="user-link">Emma Watson</a>
                                    <span class="user-subhead">Registered</span>
                                </td>
                                <td>
                                    2004/01/24
                                </td>
                                <td class="text-center">
                                    <span class="label label-warning">Pending</span>
                                </td>
                                <td>
                                    <a href="#">humphrey@bogart.com</a>
                                </td>
                                <td style="width: 20%;">
                                    <a href="#" class="table-link">
                                        <span class="fa-stack">
                                            <i class="fa fa-square fa-stack-2x"></i>
                                            <i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                    <a href="#" class="table-link">
                                        <span class="fa-stack">
                                            <i class="fa fa-square fa-stack-2x"></i>
                                            <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                    <a href="#" class="table-link danger">
                                        <span class="fa-stack">
                                            <i class="fa fa-square fa-stack-2x"></i>
                                            <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="https://bootdey.com/img/Content/avatar/avatar5.png" alt="">
                                    <a href="#" class="user-link">Robert Downey Jr.</a>
                                    <span class="user-subhead">Admin</span>
                                </td>
                                <td>
                                    2013/12/31
                                </td>
                                <td class="text-center">
                                    <span class="label label-success">Active</span>
                                </td>
                                <td>
                                    <a href="#">spencer@tracy</a>
                                </td>
                                <td style="width: 20%;">
                                    <a href="#" class="table-link">
                                        <span class="fa-stack">
                                            <i class="fa fa-square fa-stack-2x"></i>
                                            <i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                    <a href="#" class="table-link">
                                        <span class="fa-stack">
                                            <i class="fa fa-square fa-stack-2x"></i>
                                            <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                    <a href="#" class="table-link danger">
                                        <span class="fa-stack">
                                            <i class="fa fa-square fa-stack-2x"></i>
                                            <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="https://bootdey.com/img/Content/avatar/avatar6.png" alt="">
                                    <a href="#" class="user-link">Mila Kunis</a>
                                    <span class="user-subhead">Admin</span>
                                </td>
                                <td>
                                    2013/08/08
                                </td>
                                <td class="text-center">
                                    <span class="label label-default">Inactive</span>
                                </td>
                                <td>
                                    <a href="#">mila@kunis.com</a>
                                </td>
                                <td style="width: 20%;">
                                    <a href="#" class="table-link">
                                        <span class="fa-stack">
                                            <i class="fa fa-square fa-stack-2x"></i>
                                            <i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                    <a href="#" class="table-link">
                                        <span class="fa-stack">
                                            <i class="fa fa-square fa-stack-2x"></i>
                                            <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                    <a href="#" class="table-link danger">
                                        <span class="fa-stack">
                                            <i class="fa fa-square fa-stack-2x"></i>
                                            <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="">
                                    <a href="#" class="user-link">George Clooney</a>
                                    <span class="user-subhead">Member</span>
                                </td>
                                <td>
                                    2013/08/12
                                </td>
                                <td class="text-center">
                                    <span class="label label-success">Active</span>
                                </td>
                                <td>
                                    <a href="#">marlon@brando.com</a>
                                </td>
                                <td style="width: 20%;">
                                    <a href="#" class="table-link">
                                        <span class="fa-stack">
                                            <i class="fa fa-square fa-stack-2x"></i>
                                            <i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                    <a href="#" class="table-link">
                                        <span class="fa-stack">
                                            <i class="fa fa-square fa-stack-2x"></i>
                                            <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                    <a href="#" class="table-link danger">
                                        <span class="fa-stack">
                                            <i class="fa fa-square fa-stack-2x"></i>
                                            <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="">
                                    <a href="#" class="user-link">Ryan Gossling</a>
                                    <span class="user-subhead">Registered</span>
                                </td>
                                <td>
                                    2013/03/03
                                </td>
                                <td class="text-center">
                                    <span class="label label-danger">Banned</span>
                                </td>
                                <td>
                                    <a href="#">jack@nicholson</a>
                                </td>
                                <td style="width: 20%;">
                                    <a href="#" class="table-link">
                                        <span class="fa-stack">
                                            <i class="fa fa-square fa-stack-2x"></i>
                                            <i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                    <a href="#" class="table-link">
                                        <span class="fa-stack">
                                            <i class="fa fa-square fa-stack-2x"></i>
                                            <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                    <a href="#" class="table-link danger">
                                        <span class="fa-stack">
                                            <i class="fa fa-square fa-stack-2x"></i>
                                            <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="">
                                    <a href="#" class="user-link">Emma Watson</a>
                                    <span class="user-subhead">Registered</span>
                                </td>
                                <td>
                                    2004/01/24
                                </td>
                                <td class="text-center">
                                    <span class="label label-warning">Pending</span>
                                </td>
                                <td>
                                    <a href="#">humphrey@bogart.com</a>
                                </td>
                                <td style="width: 20%;">
                                    <a href="#" class="table-link">
                                        <span class="fa-stack">
                                            <i class="fa fa-square fa-stack-2x"></i>
                                            <i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                    <a href="#" class="table-link">
                                        <span class="fa-stack">
                                            <i class="fa fa-square fa-stack-2x"></i>
                                            <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                    <a href="#" class="table-link danger">
                                        <span class="fa-stack">
                                            <i class="fa fa-square fa-stack-2x"></i>
                                            <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="https://bootdey.com/img/Content/avatar/avatar6.png" alt="">
                                    <a href="#" class="user-link">Robert Downey Jr.</a>
                                    <span class="user-subhead">Admin</span>
                                </td>
                                <td>
                                    2013/12/31
                                </td>
                                <td class="text-center">
                                    <span class="label label-success">Active</span>
                                </td>
                                <td>
                                    <a href="#">spencer@tracy</a>
                                </td>
                                <td style="width: 20%;">
                                    <a href="#" class="table-link">
                                        <span class="fa-stack">
                                            <i class="fa fa-square fa-stack-2x"></i>
                                            <i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                    <a href="#" class="table-link">
                                        <span class="fa-stack">
                                            <i class="fa fa-square fa-stack-2x"></i>
                                            <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                    <a href="#" class="table-link danger">
                                        <span class="fa-stack">
                                            <i class="fa fa-square fa-stack-2x"></i>
                                            <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </a>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <ul class="pagination pull-right">
                        <li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
