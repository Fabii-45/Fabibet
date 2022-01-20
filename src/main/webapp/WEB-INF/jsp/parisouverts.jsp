<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        <title>Liste des paris ouverts</title>

        <jsp:useBean id="util" type="modele.Utilisateur" scope="session"></jsp:useBean>
        <jsp:useBean id="matchs" type="java.util.Collection<modele.Match>" scope="request"/>
    </head>
    <style>
        body {
            background-color: #212529;
            color:white;
        }
    </style>
    <body>
    <h1>Vous pouvez pariez sur les match suivants</h1>

    <ul>
    <c:forEach items="${matchs}" var="x">
        <li>
            ${x.sport} : ${x.equipe1} vs ${x.equipe2} - <a href="/pel/pariermatch?id=${x.idMatch}">parier</a>
        </li>
    </c:forEach>
    </ul>
    <a href="/pel/menu">Retour au menu</a>
    </body>
</html>
