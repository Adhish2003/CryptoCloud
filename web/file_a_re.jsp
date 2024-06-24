<%-- 
    Document   : file_a_re
    Created on : May 21, 2016, 5:33:38 PM
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
int id=Integer.parseInt(request.getQueryString());

    int i = st.executeUpdate("update reg set request = 'Yes' where id = '" + id + "'");
    if (i != 0) {
        response.sendRedirect("csp_c_details.jsp?msg=Request_Sent_Successfully");
    } else {
        response.sendRedirect("csp_c_details.jsp?msgg=Error");
    }
%>
