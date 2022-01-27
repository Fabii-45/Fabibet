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
        <jsp:useBean id="util" type="modele.Utilisateur" scope="session"></jsp:useBean>
    </head>
    <style>
        body {
            background-color: #212529;
        }
        .divMainTitle{
            margin-left: 35%;
        }
        .mainTitle{
            color:white;
            height: 20em; /* hauteur du parent */
            line-height: 20em; /* hauteur de ligne (identique) */
            white-space: nowrap;
        }
    </style>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">Fabibet</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarText">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/pel/parisouverts">Pariez !<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/pel/mesparis">Mes Paris</a>
                    </li>
                    <c:if test = "${util.admin == true}">
                        <li class="nav-item">
                            <a class="nav-link" href="/admin/nouveaumatch">Afficher Nouveau Match</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/admin/saisirresultats">Saisir des Résultats</a>
                        </li>
                    </c:if>
                </ul>
                <span class="navbar-text">
                  <a href="/pel/deconnexion">Deconnexion</a>
                </span>
            </div>
        </nav>
        <div class="divMainTitle">
            <h1 class="mainTitle">Bienvenue sur Fabibet ${util.login}</h1>
        </div>
    </body>
</html>
