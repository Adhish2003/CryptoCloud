<%-- 
    Document   : otp
    Created on : May 19, 2016, 12:39:01 PM
    Author     : java4
--%>


<%@page import="java.security.SecureRandom"%>

<%@page import="java.util.Random"%>
<%@ page import ="java.sql.*" %>
<%
    {

        Random RANDOM = new SecureRandom();
        int PASSWORD_LENGTH = 10;
        String letters = "ABCDEFGHJKMNPQRSTUVWXYZ123456789";
        String key = "";

        for (int i = 0; i < PASSWORD_LENGTH; i++) {
            int index = (int) (RANDOM.nextDouble() * letters.length());
            key += letters.substring(index, index + 1);
        }
        String name = (String) session.getAttribute("ssname");
        String email = (String) session.getAttribute("ssemail");
//             String name =result.getString("name");
//            String email =result.getString("Email");
        session.setAttribute("Email", email);
        String msg = "Key : " + key;
        session.setAttribute("Key", key);
        System.out.println("uour randome string" + msg + name + email);
        response.sendRedirect("otp_update.jsp");
    }
%>
