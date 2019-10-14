<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
    try{
        String username = request.getParameter("username");
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://172.17.0.2:3306/inframind_users","root", "123");
        Statement stmt = con.createStatement();
        String query = "delete from users where username='"+username+"'";
        int i = stmt.executeUpdate(query);
        response.sendRedirect("index.jsp");
    }
    catch(Exception e){
        out.println("<b>Error occurred:</b> "+e.getMessage());
    }
%>