<%--
  Created by IntelliJ IDEA.
  User: o2194514
  Date: 11/01/2022
  Time: 10:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Confirmer annulation du pari</title>
    <jsp:useBean id="util" type="modele.Utilisateur" scope="session"></jsp:useBean>
    <jsp:useBean id="pari" type="modele.Pari" scope="session"></jsp:useBean>
</head>
    <body>
        <h3>Nom util</h3>
        <p> La mise de #### euros sur le résultat #### pour le match : ####### vs ####### le ######################## a bien été annulée !</p>
        <a href="#">Retour au menu</a>
    </body>
</html>
