<%--
  Created by IntelliJ IDEA.
  User: tplocal
  Date: 27/01/2022
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Nouveau Match </title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
    <h1>Entrez le nouveau match</h1>

    <form action="/admin/confirmermatch">>
        <div class="form-group">
            <label for="sport">Sport :</label>
            <input type="text" class="form-control" id="sport"  placeholder="Entrez le sport ici"/>
        </div>
        <div class="form-group">
            <label for="equipe1">Equipe 1 : </label>
            <input type="text" class="form-control" id="equipe1"  placeholder="Entrez l\'équipe 1 ici"/>
        </div>
        <div class="form-group">
            <label for="equipe2">Equipe 2 : </label>
            <input type="text" class="form-control" id="equipe2" placeholder="Entrez l\'équipe 2 ici"/>
        </div>

        <label for="start">Start date:</label>
        <input type="date" id="start" name="trip-start" value="2018-07-22"
               min="2022-01-01" max="2022-12-31">
        <a href="/admin/confirmermatch"><input type="submit" value="Nouveau Match"></a>
    </form>
</body>
</html>
