<%-- 
    Document   : file_a_re
    Created on : May 20, 2016, 5:33:38 PM
    Author     : java4
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="network.DbConnection"%>
<%
    String j = request.getQueryString();
                Connection con = DbConnection.getConnection();
                Statement st =con.createStatement();

    String  email=(String)session.getAttribute("ssEmail");
   
     System.out.println("Email id"+email);
    int i = st.executeUpdate("update reg set  request='Decrypted_Success' where Email = '" + email + "'");
    if (i != 0) {
        response.sendRedirect("authorized.jsp?msg=PassWord_sent_to_user");
    } else {
        response.sendRedirect("authorized.jsp?msg=Error");
    }
%>