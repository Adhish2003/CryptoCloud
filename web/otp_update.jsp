<%-- 
    Document   : otp_update
    Created on : May 19, 2016, 5:33:38 PM
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
                String  email=(String)session.getAttribute("ssemail");  
String  msg=(String)session.getAttribute("Key");
    System.out.println("message"+msg);
    
     System.out.println("Email id"+email);
    int i = st.executeUpdate("update reg set otp = '"+msg+"' where Email = '" + email + "'");
    if (i != 0) {
        response.sendRedirect("otpass.jsp?msg=sent_otp_to_your_mail");
    } else {
        response.sendRedirect("User_request.jsp?msg=Error");
    }
%>