<%-- 
    Document   : login
    Created on : 31 mar 2023, 12:18:30
    Author     : Leo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="login.css">
        <title>RobotWeb</title>
    </head>
    <body bgcolor="grey">
    <center>
        <h1>Classe 5^B inf</h1>
        <h3>Login</h3>
        <form action="enter.jsp" method="post">
            <p><label>username: <input type="text" name="user" id="user" required></label></p>
            <p><label>password: <input type="password" name="password" id="password" required></label></p>
            <p> <input type="submit" value="invia"></p>
        </form>
        <form action="registrati.jsp" methos="post">
            <p> <input type="submit" value="registrati"></p>
        </form>
         <form action="tabellaAnonima.jsp" method="post">
                         <p><input type="submit" value="TabellaPreview" </p>
                    </form>
       
    </center>
</body>
</html>
