<%-- 
    Document   : a_mail
    Created on : May 21, 2016, 6:25:24 PM
    Author     : java4
--%>

<%@page import="java.security.SecureRandom"%>

<%@page import="java.util.Random"%>
<%@ page import ="java.sql.*" %>
<%
    {
        String url = "jdbc:mysql://localhost:3306/data_security";
        String user = "root";
        String password = "root";
        int id = Integer.parseInt(request.getQueryString());
        session.setAttribute("theSid", id);
        System.out.println("id session id set successfully" + id);
        Connection conn = DriverManager.getConnection(url, user, password);
        String sql = "Select *  from request where id = '" + id + "' ";
        PreparedStatement statement = conn.prepareStatement(sql);
        ResultSet result = statement.executeQuery();
        if (result.next()) {
            String name = result.getString("name");
            String key = result.getString("secretkey");
            String Algo = result.getString("algo");
            String email = result.getString("mail");
            session.setAttribute("ssEmail", email);
            String msg = "Secret Key : " + key + "\n\nAlgorithm :" + Algo;
            session.setAttribute("ackey", key);
            response.sendRedirect("update.jsp");
        } else {
            response.sendRedirect("file_re_show.jsp");
        }
    }
%>