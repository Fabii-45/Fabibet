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
    <title>Confirmation du pari</title>
    <jsp:useBean id="util" type="modele.Utilisateur" scope="session"></jsp:useBean>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
<h3>Pari sur un match</h3>
<h3>Nom util</h3>
<p>vous voulez parier sur le match : ####### vs ####### le ####################</p>
<label for="pari-select">Choose a pet:</label>

<select name="pari" id="pari-select">
    <option value="nul">nul</option>
    <option value="equipe1">equipe1</option>
    <option value="equipe2">equipe2</option>
</select>
<label for="field:mise">Montant</label><input name="mise" id="field:mise" type="number">
<input type="submit">
</body>
</html>
