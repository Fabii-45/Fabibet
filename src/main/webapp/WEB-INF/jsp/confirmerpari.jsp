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
    <title>Confirmation du pari</title>
    <jsp:useBean id="util" type="modele.Utilisateur" scope="session"></jsp:useBean>
    <jsp:useBean id="mise" type="java.lang.Float" scope="request"></jsp:useBean>
    <jsp:useBean id="pari" type="java.lang.String" scope="request"></jsp:useBean>
    <jsp:useBean id="match" type="modele.Match" scope="session"></jsp:useBean>
</head>
    <body>
        <h3>Salut ${util.login} </h3>
        <p>
            Votre mise de ${mise}€ pour le match : ${match.equipe1} vs ${match.equipe2} le ${match.quand} a bien été confirmé !<br/>
            Vous avez parié sur ${pari}.
        </p>
        <a href="/pel/menu">Retour au menu</a>
    </body>
</html>
