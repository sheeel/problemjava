
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="windows-1251"%>
<!DOCTYPE html>
<html>s
    <head>
         <link href="<c:url value="/pages/css/bootstrap.css" />" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
        <title>Ошибка 404</title>
    </head>
    <body>
        Нет такой страницы
       <img src="<c:url value="/views/img/404_3.png" />"/>
       <img src="<c:url value="WEB-INF/views/img/404_3.png" />"/>
       <img src="<c:url value="/WEB-INF/views/img/404_3.png" />"/>
       <img src="<c:url value="localhost:8084/WEB-INF/views/img/404_3.png" />"/>
       <img src="<c:url value="localhost:8084/views/img/404_3.png" />"/>
        
    </body>
</html>
