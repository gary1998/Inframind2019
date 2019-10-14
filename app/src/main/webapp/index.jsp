<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TCS Inframind 2019</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="jumbotron jumbotron-fluid">
            <div class="container">
                <h1 class="display-4">Inframind 2019</h1>
                <p class="lead">Simple Java (Maven) web application with DB connection.</p>
            </div>
        </div>

        <div class="container">
            <ul class="list-group">
            <li class="list-group-item active">Registered Users</li>
                <%
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://172.17.0.2:3306/inframind_users","root", "123");
                    String query = "select * from users;";
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery(query);
                    while (rs.next()){
                        String user = rs.getString("username");
                        out.println("<li class='list-group-item'>"+user+"<a href='delUser.jsp?username="+user+"' class='close' aria-label='Close'><span aria-hidden='true'>&times;</span></a></li>");
                    }
                %>
            </ul>
        </div>
        <br>
        <br>
        <div class="container center">
            <div class="btn-group btn-group-lg" role="group" aria-label="...">
                <a href="login.jsp" class="btn btn-primary">Login</a>
                <a href="register.jsp" class="btn btn-primary">Register</a>
            </div>
        </div>
    </body>
</html>
