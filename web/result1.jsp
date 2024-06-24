<%-- 
    Document   : result1
    Created on : May 26, 2016, 1:03:06 PM
    Author     : java4
--%>

<%@page import="network.DbConnection"%>
<%@page import="pack.download"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>DATA SECURITY MODEL FOR CLOUD</title>
        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="css/business-casual.css" rel="stylesheet">
        <!-- Fonts -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">
    </head>

    <body>
        <%
            if (request.getParameter("msg") != null) {
        %>
        <script>alert('Secret Key Verify Successfully');</script>
        <%
            }
        %>
        <div class="brand">DATA SECURITY MODEL FOR CLOUD COMPUTING<br>USING V -GRT METHODOLOGY</div>
        <!-- Navigation -->
        <nav class="navbar navbar-default" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
                    <a class="navbar-brand" href="index.html">Business Casual</a>
                </div>
                 <!--Collect the nav links, forms, and other content for toggling--> 
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
<!--                        <li>
                            <a href="#">Home</a>
                        </li>
                        <li>
                            <a href="#">Commander Details</a>
                        </li>
                        <li>
                            <a href="#">Soldier Details</a>
                        </li>-->
                        <li>
                            <a href="file_access2.jsp">Back</a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>

        <%
                        String search = session.getAttribute("ssidsecretkey").toString();
//                        String search = request.getParameter("search");
                        System.out.println("get the search"+search);
                        session.setAttribute("search", search);
                    %>

        <div class="container">
            <div class="row">
                <div class="box" style="height: 400px;">
                    <!--To do you work-->
                    <div style="border: 1px solid white;height: 350px;border-top-width: 20px;border-bottom-width: 10px">
                        <center><h3>User Details</h3></center><br />
                        <table border="1" style="text-align: center;margin-left: 170px">
                            <tr>
                                <th style="text-align: center;width: 70px;">File ID</th>
                                <th style="text-align: center;width: 150px;">Client Name</th>
                                <th style="text-align: center;width: 100px;">File Name</th>
                                <th style="text-align: center;width: 300px;">Data</th>
                                <th style="text-align: center; width: 100px;">View</th>
                                <th style="text-align: center; width: 100px;">Download</th>
                            </tr>
                            <tr>
                               <%int fid=0;
                                Connection con = null;
                                Statement st = null;
                                ResultSet rs = null;
                                try {
                                    con = DbConnection.getConnection();
                                    st = con.createStatement();
                                    rs = st.executeQuery("select * from uploads where secretkey ='" + search + "'");
                                    while (rs.next()) {
                              %>
    
                               
                                <td><%=rs.getString("fileid")%></td>
                                <td><%=rs.getString("cname")%></td>     
                                <td><%=rs.getString("filename")%></td>     
                                <td><%=rs.getString("date")%></td>     
                                <td> <a href="view_file1.jsp?<%=rs.getString("fileid")%>"><font style="color: green">view</a></font> </td>  
                                <td> <a href="download1?<%=rs.getString("fileid")%>"><font style="color: green">Download</a></font> </td>   
                                        <tr />
                                        
                                    
                                        <% } 
                                    } catch (Exception ex) {
                                        ex.printStackTrace();
                                    }

                                %>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.container -->

        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <p>Copyright &copy; 2023
                        </p>
                    </div>
                </div>
            </div>
        </footer>
    </body>
</html>

