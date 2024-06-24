<%-- 
    Document   : csp_file_en
    Created on : May 21, 2016, 7:32:12 PM
    Author     : java4
--%>

<%@page import="java.sql.Blob"%>
<%@page import="Algorithms.RSA"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.UUID"%>
<%@page import="network.DbConnection"%>
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
        <title>Military Networks</title>
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
        <script>alert('Login Succesfully');</script>
        <%
            }
        %>
       <div class="brand">DATA SECURITY MODEL FOR CLOUD
COMPUTING<br>USING V -GRT
METHODOLOGY</div>
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
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
<!--                    <ul class="nav navbar-nav">
                        <li>
                            <a href="ahome.jsp">HOME</a>
                        </li>
                        <li>
                            <a href="a_c_details.jsp">PROFILE</a>
                        </li>
                        <li>
                            <a href="a_s_details.jsp">Soldier Details</a>
                        </li>
                        <li>
                            <a href="index.jsp">Logout</a>
                        </li>
                    </ul>-->
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>

        <div class="container">
            <div class="row">
                <div class="box" style="height: 400px;">
                    <!--To do you work-->
                    <div style="border: 1px solid white;height: 350px;border-top-width: 20px;border-bottom-width: 10px">
                    <div class="box" style="height: 400px;">
                    <!--To do you work-->
                   <center><h2>View File</h2>    	
 <%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data_security",
            "root", "root");
   Statement st = con.createStatement();
   Blob blob=null;
   ResultSet rs = st.executeQuery("select * from uploads where fileid = '" + request.getQueryString() + "' ");
   while (rs.next()) {
                                       
   blob = rs.getBlob("filedata");
// System.out.print("session is"+request.getQueryString());
// session.setAttribute("sessionid", request.getQueryString());
   }
   byte a[] = blob.getBytes(1, (int) blob.length());
   String str = new String(a, "UTF-8");
    int IDS=1;
   
   
   System.out.println("jdjdd"+str);
          %>
<!--          <textarea rows="10" cols="60" name="file" ></textarea><br>-->
          <textarea rows="10" cols="100" name="file" ><%=str%></textarea><br>
   <a href="csp_file.jsp">Back</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<!--   <a href="file_download.jsp">Download</a>-->
   <!--<h2><a href="down.jsp">Download</a></h2>-->
    	</center> 
        </div>
                        
<!--                        <center><h3>Welcome Admin</h3></center><br />
                        <img src="img/peer4.jpg" width="800" height="250" style="margin-left: 200px;"/>-->
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

