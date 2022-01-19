<%--
  Created by IntelliJ IDEA.
  User: o2194514
  Date: 11/01/2022
  Time: 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>Mes paris</title>
    <jsp:useBean id="util" type="modele.Utilisateur" scope="session"></jsp:useBean>
</head>
<style>
    body {
        background-color: #212529;
        color:white;
    }
</style>
<body>
<h1>Les paris de ${util.login}</h1>
<ul>
    <% for(int i = 0; i < 3; i++) { %>
    <li> sport : ##### - ####### vs ####### - le ##############. Mise de ### sur #### <a href="">Annuler</a></li>
    <% } %>
</ul>
<a href="/pel/menu">Retour au menu</a>
</body>
</html>
