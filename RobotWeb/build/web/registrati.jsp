<%-- 
    Document   : registrati
    Created on : 10 mag 2023, 14:35:46
    Author     : Leo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <a href="login.jsp" class="btn">Home</a> 
        <link rel="stylesheet" type="text/css" href="login.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1>Registrati!</h1>
        
        <h3>Inserisci i tuoi dati</h3>
        <form action="registrazione.jsp" method="post">
            <p><label>nome <input type="text" name="nome" id="nome" required=""></label></p>
            <p><label>cognome <input type="text" name="cognome" id="cognome"required=""></label></p>
            <p><label>user <input type="text" name="user" id="user" required="" ></label></p>
            <p><label>password <input type="password" name="password" id="password" required="" ></label></p>
            <p> <input type="submit" value="invia"></p>
        </form>
    </center>
    
    
    </body>
</html>
