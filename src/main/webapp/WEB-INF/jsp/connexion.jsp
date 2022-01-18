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
    <title>Paris en ligne</title>
    <jsp:useBean id="erreur" class="java.lang.String" scope="request"></jsp:useBean>
</head>
    <body>
    <h1>Connexion</h1>
<c:if test = "${erreur.length() > 0}">
    <span style="color:red;">
    <c:out value = "${erreur}"></c:out></span></c:if>

        <form method="post" action="/pel/connexion">
            <label for="field:login"> Saisir votre pseudo</label> <input name="login" id="field:login" type="text"><br>
            <label for="field:password"> Saisir votre mot de passe</label><input name="password" id="field:password" type="password"><br>
            <input type="submit" value="Connexion">
        </form>
    </body>
</html>
