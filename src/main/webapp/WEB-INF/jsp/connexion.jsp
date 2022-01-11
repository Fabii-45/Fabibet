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
</head>
<body>
<h3>Nom util</h3>
<form method="post" action="/pel/connexion">
    <label for="field:pseudo"> Saisir votre pseudo</label> <input name="pseudo" id="field:pseudo" type="text">
    <label for="field:password"> Saisir votre mot de passe</label><input name="password" id="field:password" type="password">
    <input type="submit">
</form>
</body>
</html>
