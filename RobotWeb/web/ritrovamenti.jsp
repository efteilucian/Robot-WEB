<%-- 
    Document   : ritrovamenti
    Created on : 10 mag 2023, 15:15:48
    Author     : Leo
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <a href="missioni.jsp" class="btn">Indietro</a> 
        
        <link rel="stylesheet" type="text/css" href="login.css">
        
        <title>JSP Page</title>
        
    </head>
    <body bgcolor="grey"><div class="bordi">
            <center>
                
                <h1><b>RITROVAMENTI</b></h1>
            </center>
        <h2>
            <%
                String missione = request.getParameter("missione");
                int marte = 1;
                int luna = 2;
                int pianetaVerde = 3;

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

                String query = "SELECT materiali.colore, materiali.descrizione, ritrovamenti.data "
                        + "FROM ritrovamenti, materiali "
                        + "WHERE ritrovamenti.missione = " + missione + " "
                        + "AND materiali.id = ritrovamenti.materiale";
                result = stat.executeQuery(query);

                while (result.next()) {

                    String c = result.getString("colore");
                    String d = result.getString("descrizione");
                    String data = result.getString("data");
            %>
            <center>
            <table class="table table-bordered bordi" >
                <tr><th>colore</th><th>materiale</th><th>data</th></tr>
                <tr><td><%out.println(c);%></td><td><%out.println(d);%></td><td><%out.println(data);%></td></tr><%
                }%>



            </table>
</center>




        </h2></div>
    </body>
</html>
