<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Електронна кореспонденція: додати виконавця</title>
    <%@ include file="header.jsp" %>


</head>
<body>
<%@ include file="isnotauthenticated.jsp" %>
<sec:authorize access="isAuthenticated()">
    <div class="container">
        <form role="form" enctype="multipart/form-data" class="form-horizontal" action="/executor/add" method="post">
            <h3>Зареєструвати нового виконавця</h3>

            <div class="form-group">
                <label class="control-label col-sm-2" for="name">Виконавець</label>

                <div class="col-sm-10">
                    <input type="text" class="form-control" id="name" name="name" placeholder="Виконавець">
                </div>
            </div>

            <input type="submit" class="btn btn-primary" value="Зареєструвати">
        </form>
    </div>
</sec:authorize>
</body>
</html>