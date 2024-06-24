<%-- 
    Document   : ceaser
    Created on : May 21, 2016, 2:02:44 PM
    Author     : java4
--%>
<%@page import="Algorithms.CaesarCipher"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="network.DbConnection"%>
<%
    String j = request.getQueryString();
                Connection con = DbConnection.getConnection();
                Statement st =con.createStatement();
//int id=Integer.parseInt(request.getQueryString());
                
int IDS=1;
  String  Client=(String)session.getAttribute("ssname");
  Object Session_Time = session.getAttribute("Session_Time");
   Object DES_secret_key = session.getAttribute("Session_DES");
   System.out.println("Session_DES Two Variable get"+DES_secret_key+Session_Time+Client);
 String CaesarCipher = new CaesarCipher().encrypt(DES_secret_key.toString(), IDS);
 System.out.println("CEASER"+CaesarCipher);
    int i = st.executeUpdate("update uploads set secretkey = '" + CaesarCipher + "', cname = '" + Client + "' where date = '" + Session_Time + "'");
    if (i != 0) {
        response.sendRedirect("file_upload.jsp?msg=File_upload_to_cloud_Successfully");
    } else {
        response.sendRedirect("file_upload.jsp?msgg=Error");
    }
%>
