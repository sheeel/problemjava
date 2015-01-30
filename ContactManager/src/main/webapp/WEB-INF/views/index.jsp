
<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Spring Security</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="http://localhost:8084/ContactManager/views/css/bootstrap.css" />" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<c:url value="/views/css/jumbotron-narrow.css" />" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<div class="container">

    <div class="jumbotron" style="margin-top: 20px;">
        <h1>Авторизируйся и будет счастье!</h1>
        <p class="lead">Если ты еще не заргистрировался, милости просим!</p>
        <sec:authorize access="!isAuthenticated()">
            <p><a class="btn btn-lg btn-success" href="<c:url value="/login" />" role="button">Вход</a></p>
            <p><a class="btn btn-lg btn-success" href="<c:url value="/contact" />" role="button">Регистрация</a></p>
        </sec:authorize>
        <sec:authorize access="ROLE_USER,ROLE_ADMIN">
            <p>Ваш логин: <sec:authentication property="principal.username" /></p>
            <p><a class="btn btn-lg btn-danger" href="<c:url value="/logout" />" role="button">Выйти</a></p>

        </sec:authorize>
    </div>

    <div class="footer">
        <p>&copy; Полина 2015</p>
    </div>

</div>
</body>
</html>



<!--
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
          <meta http-equiv="Content-Type" content="text/html; charset=utf8">        
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1><br/>
        <a href="<c:url value="/logout" />">
            <spring:message code="label.logout" />
        </a><br/>
            <a href="<c:url value="/hiJack" />">
            Страничка (только для авторизованных пользователей)
        </a>  <br/>
        <a href="<c:url value="/contact" />">
            Регистрация
        </a>  <br/>
        <a href="<c:url value="/login" />">
            Авторизация
        </a> 
    </body>
</html>
-->