<%-- 
    Document   : csp_mail
    Created on : May 20, 2016, 5:33:38 PM
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
        int id=Integer.parseInt(request.getQueryString());
        System.out.println("id get successfully"+id);
            Connection conn = DriverManager.getConnection(url, user, password);
           
            
            String sql = "Select *  from reg where id = '" + id + "' ";
            PreparedStatement statement = conn.prepareStatement(sql);
            ResultSet result = statement.executeQuery();
            if(result.next()) {
             String name =result.getString("UserName");
             session.setAttribute( "ssName", name );  
            String email =result.getString("Email");
            session.setAttribute( "ssEmail", email );
           
           response.sendRedirect("csp_update_m.jsp");
     }else{
           response.sendRedirect("a_s_details.jsp");
     }
     }
%>

