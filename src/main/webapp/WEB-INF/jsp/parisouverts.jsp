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
    <title>Liste des paris ouverts</title>
</head>
    <body>
        <h3>Nom util</h3>
        <ul>
            <% for (int i=0; i < 3;i++) { %>
            <li>
                sport : #### - ###### vs ##### - <a href="#">parier</a>
            </li>
            <% } %>
        </ul>
        <a href="/pel/menu">Retour au menu</a>
    </body>
</html>
