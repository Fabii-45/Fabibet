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
        <h3>Annulation du pari de l'utilisateur ${util.login}</h3>
        <p> La mise de ${pari.montant} euros sur le résultat ${pari.vainqueur} pour le match : ${pari.match.equipe1} vs ${pari.match.equipe2} le ${pari.match.quand} a bien été annulée !</p>
        <a href="/pel/menu">Retour au menu</a>
    </body>
</html>
