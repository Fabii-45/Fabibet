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
    <!--
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    -->
    <title>Confirmation du pari</title>
    <jsp:useBean id="util" type="modele.Utilisateur" scope="session"></jsp:useBean>
    <jsp:useBean id="match" type="modele.Match" scope="session"></jsp:useBean>
    <jsp:useBean id="erreur" class="java.lang.String" scope="request"></jsp:useBean>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
<h1>Pari sur le match ${match.idMatch}</h1>
<p>Vous voulez parier sur le match : ${match.equipe1} vs ${match.equipe2} le ${match.quand}</p>
<form action="/pel/parier">
    <label for="pari-select">Choisissez un résultat</label>
    <select name="pari" id="pari-select">
        <option value="nul">nul</option>
        <option value="${match.equipe1}">${match.equipe1} gagnant</option>
        <option value="${match.equipe2}">${match.equipe2} gagnant</option>
    </select>
    <label for="mise">Montant</label>
    <input name="mise" id="mise" type="number">
    <a href="/pel/parier"><input type="submit" value="Parier"></a>
    <c:if test = "${erreur.length() > 0}">
        <p style="color:red;">
            <c:out value = "${erreur}"></c:out>
        </p>
    </c:if>
</form>
</body>
</html>
