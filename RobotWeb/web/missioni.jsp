<%-- 
    Document   : missioni
    Created on : 31 mar 2023, 12:39:43
    Author     : Leo
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <a href="login.jsp" class="btn">Logout</a> 
        <link rel="stylesheet" type="text/css" href="login.css">
       
        <title>missioni</title>
        
    </head>
    <body>
    <center>
        <%
            boolean presente = (boolean) session.getAttribute("presente");
            boolean esperto = (boolean) session.getAttribute("esperto");
            
            if (presente) {%>
        <h1 ><%out.println("ciao " + session.getAttribute("user"));%></h1><%
            if (esperto == true){
        %><h2><%out.println("Utente Esperto");}%></h2>
        <h2> Ecco le tue missioni </h2><%

            Connection con;
            Statement stat;
            ResultSet result;

            String userdb = "root";
            String passwordb = "";
            String dburl = "jdbc:mysql://localhost:3306/login";

            con = DriverManager.getConnection(dburl, userdb, passwordb);

            stat = con.createStatement();
            String query = "SELECT * FROM missioni";
            result = stat.executeQuery(query);


        %>
        <div class="bordi">
            <table class="table table-bordered">
                <tr> 
                    <th>nome</th>
                    <th>data di inizio</th>
                    <th>data di fine</th>
                        <% if (esperto == true) {%>
                    <th>gruppo</th>
                        <%}%>
                </tr>

                <%

                    while (result.next()) {

                        String n = result.getString("nome");
                        int id = result.getInt("id");
                        Date dataini = result.getDate("dataInizio");
                        Date datafine = result.getDate("dataFine");
                        int gruppo = result.getInt("gruppo");

                %>


                <tr>
                    <td>
                        <%out.println("<a href=/RobotWeb/ritrovamenti.jsp?missione=" + id + ">" + n + "</a>");%>
                    </td>
                    <td><% out.println(dataini);%></td>
                    <td><% out.println(datafine);%></td>
                    <% if (esperto == true) {%>
                    <td><% out.println("<a href=/RobotWeb/gruppi.jsp?gruppo=" + gruppo + ">" + gruppo + "</a>");%></td>
                    <%}%>
                </tr>
                <%}%>
            </table>
            <%}%>

        </div></center>
</body>
</html>
