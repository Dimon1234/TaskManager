<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>

<head>

    <title>Tasks Page</title>
    <link href="../../resourses/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../../resourses/css/taskManager.css" rel="stylesheet">
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
                <li class="dropdown-header-menu">
                    <a href="<c:url value='/sortId'/>">Sort</a>
                    <div class="down-menu">
                        <ul class="list-style-type">
                            <li><a href="<c:url value='/sortPriority'/>">Priority</a></li>
                            <li><a href="<c:url value='/sortDate'/>">Date</a></li>
                            <li><a href="<c:url value='/sortDone'/>">Done</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="/">Home</a>
                </li>
                <li>
                    <a href="/about">About</a>
                </li>
                <li>
                    <a href="/tasks">Task Manager</a>
                </li>
                <li>
                    <a href="/gallery">Gallery</a>
                </li>

            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>
<!-- Page Header -->
<header class="intro-header" style="background-image: url('../../resourses/img/wood.png'); height: 70px">

</header>



<div class="container">


<div class="divTasks" >

<c:if test="${!empty listTasks}">
    <table class="ulListTasks">

        <c:forEach items="${listTasks}" var="task">
            <tr>
                 <td>
                    <c:choose>
                    <c:when test="${task.getisDone()}">
                        <a class="icon" href="<c:url value='/check/${task.id}'/>"><img src="../../resourses/img/checked.jpg"></a>
                        </c:when>
                    <c:otherwise>
                        <a class="icon" href="<c:url value='/check/${task.id}'/>"><img src="../../resourses/img/unchecked.jpg"> </a>
                    </c:otherwise>
                    </c:choose>
                </td>
                <td class="tdWidth textTask"><a href="<c:url value="/showDescription/${task.id}"/>">${task.textTask}</a></td>
                <td class="icon"><p><img class="data" title="${task.deadlineDate.toString()}" src="../../resourses/img/date.png"></p></td>
                <td class="icon"><p><a href="<c:url value='/edit/${task.id}'/>"><img src="../../resourses/img/edit.jpg"></a></p></td>
                <td class="icon"><a href="<c:url value='/remove/${task.id}'/>"><img src="../../resourses/img/remove.jpg"></a></td>
            </tr>

        </c:forEach>
    </table>
</c:if>

</div>



<!-- Input Form -->
<div class="form">

<c:url var="addAction" value='/task/add'/>

<form:form action="${addAction}" commandName="task">
    <table class="table-form">

        <tr>
            <td>
                <form:label path="id">
                    <spring:message text=""/>
                </form:label>
            </td>
            <td class="none">
                <form:input  path="id"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="textTask">
                    <spring:message text="Задача"/>
                </form:label>
            </td>
            <td>
                <form:input  autocomplete="off"  maxlength="30" style="width:150px" path="textTask"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="description">
                    <spring:message text="Описание"/>
                </form:label>
            </td>
            <td>
                <form:textarea autocomplete="off" maxlength="1000" style="width:150px" path="description"/>
            </td>
        </tr>

        <tr>
            <td>
                <form:label path="priority">
                    <spring:message text="Приоритет"/>
                </form:label>
            </td>
            <td>
                <form:select path="priority" name = "priority" title="приоритет" style="width:150px" >
                    <form:option value = "1">низкий</form:option>
                    <form:option value = "2">нормальный</form:option>
                    <form:option value = "3">высокий</form:option>
                    <form:option value = "4">очень высокий</form:option>
                </form:select>
            </td>
        </tr>

        <tr>
            <td>
                <form:label  path="deadlineDate">
                    <spring:message  text="Дэдлайн"/>
                </form:label>
            </td>
            <td>
                <form:input readonly="true" style="width:150px"  path="deadlineDate" id="datepicker"/>
            </td>
        </tr>


        <tr>
            <c:if test="${!empty task.textTask}">
            <td>
                <form:label path="isDone">
                    <spring:message text="Сделано"/>
                </form:label>
            </td>
            <td>
                <form:checkbox path="isDone" />

            </td>
           </c:if>
        </tr>




        <tr>
            <td colspan="2">
                <c:if test="${!empty task.textTask}">
                    <input type="submit"
                           value="<spring:message text="Редактировать"/>"/>
                </c:if>
                <c:if test="${empty task.textTask}">

                    <input type="submit"
                           value="<spring:message text="Добавить"/>"/>
                </c:if>
            </td>
        </tr>
    </table>
</form:form>
</div>

</div>

<!-- Description block -->
<div class="description-area center">
    <p class="description">${taskId.description}</p>
    <p class="priority">${taskId.getStringPriority()}</p>
    <p class="deadLine">${taskId.getFormatDate()}</p>
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

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- Smooth Scroll -->
<script src="../../resourses/js/SmoothScroll.js"></script>
<script>
    $( function() {
        $( "#datepicker" ).datepicker();
    } );
</script>

</body>
</html>
