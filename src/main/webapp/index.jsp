<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>JusTime</title>

    <!-- Bootstrap Core CSS -->
    <link href="resourses/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resourses/css/small-business.css" rel="stylesheet">

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
            <a class="navbar-brand" href="index.jsp">JusTime</a>
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
<header class="intro-header" style="background-image: url('resourses/img/caralog10.jpg')">
    <div class="container overlay">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="site-heading">
                    <h1>Dimon's portfolio</h1>
                    <hr class="small">
                    <span class="subheading">k3220<br></span>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Main Content -->


<div class="container-fluid container-90">
    <div class="row">

        <div class="col-md-3">
            <div class="post-preview">
                <a href="tasks">
                    <p class="post-meta">Август 2015</p>
                    <img class="img-responsive" src="resourses/img/caralog4.jpg">
                    <h2 class="post-title">
                        Поступление в ИТМО
                    </h2>
                    <h3 class="post-subtitle">
                        Поступил в один из ведущих вузов страны на кафедру световых технологий и оптоэлектоники инженерно-физического факультета.
                    </h3>
                </a>
            </div>
        </div>

        <div class="col-md-3">
            <div class="post-preview">
                <a href="tasks">
                    <p class="post-meta">Сентябрь 2015</p>
                    <img class="img-responsive" src="resourses/img/caralog5.jpg">
                    <h2 class="post-title">
                        Познание себя
                    </h2>
                    <h3 class="post-subtitle">
                      Нашел себя в программировании. Активно извучал язык Java. Написал много консольных приложений и свой первый серьезный проект - оконное приложение для интерполяции по точкам, используя библиотеку JFrame
                    </h3>
                </a>
            </div>
        </div>

        <div class="col-md-3">
            <div class="post-preview">
                <a href="tasks">
                    <p class="post-meta">Август 2016</p>
                    <img class="img-responsive" src="resourses/img/caralog6.jpg">
                    <h2 class="post-title">
                        Шаг вперед
                    </h2>
                    <h3 class="post-subtitle">
                      Успешно перевелся на кафедру программных систем факультета инфокоммуникуционных технологий.
                    </h3>
                </a>
            </div>
        </div>

        <div class="col-md-3">
            <div class="post-preview">
                <a href="tasks">
                    <p class="post-meta">Март 2017</p>
                    <img class="img-responsive" src="resourses/img/caralog1.jpg">
                    <h2 class="post-title">
                        Задел на будущее
                    </h2>
                    <h3 class="post-subtitle">
                      Создал свое веб-приложение "task manager", используя фреймворк Spring, Spring MVC, библиотеку Hibernate, бд MySql и технологию jsp. В качестве локального сервера использовался Tomcat 8.
                    </h3>
                </a>
            </div>
        </div>

    </div>
    <!-- Pager
    <ul class="pager">
        <li class="next">
            <a href="#">Older</a>
        </li>
    </ul> -->
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
<script src="resourses/js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="resourses/js/bootstrap.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="resourses/js/small-business.min.js"></script>

<!-- Smooth Scroll -->
<script src="resourses/js/SmoothScroll.js"></script>


</body>

</html>