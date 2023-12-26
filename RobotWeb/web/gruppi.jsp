<%-- 
    Document   : gruppi
    Created on : 17 mag 2023, 13:39:11
    Author     : Leo
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" type="text/css" href="login.css">
        <title>gruppi</title>
        <a href="missioni.jsp" class="btn">Indietro</a> 
    </head>
    <body><div class="bordi">
            <center>
                <%String gruppo = request.getParameter("gruppo");
                int gruppoint = Integer.parseInt(gruppo);
                %>
                
                <h1><b>GRUPPO <% out.print(gruppo);  %></b></h1>
            <%

                String userDb, passwordDB;

                Connection con;
                Statement stat;
                ResultSet result;

                Class.forName("com.mysql.jdbc.Driver");

                String userdb = "root";
                String passwordb = "";
                String dburl = "jdbc:mysql://localhost:3306/login";

                con = DriverManager.getConnection(dburl, userdb, passwordb);
                stat = con.createStatement();

                String query = "SELECT * FROM `gruppi` WHERE codice = '" + gruppo + "'";
                result = stat.executeQuery(query);

                while (result.next()) {

                    String budget = result.getString("budget");
                    String nomegruppo = result.getString("nomegruppo");

            %>
                <table class="table table-bordered" >
                    <tr>
                        <th>Budget</th>
                        <th>NomeGruppo</th>
                    </tr>
                    <tr>
                        <td><%out.println(budget);%>€</td>
                        <td><%out.println(nomegruppo);%></td>
                    </tr>
                </table>
               
                <%}%>
                    <h1><b>PARTECIPANTI</b></h1> 
                    <%
                    String query1 = "SELECT ricercatori.nome, ricercatori.cognome FROM `gruppi`,`ricercatori`  WHERE codice = '"+gruppo+"'  AND gruppi.codice =ricercatori.gruppo";
                    result = stat.executeQuery(query1);
                     
                    while (result.next()) {

                    String nome = result.getString("nome");
                    String cognome = result.getString("cognome");
                    %>
                <table class="table table-bordered" >
                    <tr>
                        <th>Nome</th>
                        <th>Cognome</th>
                    </tr>
                    <tr>
                        <td><%out.println(nome);%></td>
                        <td><%out.println(cognome);%></td>
                    </tr>
                </table><%}%>
            </center>
</div></body>
</html>
