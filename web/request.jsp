<%-- 
    Document   : request
    Created on : May 21, 2016, 5:41:35 PM
    Author     : java4
--%>

<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>

<%@ page import="network.DbConnection"%>






<%

    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
    try {
        String id = request.getParameter("id");

        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/data_security", "root", "root");

        stmt = conn.createStatement();

        rs = stmt.executeQuery("select * from uploads where fileid = '" + id + "'");

        if (rs.next()) {

            String fname = rs.getString("filename");
            String secr = rs.getString("secretkey");
            String Algo = rs.getString("algo");
            String Cname = (String) session.getAttribute("ssname");
            String Cmail = (String) session.getAttribute("ssemail");
            String State = (String) session.getAttribute("ssstate");
            String Country = (String) session.getAttribute("sscountry");
//                      String  FileName=(String)session.getAttribute("SSfilename");
//                      String  secret=(String)session.getAttribute("SSsecretkey");

            String Status = "No";
            System.out.println("Request is activated" + Cname + State + State + Country + Status);

            Connection con = DbConnection.getConnection();
            Statement st = con.createStatement();

            String sql = "insert into request(name, mail, state, country, fname, secretkey, status, algo) values ('" + Cname + "','" + Cmail + "','" + State + "','" + Country + "','" + fname + "','" + secr + "','" + Status + "','" + Algo + "')";

            int x = st.executeUpdate(sql);
            if (x != 0) {
                response.sendRedirect("client_de.jsp?msg=Request_send_Successfully");

            } else {
                response.sendRedirect("client_de.jsp?message=fail");

            }
            con.close();
            st.close();
        } else {

            out.println("Error");

        }
    } catch (Exception e) {
        out.println(e);

    }
%>