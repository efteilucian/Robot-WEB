<%-- 
    Document   : enter
    Created on : 31 mar 2023, 12:22:43
    Author     : Leo
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <a href="login.jsp" class="btn">Indietro</a>
        <link rel="stylesheet" type="text/css" href="login.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RobotWeb</title>
    </head>
    <body>

        <%
            
            String username = request.getParameter("user");
            String password = request.getParameter("password");

            String userDb, passwordDB;
            boolean utentePresente = false;
            boolean esperto = false;

            Connection con;
            Statement stat;
            ResultSet result;

            Class.forName("com.mysql.jdbc.Driver");

            String userdb = "root";
            String passwordb = "";
            String dburl = "jdbc:mysql://localhost:3306/login";

            con = DriverManager.getConnection(dburl, userdb, passwordb);
            stat = con.createStatement();
            String query = "SELECT * FROM ricercatori;";
            result = stat.executeQuery(query);
            while (result.next()) {
                userDb = result.getString("user");
                passwordDB = result.getString("password");

                if (username.equals(userDb) && password.equals(passwordDB)) {
                    utentePresente = true;

                    int esperienza = result.getInt("esperienza");
                    if (esperienza > 2) {
                        esperto = true;
                    }
                }

            }if (utentePresente == false) {
            
            %>
            <center><h1><b>Credenziali non valide</b></h1></center>
            <%
            }
            result.close();
            stat.close();
            con.close();

            if (utentePresente) {

                session.setAttribute("esperto", esperto);
                session.setAttribute("presente", utentePresente);
                session.setAttribute("user", request.getParameter("user"));
                response.sendRedirect("missioni.jsp");
            } 


        %>
    </body>
</html>
