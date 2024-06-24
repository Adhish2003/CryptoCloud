<%-- 
    Document   : a_req_up
    Created on : May 20, 2016, 1:22:58 PM
    Author     : java4
--%>

<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="network.DbConnection"%>
<%
       String url = "jdbc:mysql://localhost:3306/data_security";
        String user = "root";
        String password = "root";
        int id=Integer.parseInt(request.getQueryString());
        System.out.println("id get successfully"+id);
            Connection con = DriverManager.getConnection(url, user, password);
          Statement st =con.createStatement();  

    int i = st.executeUpdate("update reg set request = 'Decrypted' where id = '" + id + "'");
    
    if (i != 0) {
        response.sendRedirect("csp_req.jsp?msg=Password_Decrypted_Successfully");
    } else {
        response.sendRedirect("csp_req.jsp?msg=Error");
    }
%>