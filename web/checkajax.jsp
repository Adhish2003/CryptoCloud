<%-- 
    Document   : checkajax
    Created on : 18 Feb, 2023, 12:18:44 PM
    Author     : Murthi
--%>


<%@page import="network.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<%
String email = request.getParameter("email").toString();
System.out.println(email);


String data ="";
try{
Connection con=DbConnection.getConnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from reg where Email='"+email+"'");
int count=0;
while(rs.next())
{

count++;
}

if(count>0)
{
data="Email-ID already exists!";
}
else
{
data="You can register now!!!!";
}
out.println(data);
System.out.println(data);
}
catch (Exception e) {
System.out.println(e);
}
%>
