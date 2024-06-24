<%-- 
    Document   : file_up
    Created on : May 25, 2016, 12:07:57 PM
    Author     : java4
--%>

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
        <script>alert('File Upload Successfully On Drive HQ');</script>
        <%
            }
            if (request.getParameter("msgg") != null) {%>
            <script>alert('Upload Successfully');</script>
        <%}
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
                    <ul class="nav navbar-nav" style="width: auto">
                        <li>
                            <a href="c_home.jsp" style="font-size: 20px">Home</a>
                        </li>
                        <li>
                            <a href="c_profile.jsp" style="font-size: 20px">Profile</a>
                        </li>
                        <li>
                            <a href="file_up.jsp" style="font-size: 20px">File Upload</a>
                        </li>
                        <li>
                            <a href="client_de.jsp" style="font-size: 20px">File Details</a>
                        </li>
                        <li>
                            <a href="ReqFile.jsp" style="font-size: 20px">Requested Files</a>
                        </li>
                         <li>
                            <a href="file_de.jsp" style="font-size: 20px">Download</a>
                        </li>
                        <li>
                            <a href="index.jsp" style="font-size: 20px">Logout</a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>
        <div class="container">
            <div class="row">
                <div class="box" style="height: 400px;">
                    <center><h2>Select Algorithm Here...!</h2></center><br />
                    <center><h2><a href="file_upload.jsp" style="color: #0077b5; font: 24px">TDES</a></h2></center>
                    <center><h2><a href="file_upload1.jsp" style="color: #0077b5; font: 24px">Ceaser Cipher</a></h2></center>
                    <center><h2><a href="file_upload2.jsp" style="color: #0077b5; font: 24px">RSA</a></h2></center>
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

