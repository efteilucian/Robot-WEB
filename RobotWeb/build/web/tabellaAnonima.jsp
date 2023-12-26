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
        
        <a href="login.jsp" class="btn">Indietro</a> 
        <link rel="stylesheet" type="text/css" href="login.css">
       
        <title>missioni</title>
        
    </head>
    <body>
    <center>
       
        <%

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
                    
                        <% {%>
                    
                        
                </tr>
<tr>
        <th style="text-align: left;">nome</th>
        <th style="text-align: left;">data di inizio</th>
        <th style="text-align: left;">data di fine</th>
    </tr>
    
                <%

                    while (result.next()) {

                        String n = result.getString("nome");
                        int id = result.getInt("id");
                        Date dataini = result.getDate("dataInizio");
                        Date datafine = result.getDate("dataFine");
                       

                %>

<tr>
        <td style="text-align: left;"><%= n %></td>
        <td style="text-align: left;"><%= dataini %></td>
        <td style="text-align: left;"><%= datafine %></td>
    </tr>

                <tr>
                    <td>
                        
                    </td>
                   
                </tr>
                <%}%>
            </table>
            <%}%>

        </div></center>
</body>
</html>
