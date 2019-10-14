<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
    try{
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://172.17.0.2:3306/inframind_users","root", "123");
        Statement stmt = con.createStatement();
        String query = "select count(username) from users where username='"+username+"' and password='"+password+"'";
        ResultSet rs = stmt.executeQuery(query);
        if (rs.next()) {
            session.setAttribute("user",username);
            response.sendRedirect("welcome.jsp");
        }
        else {
            response.sendRedirect("login.jsp");
        }
    }
    catch(Exception e){
        out.println("<b>Error occurred:</b> "+e.getMessage());
    }
%>