<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html >

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Contacts</title>

    <!-- Bootstrap Core CSS -->
    <link href="../../resourses/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../../resourses/css/small-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Great+Vibes' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900' rel='stylesheet' type='text/css'>


</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-default navbar-custom navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="../../index.jsp">JusTime</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="/">Home</a>
                </li>
                <li>
                    <a href="about">About</a>
                </li>
                <li>
                    <a href="tasks">Task Manager</a>
                </li>
                <li>
                    <a href="gallery">Gallery</a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>
<!-- Page Header -->
<!-- Set your background image for this header on the line below. -->
<header class="intro-header" style="background-image: url('../../resourses/img/caralog12.jpg')">
    <div class="container overlay">
        <div class="row">
            <div class="col-lg-6 col-lg-offset-3 col-md-8 col-md-offset-2">
                <div class="page-heading">
                    <h1>Contacts</h1>
                    <hr class="small">
                    <span class="subheading">Saint-Petersburg, ITMO University</span>
                </div>
            </div>
        </div>
    </div>
</header>



<div id="body">
    <h1><span>Галерея</span></h1>
    <div align="center">
        <div class="thumbnails">
            <img onmouseover="preview.src = img1.src" name="img1" src="../../resourses/img/caralog1.jpg" alt=""/>
            <img onmouseover="preview.src = img2.src" name="img2" src="../../resourses/img/caralog2.jpg" alt=""/>
            <img onmouseover="preview.src = img3.src" name="img3" src="../../resourses/img/caralog3.jpg" alt=""/>
            <img onmouseover="preview.src = img4.src" name="img4" src="../../resourses/img/caralog4.jpg" alt=""/>
            <img onmouseover="preview.src = img5.src" name="img5" src="../../resourses/img/caralog5.jpg" alt=""/>
            <img onmouseover="preview.src = img6.src" name="img6" src="../../resourses/img/caralog6.jpg" alt=""/>
            <img onmouseover="preview.src = img7.src" name="img7" src="../../resourses/img/caralog7.jpg" alt=""/>
            <img onmouseover="preview.src = img8.src" name="img8" src="../../resourses/img/caralog8.jpg" alt=""/>
            <img onmouseover="preview.src = img9.src" name="img9" src="../../resourses/img/caralog9.jpg" alt=""/>
            <img onmouseover="preview.src = img10.src" name="img10" src="../../resourses/img/caralog10.jpg" alt=""/>
            <img onmouseover="preview.src = img11.src" name="img11" src="../../resourses/img/caralog11.jpg" alt=""/>
            <img onmouseover="preview.src = img12.src" name="img12" src="../../resourses/img/caralog12.jpg" alt=""/>

        </div><br/>

        <div class="preview" align="center">
            <img name="preview" src="../../resourses/img/caralog1.jpg" alt=""/>
        </div>

    </div>





    <hr>
    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <ul class="list-inline text-center">
                        <li>
                            <a href="https://github.com/Dimon1234">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-github fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="https://twitter.com/">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.facebook.com/profile.php?id=100004382557240">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>

                        <li>
                            <a href="https://plus.google.com/u/0/116403454295478540790">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-google-plus fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="wap.mmj@mail.ru">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-envelope fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                        <li>
                        </li>
                    </ul>
                    <p class="copyright text-muted">&copy; Dmitry Vlasenko, K3220 </p>
                    <p class="copyright text-muted"> 2017</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="../../resourses/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../../resourses/js/bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../../resourses/js/small-business.min.js"></script>

    <!-- Smooth Scroll -->
    <script src="../../resourses/js/SmoothScroll.js"></script>
</div>
</body>

</html>

