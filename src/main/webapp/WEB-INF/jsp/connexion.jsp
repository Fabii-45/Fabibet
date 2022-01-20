<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: o2194514
  Date: 11/01/2022
  Time: 09:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>Paris en ligne</title>
    <jsp:useBean id="erreur" class="java.lang.String" scope="request"></jsp:useBean>
</head>
<style>
    body {
        background-color: #212529;
    }
    .container{
        padding-top:15%;
    }
</style>
    <body>
        <div>
            <div class="container">
                <div id="login-row" class="row justify-content-center align-items-center">
                    <div id="login-column" class="col-md-6">
                        <div id="login-box" class="col-md-12">
                            <form id="login-form" class="form" action="/pel/connexion" method="post">
                                <h3 class="text-center text-info">Connexion</h3>
                                <div class="form-group">
                                    <label for="login" class="text-info">Login:</label><br>
                                    <input type="text" name="login" id="login" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="password" class="text-info">Password:</label><br>
                                    <input type="text" name="password" id="password" class="form-control">
                                </div>
                                <div class="form-group">
                                    <input type="submit" name="submit" class="btn btn-info btn-md" value="Connexion">
                                    <c:if test = "${erreur.length() > 0}">
                                        <p style="color:red;">
                                            <c:out value = "${erreur}"></c:out>
                                        </p>
                                    </c:if>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
