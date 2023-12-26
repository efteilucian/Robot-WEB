<%-- 
    Document   : registrazione
    Created on : 10 mag 2023, 15:47:31
    Author     : Leo
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="login.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String username = request.getParameter("user");
            String password = request.getParameter("password");
            String nome = request.getParameter("nome");
            String cognome = request.getParameter("cognome");

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
            String query = "INSERT INTO `ricercatori` (`matricola`, `supervisore`, `nome`, `cognome`, `esperienza`, `gruppo`, `user`, `password`)  VALUES (NULL, '"+000001+"', '"+nome+"', '"+cognome+"', '"+1+"', '"+1+"', '"+username+"', '"+password+"');";
            stat.executeUpdate(query);
            

            
            stat.close();
            con.close();
            
            response.sendRedirect("login.jsp");
        %>
</body>
</html>
