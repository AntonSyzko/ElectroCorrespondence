<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Електронна кореспонденція: додати новий тип документу</title>
    <%--<%@ include file="header.jsp" %>--%>

    <meta charset="utf-8">
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <script src="/js/jquery-1.12.3.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/css/dataTables.jqueryui.min.css">
    <link rel="stylesheet" type="text/css" href="/css/jquery-ui.css">
    <script type="text/javascript" charset="utf8" src="/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" charset="utf8" src="/js/dataTables.jqueryui.min.js"></script>



</head>
<body>
<%@ include file="isnotauthenticated.jsp" %>
<sec:authorize access="isAuthenticated()">
    <div class="container">
        <form role="form" enctype="multipart/form-data" class="form-horizontal" action="/type/add" method="post">
            <h3>Зареєструвати новий тип документу</h3>

            <div class="form-group">
                <label class="control-label col-sm-2" for="name">Тип документу</label>

                <div class="col-sm-10">
                    <input type="text" class="form-control" id="name" name="name" placeholder="Тип документа">
                </div>
            </div>

            <input type="submit" class="btn btn-primary" value="Зареєструвати">
        </form>
    </div>
</sec:authorize>
</body>
</html>